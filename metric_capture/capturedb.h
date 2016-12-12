#ifndef CAPTUREDB
#define CAPTUREDB

#include <map>
#include <vector>
#include <iostream>
#include <thread>

#include "json.hpp"
#include "FileSystem.h"
using json = nlohmann::json;

class CaptureMessage {
public:
    CaptureMessage(std::thread::id threadId,std::string translationUnit,std::string functionName,int capturedUnitId)
        : _threadId(threadId), _translationUnit(translationUnit), _functionName(functionName), _capturedUnitId(capturedUnitId) {}
    std::thread::id threadId() { return _threadId; }
    std::thread::id threadId() const { return _threadId; }
    std::string translationUnit() { return _translationUnit; }
    std::string translationUnit() const { return _translationUnit; }
    std::string functionName() { return _functionName; }
    std::string functionName() const { return _functionName; }
    int capturedUnitId() { return _capturedUnitId; }
    int capturedUnitId() const { return _capturedUnitId; }
    //long long& loopStart() { return _loopStart; }
    //long long loopStart() const { return _loopStart; }
    //long long& loopEnd() { return _loopEnd; }
    //long long loopEnd() const { return _loopEnd; }
    //long long& loopTripCount() { return _loopTripCount; }
    //long long loopTripCount() const { return _loopTripCount; }

    // By qualifying the function as friend and defining it in the header file, the compiler knows that
    // when ICapture.h is included, only one copy of this will be loaded rather than n copies corresponding to
    // n includes
    friend std::ostream& operator<<(std::ostream& out, const CaptureMessage& message) {
        out << "Thread ID = " << message.threadId() << "\n";
        out << "Translation Unit = " << message.translationUnit() << "\n";
        out << "Function Name= " << message.functionName() << "\n";
        out << "Capture Unit ID = " << message.capturedUnitId() << "\n";
        //out << "Loop Start = " << message.loopStart() << "\n";
        //out << "Loop End = " << message.loopEnd() << "\n";
        //out << "Loop Trip count = " << message.loopTripCount() << "\n";
        return out;
    }

private:
    std::thread::id _threadId;
    std::string _translationUnit;
    std::string _functionName;
    int _capturedUnitId;
    //long long _loopStart = -1;
    //long long _loopEnd = -1;
    //long long _loopTripCount = -1;
};

template<typename T>
class CaptureDB {
public:
    ~CaptureDB();
    int& coiId() { return cId; }
    int& runId() { return rId; }
    void insertStartMetric(CaptureMessage* msg, T value);
    void insertStopMetric(CaptureMessage* msg, T value);
    void insertVarCaptures(CaptureMessage* msg, std::vector<std::string> varNames, std::vector<std::string> varValues);
    void reduce();
    // updates index by adding a relationship from the current Vars to the parent Vars
    void updateIndex(CaptureMessage* currentScopeMsg, CaptureMessage* nextScopeMsg, std::vector<std::string> parentVars, std::vector<std::string> currentVars);
    std::vector<std::pair<std::string, std::string>> getVariableParents(std::thread::id, std::string, int, std::string variable, int variableIndex);
    std::map<std::thread::id, std::map<std::string, std::map<int, std::vector<T>>>>& getStartMetrics() { return unitInnerMetricStart; }
    std::map<std::thread::id, std::map<std::string, std::map<int, std::vector<T>>>>& getStopMetrics() { return unitInnerMetricStop; }
    std::map<std::thread::id, std::map<std::string, std::map<int, std::vector<T>>>>& getStatistics() { return minAvgMax; }
    std::map<std::thread::id, std::map<std::string, std::map<int, std::map<std::string, std::vector<std::string>>>>>& getVarCaptures() { return variableCaptures; }
    std::map<std::thread::id, std::map<std::string, std::map<int, std::map<std::string, std::vector<std::tuple<int, std::string, int, int>>>>>>& getDBIndex() { return variableDBIndex; }
private:
    void doGetVariableParents(std::vector<std::pair<std::string, std::string>>& parentVars, std::thread::id tId, std::string fName, int lId, std::string variable, int variableIndex);
    json serializeStatisticsNoKeys();
    json serializeStatisticsWithKeys();
    //void serializeCaptures();
    json serializeAllDatapointsWithKeys();
private:
    int cId;
    int rId;
    std::map<std::thread::id, std::map<std::string, std::map<int, std::vector<T>>>> unitInnerMetricStart;
    std::map<std::thread::id, std::map<std::string, std::map<int, std::vector<T>>>> unitInnerMetricStop;
    std::map<std::thread::id, std::map<std::string, std::map<int, std::vector<T>>>> minAvgMax;
    std::map<std::thread::id, std::map<std::string, std::map<int, std::map<std::string, std::vector<std::string>>>>> variableCaptures;
    std::map<std::thread::id, std::map<std::string, std::map<int, std::map<std::string, std::vector<std::tuple<int, std::string, int, int>>>>>> variableDBIndex;
};

int generateUniqueId() {
    std::srand(std::time(0)); // generates random number based on current time
    int uniqueId = rand();
    return uniqueId;
}

bool createJsonFile(const std::string& filename, json data) {
    std::string fname = filename;
    FileSystem::File f(fname);
    f.open(FileSystem::File::out, FileSystem::File::text);
    if(f.isGood())
        f.putLine(data.dump(), false);
    return true;
}

// Serializes the DB by flattening the maps. In this approach we do not add keys to designate threadId, funcName, scopelevel.
template<typename T>
json CaptureDB<T>::serializeStatisticsNoKeys() {
    json minAvgMaxJson;
    json capturesJson;
    std::hash<std::thread::id> idHasher;
    for(auto tIt = minAvgMax.begin(); tIt !=  minAvgMax.end(); tIt++) {
        auto& threadPair = (*tIt);
        for(auto fIt = threadPair.second.begin(); fIt != threadPair.second.end(); fIt++) {
            auto& funcPair = (*fIt);
            for(auto sIt = funcPair.second.begin(); sIt != funcPair.second.end(); sIt++) {
                auto& scopePair = (*sIt);
                std::cout << idHasher(threadPair.first) << std::endl;
                std::cout << funcPair.first << std::endl;
                std::cout << scopePair.first << std::endl;
                std::cout << scopePair.second.size() << std::endl;
                minAvgMaxJson[std::to_string(idHasher(threadPair.first))][funcPair.first][std::to_string(scopePair.first)] = json(scopePair.second);
                auto& capturesScopePair = variableCaptures[threadPair.first][funcPair.first][scopePair.first];
                capturesJson[std::to_string(idHasher(threadPair.first))][funcPair.first][std::to_string(scopePair.first)] = json(capturesScopePair);
            }
        }
    }
    minAvgMaxJson[std::to_string(rId)] = minAvgMaxJson;
    minAvgMaxJson["vars"] = capturesJson;
    //std::cout << capturesJson << std::endl;
    //std::cout << minAvgMaxJson << std::endl;
    //createJsonFile("./db_min_avg_max.json", minAvgMaxJson);
    return minAvgMaxJson;
}

template<typename T>
json CaptureDB<T>::serializeStatisticsWithKeys() {
    json minAvgMaxJson;
    json threadsJson = json::array();
    std::hash<std::thread::id> idHasher;
    for(auto tIt = minAvgMax.begin(); tIt !=  minAvgMax.end(); tIt++) {
        auto& threadPair = (*tIt);
        json threadJson;
        threadJson["thread"] = idHasher(threadPair.first);
        json funcsJson = json::array();
        for(auto fIt = threadPair.second.begin(); fIt != threadPair.second.end(); fIt++) {
            auto& funcPair = (*fIt);
            json funcJson;
            funcJson["func"] = funcPair.first;
            json scopesJson = json::array();
            for(auto sIt = funcPair.second.begin(); sIt != funcPair.second.end(); sIt++) {
                auto& scopePair = (*sIt);
                json scope;
                scope["scope"] = scopePair.first;
                //scope[scopePair.first] = json(scopePair.second);
                scope["metrics"] = json(scopePair.second);
                auto& capturesScopePair = variableCaptures[threadPair.first][funcPair.first][scopePair.first];
                scope["vars"] = json(capturesScopePair);
                scopesJson.push_back(scope);
            }
            funcJson["scopes"] = scopesJson;
            funcsJson.push_back(funcJson);
        }
        threadJson["funcs"] = funcsJson;
        threadsJson.push_back(threadJson);
    }
    minAvgMaxJson["threads"] = threadsJson;
    minAvgMaxJson["runId"] = rId;
    minAvgMaxJson["codeId"] = cId;
    //std::cout << capturesJson << std::endl;
    //std::cout << minAvgMaxJson << std::endl;
    //createJsonFile("./db_min_avg_max.json", minAvgMaxJson);
    return minAvgMaxJson;
}

template <typename T>
using Stops = std::map<std::thread::id, std::map<std::string, std::map<int, std::vector<T>>>>;
template <typename T>
using Captures = std::map<std::thread::id, std::map<std::string, std::map<int, std::map<std::string, std::vector<std::string>>>>>;
#include <bsoncxx/json.hpp>
#include <mongocxx/client.hpp>
#include <mongocxx/stdx.hpp>
#include <mongocxx/uri.hpp>
#include <bsoncxx/builder/stream/array.hpp>
#include <bsoncxx/builder/stream/helpers.hpp>
#include <bsoncxx/types.hpp>
#include <bsoncxx/stdx/optional.hpp>
// c and mongoc includes
#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <mongoc.h>

void writeToGridFS(const std::string& jsonURI) {
    mongoc_gridfs_t *gridfs;
    mongoc_gridfs_file_t *file;
    mongoc_gridfs_file_list_t *list;
    mongoc_gridfs_file_opt_t opt = { 0 };
    mongoc_client_t *client;
    mongoc_stream_t *stream;
    bson_t query;
    bson_t child;
    bson_error_t error;
    ssize_t r;
    char buf[4096];
    mongoc_iovec_t iov;
    const char * filename;
    const char * command;
    bson_value_t id;

    mongoc_init();

    iov.iov_base = (void *)buf;
    iov.iov_len = sizeof buf;

    /* connect to localhost client */
    client = mongoc_client_new ("mongodb://172.17.0.2:27017");
    assert(client);
    mongoc_client_set_error_api (client, 2);

    /* grab a gridfs handle in test prefixed by fs */
    gridfs = mongoc_client_get_gridfs (client, "sope", "fs", &error);
    assert(gridfs);

    {
	stream = mongoc_stream_file_new_for_path (jsonURI.c_str(), O_RDONLY, 0);
	assert (stream);

	opt.filename = jsonURI.c_str();

	/* the driver generates a file_id for you */
	file = mongoc_gridfs_create_file_from_stream (gridfs, stream, &opt);
	assert (file);

	/*
	id.value_type = BSON_TYPE_INT32;
	id.value.v_int32 = 1;

	// optional: the following method specifies a file_id of any BSON type
	if (!mongoc_gridfs_file_set_id (file, &id, &error)) {
	    fprintf (stderr, "%s\n", error.message);
	    return 1;
	}
	*/

	//mongoc_gridfs_file_save(file);
	mongoc_gridfs_file_destroy(file);
    }

    mongoc_gridfs_destroy (gridfs);
    mongoc_client_destroy (client);

    mongoc_cleanup ();
}

template<typename T>
void serializeAllDatapointsToMongo(Stops<T>& metricStops, Captures<T>& varCaptures, int coiId, int runId) {
    using namespace bsoncxx::builder::stream;
    using bsoncxx::builder::stream::array;
    using bsoncxx::builder::stream::open_document;
    using bsoncxx::builder::stream::open_array;
    using bsoncxx::builder::stream::close_document;
    using bsoncxx::builder::stream::close_array;
    mongocxx::uri dbUri{"mongodb://172.17.0.2:27017"};
    mongocxx::client client(dbUri);
    mongocxx::database db = client["sope"];
    mongocxx::collection collection = db["metrics"];
    std::vector<bsoncxx::document::value> docs;
    std::hash<std::thread::id> idHasher;
    for(auto tIt = metricStops.begin(); tIt !=  metricStops.end(); tIt++) {
	auto& threadPair = (*tIt);
	for(auto fIt = threadPair.second.begin(); fIt != threadPair.second.end(); fIt++) {
	    // In our mongodb schema, each document identifies a certain run. This run will have a threadid and
	    // a function name. There may be different runs for a certain function and thus we will create a document
	    // for each function and not for each thread. so our mongo collection could be like :
	    // (threadid = 1, function = abc, ...), (threadid = 1, function = edf). We have reducndant data in the
	    // thread id, but that's why use are using nosql databse.
	    auto builder = bsoncxx::builder::stream::document{}; // we create a new document for each function not just for each thread
	    //bsoncxx::document::value metricDocValue, varDocValue, scopeDocValue;
	    size_t threadIDHash = idHasher(threadPair.first);
	    builder << "thread" << threadIDHash;
	    builder << "codeId" << coiId;
	    builder << "runId" << runId;
	    auto& funcPair = (*fIt);

	    builder << "func" << funcPair.first;
	    auto scopesArr = array{};
	    for(auto sIt = funcPair.second.begin(); sIt != funcPair.second.end(); sIt++) {
		auto& scopePair = (*sIt);
		document scopeDoc{};
		scopeDoc << "scope" << scopePair.first;
		// Iterates over metrics and serializes them
		array metricsArr{};
		// The start stop and trip captures are used here to bundle them with the metrics. All other captures will
		// be stored in the json vars array.
		auto& loopStartCaps = varCaptures[threadPair.first][funcPair.first][scopePair.first]["_sope_loop_start_"];
		auto& loopStopCaps = varCaptures[threadPair.first][funcPair.first][scopePair.first]["_sope_loop_end_"];
		auto& loopTripCaps = varCaptures[threadPair.first][funcPair.first][scopePair.first]["_sope_loop_trip_count_"];
		auto lsIt = loopStartCaps.begin();
		auto lpIt = loopStopCaps.begin();
		auto ltIt = loopTripCaps.begin();
		for(auto mIt = scopePair.second.begin(); mIt != scopePair.second.end(); mIt++,lsIt++,lpIt++,ltIt++) {
		    auto metricSubDoc = document{}; // opens a document for each metric entry
		    metricSubDoc << "value" << (*mIt);
		    if(lsIt!=loopStartCaps.end() ) {
			metricSubDoc << "start" << (*lsIt);
			metricSubDoc << "stop" << (*lpIt);
			metricSubDoc << "count" << (*ltIt);
		    }
		    auto metricDocValue = metricSubDoc << finalize;
		    metricsArr << metricDocValue;
		}
		scopeDoc << "metrics" <<  metricsArr;

		// Iterates over the captured vars and serilaizes them
		array varsArr{};
		auto& varCaps = varCaptures[threadPair.first][funcPair.first][scopePair.first];
		for(auto vIt = varCaps.begin(); vIt != varCaps.end(); vIt++) {
		    std::string varName = (*vIt).first; // only serializes the variables that are not start, stop or trip count
		    if(varName != "_sope_loop_start_" && varName!="_sope_loop_end_" && varName !="_sope_loop_trip_count_") {
			auto varDoc = document{}; // opens an array for each metric entry
			array varValuesArr{}; // the array of values that a certain variable takes
			for(auto captureVarIt = (*vIt).second.begin() ; captureVarIt!=(*vIt).second.end(); captureVarIt++){
			    varValuesArr << *captureVarIt;
			}
			varDoc << (*vIt).first << varValuesArr; //opens an array to store all value for each variable
			auto varDocValue = varDoc << finalize;
			varsArr << varDocValue;
		    }
		}
		scopeDoc << "vars" << varsArr;
		auto scopeDocValue = scopeDoc << finalize;
		scopesArr << scopeDocValue;
	    }
	    bsoncxx::document::value doc = builder << "scopes" << scopesArr << finalize;
	    //std::cout << bsoncxx::to_json(doc) << std::endl;
	    docs.push_back(doc);
	}
    }
    std::cout << " Inserting " << docs.size() << " documents" << std::endl;
    //db.run_command();
    collection.insert_many(docs);
    //return datapointsJson;
}

using CapturesMap = std::map<std::string,std::vector<std::string>>;
//template<typename T>
bsoncxx::builder::stream::array chunkVarsArray(std::map<std::string,std::vector<std::string>>::iterator& varIt, std::vector<std::string>::iterator& valueIt, CapturesMap& varCaps, int limit) {
    using namespace bsoncxx::builder::stream;
    array varsArr{};
    int varsPerRecord = 0;
    while(varIt != varCaps.end()) {
	std::string varName = (*varIt).first; // only serializes the variables that are not start, stop or trip count
	if(varName != "_sope_loop_start_" && varName!="_sope_loop_end_" && varName !="_sope_loop_trip_count_") {
	    //while(valueIt!=(*varIt).second.end()) { // this keep looping over the array of values until we process all elements. We need it since the next or
		auto varDoc = document{}; // opens an array for each metric entry
		array varValuesArr{}; // the array of values that a certain variable takes
		auto& valuesVec = (*varIt).second;
		for( ; (varsPerRecord != limit && valueIt!=valuesVec.end()); valueIt++) {
		    varValuesArr << *valueIt;
		    varsPerRecord++;
		}
		varDoc << (*varIt).first << varValuesArr; //opens an array to store all value for each variable
		auto varDocValue = varDoc << finalize;
		varsArr << varDocValue;
		if(valueIt==valuesVec.end()) {// in the case the inner loop finishes awe need to return. In this case we need to increment the iterator of the outer loop before we return to keep things in order since we will not reach the varIt increment at the end of the while loop
		    varIt++;
		    if(varIt!=varCaps.end()) {
			valueIt = valuesVec.begin();
		    }
		    return varsArr;
		}
	    //}
	}
	varIt++;
	// this is needed when we are ignoring the _start, _stop, _trip variables. We need to set the valueIt to the next
	// variable's value array.
	if(varIt!=varCaps.end()) {
	    valueIt = (*varIt).second.begin();
	}
    }
    return varsArr;
}

template<typename T>
void serialize1kDatapointsToMongo(Stops<T>& metricStops, Captures<T>& varCaptures, int coiId, int runId) {
    int docsLimit = 2000;
    using namespace bsoncxx::builder::stream;
    using bsoncxx::builder::stream::array;
    using bsoncxx::builder::stream::open_document;
    using bsoncxx::builder::stream::open_array;
    using bsoncxx::builder::stream::close_document;
    using bsoncxx::builder::stream::close_array;
    mongocxx::uri dbUri{"mongodb://172.17.0.2:27017"};
    mongocxx::client client(dbUri);
    mongocxx::database db = client["sope"];
    mongocxx::collection collection = db["metrics"];
    std::vector<bsoncxx::document::value> docs;
    std::hash<std::thread::id> idHasher;
    for(auto tIt = metricStops.begin(); tIt !=  metricStops.end(); tIt++) {
	auto& threadPair = (*tIt);
	for(auto fIt = threadPair.second.begin(); fIt != threadPair.second.end(); fIt++) {
	    // In our mongodb schema, each document identifies a certain run. This run will have a threadid and
	    // a function name. There may be different runs for a certain function and thus we will create a document
	    // for each function and not for each thread. so our mongo collection could be like :
	    // (threadid = 1, function = abc, ...), (threadid = 1, function = edf). We have reducndant data in the
	    // thread id, but that's why use are using nosql databse.
	    auto builder = bsoncxx::builder::stream::document{}; // we create a new document for each function not just for each thread
	    //bsoncxx::document::value metricDocValue, varDocValue, scopeDocValue;
	    long int threadIDHash = idHasher(threadPair.first); // monogocxx compained that it cant append siz_t to its bson. so had to assign the hash to int
	    builder << "thread" << threadIDHash;
	    builder << "codeId" << coiId;
	    builder << "runId" << runId;
	    auto& funcPair = (*fIt);

	    builder << "func" << funcPair.first;
	    for(auto sIt = funcPair.second.begin(); sIt != funcPair.second.end(); sIt++) {
		auto& scopePair = (*sIt);
		document scopeDoc{};
		scopeDoc << "scope" << scopePair.first;
		// Iterates over metrics and serializes them
		//array metricsArr{};
		// The start stop and trip captures are used here to bundle them with the metrics. All other captures will
		// be stored in the json vars array.
		auto& loopStartCaps = varCaptures[threadPair.first][funcPair.first][scopePair.first]["_sope_loop_start_"];
		auto& loopStopCaps = varCaptures[threadPair.first][funcPair.first][scopePair.first]["_sope_loop_end_"];
		auto& loopTripCaps = varCaptures[threadPair.first][funcPair.first][scopePair.first]["_sope_loop_trip_count_"];
		auto lsIt = loopStartCaps.begin();
		auto lpIt = loopStopCaps.begin();
		auto ltIt = loopTripCaps.begin();
		// Initialize iters here since we will break at every 1000 metrics and vars and continue using the same iterators.
		// The for loops below have no init statement if you check
		auto mIt = scopePair.second.begin();
		auto& varCaps = varCaptures[threadPair.first][funcPair.first][scopePair.first];
		auto varIt = varCaps.begin();
		auto &valuesVec = (*varIt).second;
		auto valueIt = valuesVec.begin() ;
		int chunkNumber = 0;
		while(mIt!=scopePair.second.end()) { // assuming vars and metrics have similar sizes
		    array metricsArr{};
		    int metricsPerRecord = 0; // restrict it to 1000 to keep the docuemnt within the 16MB bson limit for mongo
		    int varsPerRecord = 0;
		    for( ; (metricsPerRecord!=docsLimit && mIt != scopePair.second.end()); mIt++) {
			auto metricSubDoc = document{}; // opens a document for each metric entry
			metricSubDoc << "value" << (*mIt);
			if(lsIt!=loopStartCaps.end()) {
			    metricSubDoc << "start" << (*lsIt);
			    metricSubDoc << "stop" << (*lpIt);
			    metricSubDoc << "count" << (*ltIt);
			    lsIt++;lpIt++;ltIt++;
			}
			auto metricDocValue = metricSubDoc << finalize;
			metricsArr << metricDocValue;
			metricsPerRecord++;
		    }
		    scopeDoc << "metrics" <<  metricsArr;

		    // Iterates over the captured vars and serilaizes them
		    array varsArr = chunkVarsArray(varIt, valueIt, varCaps, docsLimit);

		    scopeDoc << "vars" << varsArr;
		    scopeDoc << "n" << chunkNumber;
		    // just in case. the builder is empty after it is used/finalized the first time.
		    scopeDoc << "thread" << threadIDHash;
		    scopeDoc << "codeId" << coiId;
		    scopeDoc << "runId" << runId;
		    scopeDoc << "func" << funcPair.first;
		    scopeDoc << "scope" << scopePair.first;
		    auto scopeDocValue = scopeDoc << finalize;
		    bsoncxx::document::value doc = builder << concatenate(scopeDocValue.view()) << finalize;
		    /*if(chunkNumber>243) {
			std::cout << bsoncxx::to_json(doc.view()) << std::endl;
		    }*/
		    try {
			/*if(chunkNumber==121) {
			    //std::cout << bsoncxx::to_json(doc.view()) << std::endl;
			    FileSystem::File f("n121.json");
			    f.open(FileSystem::File::out, FileSystem::File::text);
			    if(f.isGood())
				f.putLine(bsoncxx::to_json(doc.view()), false);
			}*/
			//if(chunkNumber%2==0)
			    bsoncxx::stdx::optional<mongocxx::result::insert_one> res = collection.insert_one(doc.view());
		    }
		    catch(std::exception& e ) {
			std::cout << e.what() << std::endl;
		    }

		    //docs.push_back(doc);
		    chunkNumber++;
		}
	    }
	}
    }
    //std::cout << " Inserting " << docs.size() << " documents" << std::endl;
    //collection.insert_many(docs);
}

template<typename T>
json CaptureDB<T>::serializeAllDatapointsWithKeys() {
    json datapointsJson;
    json threadsJson = json::array();
    std::hash<std::thread::id> idHasher;
    for(auto tIt = unitInnerMetricStop.begin(); tIt !=  unitInnerMetricStop.end(); tIt++) {
        auto& threadPair = (*tIt);
        json threadJson;
        threadJson["thread"] = idHasher(threadPair.first);
        json funcsJson = json::array();
        for(auto fIt = threadPair.second.begin(); fIt != threadPair.second.end(); fIt++) {
            auto& funcPair = (*fIt);
            json funcJson;
            funcJson["func"] = funcPair.first;
            json scopesJson = json::array();
            for(auto sIt = funcPair.second.begin(); sIt != funcPair.second.end(); sIt++) {
                auto& scopePair = (*sIt);
                json scope;
                scope["scope"] = scopePair.first;
                //scope[scopePair.first] = json(scopePair.second);
                scope["metrics"] = json(scopePair.second);
                auto& capturesScopePair = variableCaptures[threadPair.first][funcPair.first][scopePair.first];
                scope["vars"] = json(capturesScopePair);
                scopesJson.push_back(scope);
            }
            funcJson["scopes"] = scopesJson;
            funcsJson.push_back(funcJson);
        }
        threadJson["funcs"] = funcsJson;
        threadsJson.push_back(threadJson);
    }
    datapointsJson["threads"] = threadsJson;
    datapointsJson["codeId"] = cId;
    datapointsJson["runId"] = rId;
    //std::cout << capturesJson << std::endl;
    //std::cout << datapointsJson << std::endl;
    //createJsonFile("./db_all_dps.json", datapointsJson);
    return datapointsJson;
}

template<typename T>
CaptureDB<T>::~CaptureDB() {
    //json stats = serializeStatisticsWithKeys();
    //json dps = serializeAllDatapointsWithKeys();
    std::string statspath = "";
    std::string dpspath = "";
    int uniqueRunId = -1;
    // create unique filenames and then check if they exist or not
    do {
        int uniqueId = generateUniqueId();
	uniqueRunId = uniqueId;
        statspath = "./db_min_avg_max_" + std::to_string(uniqueId) + ".json";
        dpspath = "./db_all_dps_" + std::to_string(uniqueId) + ".json";
    } while(FileSystem::File::exists(statspath) && FileSystem::File::exists(dpspath));
    // now create the files
    //createJsonFile(statspath, stats);
    //createJsonFile(dpspath, dps);
    // store the HUGE json file in mongo GridFS
    //writeToGridFS(dpspath);
    // serialize to mongo. This is useless when the run is huge. we will exceed the 16MB bson size easily to 200 MB
    //serializeAllDatapointsToMongo<T>(unitInnerMetricStop, variableCaptures, uniqueRunId);
    // serialzie to mongo in chunks
    //serialize1kDatapointsToMongo<T>(unitInnerMetricStop, variableCaptures, cId, /*uniqueRunId*/ rId);
}

template<typename T>
void CaptureDB<T>::insertStartMetric(CaptureMessage* msg, T value) {
    unitInnerMetricStart[msg->threadId()][msg->functionName()][msg->capturedUnitId()].push_back(value);
}

template<typename T>
void CaptureDB<T>::insertStopMetric(CaptureMessage* msg, T value) {
    unitInnerMetricStop[msg->threadId()][msg->functionName()][msg->capturedUnitId()].push_back(value);
}

template<typename T>
void CaptureDB<T>::insertVarCaptures(CaptureMessage* msg, std::vector<std::string> varNames, std::vector<std::string> varValues) {
    if(varNames.size() == varValues.size()) {
        for(int i=0; i<varNames.size(); i++) {
            variableCaptures[msg->threadId()][msg->functionName()][msg->capturedUnitId()][varNames[i]].push_back(varValues[i]);
        }
    }
}

/* Returns the variables that are in higher parent scopes than the current variable.
 * The variableDBIndex data structre is used to retrieve all this information from the variableCaptures
 * data structure.
 */
template<typename T>
std::vector<std::pair<std::string, std::string>> CaptureDB<T>::getVariableParents(std::thread::id tId, std::string fName, int lId, std::string variable, int variableIndex) {
    std::vector<std::pair<std::string, std::string>> parentVars;
    doGetVariableParents(parentVars, tId, fName, lId, variable, variableIndex);
    return parentVars;
}
template<typename T>
void CaptureDB<T>::doGetVariableParents(std::vector<std::pair<std::string, std::string>>& parentVars, std::thread::id tId, std::string fName, int lId, std::string variable, int variableIndex) {
    auto &indexVariableVector = variableDBIndex[tId][fName][lId][variable];
    auto it = indexVariableVector.begin();
    while(it != indexVariableVector.end()) {
        int startIndex = std::get<0>(*it); // is the current variable's start index
        /* the following check takes care of the last entry for the variable because
         * that last entry will actually point to an invalid index in the parent (basically
         * parentCaptures.size(). We chose to add this invalid entry rather than doing an if-else
         * check during capturing which could be complicated
         */
        if(startIndex < variableCaptures[tId][fName][lId][variable].size() ) {
            std::string parentVar = std::get<1>(*it); // is the actual parent's variable name
            int parentScopeIndex = std::get<2>(*it);
            int parentIndex = std::get<3>(*it); // will be used to index into variableCaptures
            // The last tuple in the vector will be a startIndex and will not have a corresponding endIndex
            // Therefore the parent index will be inside the tuple at the current Iterator it.

            int endIndex = startIndex;
            if(it != indexVariableVector.end()-1) {
                auto it2 = it+1;
                /* This loop will iterate over it+1 til vector.end to find the corresponding end
                 * tuple. This tuple should have its variable name the same as the start tuple variable
                 * name and also the scope index for that variable be the same in both tuples. Else
                 * we keep looking until we reach the end of the vector.
                 */
                while(it2 != indexVariableVector.end()) {
                    std::string endIndexParentVar = std::get<1>(*it2);
                    int endIndexParentScope = std::get<2>(*it2);
                    if(parentVar == endIndexParentVar && parentScopeIndex == endIndexParentScope) {
                        endIndex = std::get<0>(*(it2));
                        break;
                    }
                    it2++;
                }
            }
            // The first condition takes care of all tuples besides the last tuple which is caught by the second condition
            if( ( variableIndex >= startIndex && variableIndex < endIndex ) || ( (it == (indexVariableVector.end()-1)) && (variableIndex >= startIndex) )) {
                std::string parentVarValue = variableCaptures[tId][fName][parentScopeIndex][parentVar][parentIndex];
                // Recursive call to get the parents of the parent. In here we change the loopId to the parent's scope Id i.e. parents loop id
                doGetVariableParents(parentVars, tId, fName, parentScopeIndex, parentVar, parentIndex);
                parentVars.push_back(make_pair(parentVar, parentVarValue));
                //return;
            }
        }
        it++;
    }
}

template<typename T>
void CaptureDB<T>::updateIndex(CaptureMessage* currentScopeMsg, CaptureMessage* nextScopeMsg, std::vector<std::string> parentVars, std::vector<std::string> nextVars) {
    for(std::string indexVar : nextVars) {
        int indexVarSize = variableCaptures[nextScopeMsg->threadId()][nextScopeMsg->functionName()][nextScopeMsg->capturedUnitId()][indexVar].size();
        for(std::string parentVar : parentVars) {
            int parentVarSize = variableCaptures[currentScopeMsg->threadId()][currentScopeMsg->functionName()][currentScopeMsg->capturedUnitId()][parentVar].size();
             /* Insert a tuple which has the following:
             * 1- the first int indicates where indexVariable is located in the variableChanges data structure
             * 2- the second argument indicates, which variable is the parent variable. We use this to query the variableCaptures
             *      map at a location indicated by the third argument below.
             * 3- the 3rd argument indicates where in the variableChanges map do we have to look for parentVar.
             *
             * Using this technique, we can say that the 130th position in the varChanges map for variable j
             * depends on the 30th position in the varChanges map of k.
             * Thus varChanges[j].at(130) depends on varChagnes[k].at(30);
             */
            std::tuple<int, std::string, int, int> indexTuple = make_tuple(indexVarSize, parentVar, currentScopeMsg->capturedUnitId(), parentVarSize - 1 );
            variableDBIndex[nextScopeMsg->threadId()][nextScopeMsg->functionName()][nextScopeMsg->capturedUnitId()][indexVar].push_back(indexTuple);
            //std::cout << "Updating index of " << indexVar << " at [ " << indexVarSize << ", " << parentVar << ", " <<  currentScopeMsg->capturedUnitId() << ", " << parentVarSize - 1 << " ]" << std::endl;
        }
    }
}

template<typename T>
void CaptureDB<T>::reduce() { 
    if(unitInnerMetricStart.size() == unitInnerMetricStop.size()) {
        auto startMapThreadIt = unitInnerMetricStart.begin(); // iterators for the thread map
        while(startMapThreadIt != unitInnerMetricStart.end()) {
            auto &startMapFunc = startMapThreadIt->second; // the function name map
            auto startMapFuncIt = startMapFunc.begin(); // the functionname map iterators
            while(startMapFuncIt != startMapFunc.end()) {
                auto &startMapLoopId = startMapFuncIt->second; // the loop index map
                auto startMapLoopIdIt = startMapLoopId.begin(); // the loop index map iterators
                while(startMapLoopIdIt != startMapLoopId.end()) {
                    auto &startVector = startMapLoopIdIt->second; // the actual innermost vector map
                    auto &stopVector = unitInnerMetricStop[startMapThreadIt->first][startMapFuncIt->first][startMapLoopIdIt->first];
                    if(startVector.size() == stopVector.size()) {
                        auto startVecIt = startVector.begin(); // the innermost vector iterator
                        auto stopVecIt = stopVector.begin();
                        while(startVecIt != startVector.end()) {
                            *stopVecIt = *stopVecIt - *startVecIt; // the actual reduction
                            startVecIt++;
                            stopVecIt++;
                        }
                        // the algorithms returns an iterator to the elements
                        auto maxElement = std::max_element(stopVector.begin(), stopVector.end());
                        auto minElement = std::min_element(stopVector.begin(), stopVector.end());
                        /* We need to cast the init value "0" to ull (unsigned long long) because if we dont,
                         * the "0" will be considered int and the accumulate will only accumulate over that int
                         * and overflow whenever the int reaches its limit
                         */
                        unsigned long long accum = std::accumulate(stopVector.begin(), stopVector.end(), 0ull);
                        T avgElement = accum / stopVector.size();
                        std::cout << startMapLoopIdIt->first << " | size: " << stopVector.size() << " | min: " << *minElement << " | avg: " << avgElement << " | max: " << *maxElement << "\n";
                        minAvgMax[startMapThreadIt->first][startMapFuncIt->first][startMapLoopIdIt->first].push_back(*minElement);
                        minAvgMax[startMapThreadIt->first][startMapFuncIt->first][startMapLoopIdIt->first].push_back(avgElement);
                        minAvgMax[startMapThreadIt->first][startMapFuncIt->first][startMapLoopIdIt->first].push_back(*maxElement);
                    }
                    startMapLoopIdIt++;
                }
                startMapFuncIt++;
            }
            startMapThreadIt++;
        }
    }
}

#endif // CAPTUREDB

