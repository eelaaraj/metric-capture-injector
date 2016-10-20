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
    //std::cout << capturesJson << std::endl;
    //std::cout << minAvgMaxJson << std::endl;
    //createJsonFile("./db_min_avg_max.json", minAvgMaxJson);
    return minAvgMaxJson;
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
    datapointsJson["runId"] = rId;
    //std::cout << capturesJson << std::endl;
    //std::cout << datapointsJson << std::endl;
    //createJsonFile("./db_all_dps.json", datapointsJson);
    return datapointsJson;
}

template<typename T>
CaptureDB<T>::~CaptureDB() {
    json stats = serializeStatisticsWithKeys();
    json dps = serializeAllDatapointsWithKeys();
    std::string statspath = "";
    std::string dpspath = "";
    // create unique filenames and then check if they exist or not
    do {
        int uniqueId = generateUniqueId();
        statspath = "./db_min_avg_max_" + std::to_string(uniqueId) + ".json";
        dpspath = "./db_all_dps_" + std::to_string(uniqueId) + ".json";
    } while(FileSystem::File::exists(statspath) && FileSystem::File::exists(dpspath));
    // now create the files
    createJsonFile(statspath, stats);
    createJsonFile(dpspath, dps);
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

