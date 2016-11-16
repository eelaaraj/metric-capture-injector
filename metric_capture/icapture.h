#ifndef ICAPTURE
#define ICAPTURE
#include <thread>
#include <iostream>
#include <map>
#include <vector>
#include <algorithm>
#include <iomanip>
#include <sstream>

#include "FileSystem.h"
#include "capturedb.h"

using namespace FileSystem;

//template<template<typename...> class TupleType1, template<typename...> class TupleType2>
template<class... TupleTypes>
class SingleFunctionVariableCapturer{
public:
    template<typename ...CapturedValueType>
    void capture(int loopId, CapturedValueType... tt) {}
//private:
    std::tuple<std::vector<TupleTypes>...> db;

};

//template<typename ...Ts>
//template<typename T1, typename T2, template<class...> class...TupleType>//, typename ...Args>
template<template<typename...> class TupleType, typename...Args>//, typename ...Args>
class VariableCapturer {
public:
    VariableCapturer() {};
    //template<typename ...Ts>
    //void capture(CaptureMessage* message, Ts... ts);
    //template<typename ...Ts>
    //void capture(CaptureMessage* message, TupleType... ts) {};
private:
    TupleType<Args...> db;
    //TupleType<Args>... db;
    //std::map<std::thread::id, std::map<std::string, std::tuple<VecType...>>> db;
};
/*template<typename T1, typename T2, template<typename...> class...TupleType>//, typename ...Args>
VariableCapturer<T1,T2,TupleType...>::VariableCapturer() {

}*/


/* This class ICapture was supposed to be purely an interface.
 * But because virtual functions cant be virtual, I had to implement captureVariables
 * in the top most parent rather than ACapture.
 */
template<typename T, typename ...Vars>
class ICapture {
public:
    //virtual ICapture* create() = 0;
    virtual ~ICapture() {}
    //virtual ICapture* instance() = 0;
    virtual void start(CaptureMessage* message) = 0;
    virtual void stop(CaptureMessage* message) = 0;
    virtual void captureVar(CaptureMessage*, std::vector<std::string> varNames, std::vector<std::string> varValues) = 0;
    virtual void captureVar(CaptureMessage*, std::string name, int value) = 0;
    virtual void captureVar(CaptureMessage*, std::string name, std::string value) = 0;
    virtual void captureVar(CaptureMessage*, std::string name, bool value) = 0;
    virtual void captureVar(CaptureMessage*, std::string name, float value) = 0;
    virtual void captureVar(CaptureMessage*, std::string name, double value) = 0;
    virtual void captureVar(CaptureMessage*, std::string name, long value) = 0;
    virtual void captureVar(CaptureMessage*, std::string name, long long value) = 0;

    //template<Vars... vars>
    //virtual void captureVariables(CaptureMessage* message) = 0;
    virtual int& coiId() = 0;
    virtual int& runId() = 0;
    virtual void reduce() = 0;
    virtual void updateIndex(CaptureMessage* currentScopeMsg, CaptureMessage* nextScopeMsg, std::vector<std::string> parentVars, std::vector<std::string> nextVars) = 0;
    virtual void printStatistics() = 0;
    virtual void debugStartStop() = 0;
    virtual CaptureDB<T>& getDB() = 0;
    virtual std::map<std::thread::id, std::map<std::string, std::map<int, std::vector<T>>>>& getStartMetrics() = 0;
    virtual std::map<std::thread::id, std::map<std::string, std::map<int, std::vector<T>>>>& getStopMetrics() = 0; // stop metrics can be renamed here to metrics because after reduction we will have the stop-start in this datastructrue
    virtual std::map<std::thread::id, std::map<std::string, std::map<int, std::vector<T>>>>& getStatistics() = 0;
    virtual std::map<std::thread::id, std::map<std::string, std::map<int, std::map<std::string, std::vector<std::string>>>>>& getVarCaptures() = 0;
    virtual std::map<std::thread::id, std::map<std::string, std::map<int, std::map<std::string, std::vector<std::tuple<int, std::string, int, int>>>>>>& getVariableRelationships() = 0;
};

template <typename T, int DeviceType>//, typename Derived>
class ACapture : public ICapture<T> {
public:
    //ACapture() = delete;
    //virtual ICapture* create() = 0;
    virtual ~ACapture() {}
    //virtual ICapture* instance() = 0;
    virtual int& coiId() { return db.coiId(); }
    virtual int& runId() { return db.runId(); }
    virtual void start(CaptureMessage* message) = 0;
    virtual void stop(CaptureMessage* message) = 0;
    virtual void captureVar(CaptureMessage*, std::vector<std::string> varNames, std::vector<std::string> varValues);
    virtual void captureVar(CaptureMessage*, std::string name, int value);
    virtual void captureVar(CaptureMessage*, std::string name, std::string value);
    virtual void captureVar(CaptureMessage*, std::string name, bool value);
    virtual void captureVar(CaptureMessage*, std::string name, float value);
    virtual void captureVar(CaptureMessage*, std::string name, double value);
    virtual void captureVar(CaptureMessage*, std::string name, long value);
    virtual void captureVar(CaptureMessage*, std::string name, long long value);
    //template<typename ...Args>
    //virtual void captureVariables(CaptureMessage* message, Args... args);
    virtual void reduce();
    virtual void updateIndex(CaptureMessage* currentScopeMsg, CaptureMessage* nextScopeMsg, std::vector<std::string> parentVars, std::vector<std::string> nextVars);
    virtual CaptureDB<T>& getDB() { return db; }
    virtual std::map<std::thread::id, std::map<std::string, std::map<int, std::vector<T>>>>& getStartMetrics() { return db.getStartMetrics(); }
    virtual std::map<std::thread::id, std::map<std::string, std::map<int, std::vector<T>>>>& getStopMetrics() { return db.getStopMetrics(); }
    virtual std::map<std::thread::id, std::map<std::string, std::map<int, std::vector<T>>>>& getStatistics() { return db.getStatistics(); }
    virtual std::map<std::thread::id, std::map<std::string, std::map<int, std::map<std::string, std::vector<std::string>>>>>& getVarCaptures() { return db.getVarCaptures(); }
    virtual std::map<std::thread::id, std::map<std::string, std::map<int, std::map<std::string, std::vector<std::tuple<int, std::string, int, int>>>>>>& getVariableRelationships() { return db.getDBIndex(); }
    /*virtual std::map<std::thread::id, std::map<std::string, std::map<int, std::vector<T>>>>& getStartMetrics() { return unitInnerMetricStart; }
    virtual std::map<std::thread::id, std::map<std::string, std::map<int, std::vector<T>>>>& getStopMetrics() { return unitInnerMetricStop; }
    virtual std::map<std::thread::id, std::map<std::string, std::map<int, std::vector<T>>>>& getStatistics() { return minAvgMax; }
    virtual std::map<std::thread::id, std::map<std::string, std::map<int, std::map<std::string, std::vector<std::string>>>>>& getVarCaptures() { return variableCaptures; } */
    virtual void debugStartStop();
    virtual void printStatistics();
    /* TODO: singletonInstance and the whole ACapture class should be templated on an extra type which will
     * create a different static variable depending on the type of the captureDevice. Right now, if we are
     * capturing time in one function and energy in another, they will be written to the same
     * singletonInstance->minAvgMax structure. If we add a new template type, then each type of device
     * will have its own singleton. So all time captures will be written in one minAvgMax and all
     * energy captures will be written in another minAvgMax.
     */
    static ACapture<T,DeviceType>/*, Derived>*/* singletonInstance;

protected:
    // we omit translation unit Id from the map
    /*std::map<std::thread::id, std::map<std::string, std::map<int, std::vector<T>>>> unitInnerMetricStart;
    std::map<std::thread::id, std::map<std::string, std::map<int, std::vector<T>>>> unitInnerMetricStop;
    std::map<std::thread::id, std::map<std::string, std::map<int, std::vector<T>>>> minAvgMax;
    std::map<std::thread::id, std::map<std::string, std::map<int, std::map<std::string, std::vector<std::string>>>>> variableCaptures;*/
    CaptureDB<T> db;
};
/*
template<typename T, int DeviceType>
void ACapture<T,DeviceType>::captureVar(CaptureMessage *message, std::vector<std::string> varNames, std::vector<std::string> varValues) {
    if(varNames.size() == varValues.size()) {
        for(int i=0; i<varNames.size(); i++) {
            variableCaptures[message->threadId()][message->functionName()][message->capturedUnitId()][varNames[i]].push_back(varValues[i]);
        }
    }
}*/

template<typename T, int DeviceType>
void ACapture<T,DeviceType>::captureVar(CaptureMessage *message, std::vector<std::string> varNames, std::vector<std::string> varValues) {
    db.insertVarCaptures(message, varNames, varValues);
}
template<typename T, int DeviceType>
void ACapture<T,DeviceType>::captureVar(CaptureMessage *message, std::string name, int value) {
    db.insertVarCaptures(message, {name}, {std::to_string(value)});
}
template<typename T, int DeviceType>
void ACapture<T,DeviceType>::captureVar(CaptureMessage *message, std::string name, bool value) {
    db.insertVarCaptures(message, {name}, {std::to_string(value)});
}
template<typename T, int DeviceType>
void ACapture<T,DeviceType>::captureVar(CaptureMessage *message, std::string name, std::string value) {
    db.insertVarCaptures(message, {name}, {value});
}
template<typename T, int DeviceType>
void ACapture<T,DeviceType>::captureVar(CaptureMessage *message, std::string name, float value) {
    db.insertVarCaptures(message, {name}, {std::to_string(value)});
}
template<typename T, int DeviceType>
void ACapture<T,DeviceType>::captureVar(CaptureMessage *message, std::string name, double value) {
    db.insertVarCaptures(message, {name}, {std::to_string(value)});
}
template<typename T, int DeviceType>
void ACapture<T,DeviceType>::captureVar(CaptureMessage *message, std::string name, long value) {
    db.insertVarCaptures(message, {name}, {std::to_string(value)});
}
template<typename T, int DeviceType>
void ACapture<T,DeviceType>::captureVar(CaptureMessage *message, std::string name, long long value) {
    db.insertVarCaptures(message, {name}, {std::to_string(value)});
}

template<typename T, int DeviceType>//, typename Derived>
void ACapture<T,DeviceType>/*, Derived>*/::printStatistics() {
    std::cout << "\nStatistics\n";
    auto startMapThreadIt = this->getDB().getStatistics().begin();//minAvgMax.begin(); // iterators for the thread map
    while(startMapThreadIt != this->getDB().getStatistics().end()) {
        std::cout << std::setfill(' ') << std::setw(3) <<""; std::cout << "Thread: " << startMapThreadIt->first << std::endl;
        auto &startMapFunc = startMapThreadIt->second; // the function name map
        auto startMapFuncIt = startMapFunc.begin(); // the functionname map iterators
        while(startMapFuncIt != startMapFunc.end()) {
            std::cout << std::setfill(' ') << std::setw(6) << ""; std::cout << "Function: " << startMapFuncIt->first << std::endl;
            auto &startMapLoopId = startMapFuncIt->second; // the loop index map
            auto startMapLoopIdIt = startMapLoopId.begin(); // the loop index map iterators
            while(startMapLoopIdIt != startMapLoopId.end()) {
                std::cout << std::setfill(' ') << std::setw(9) << ""; std::cout << "Loop: " << startMapLoopIdIt->first << std::endl;
                auto &startVector = startMapLoopIdIt->second; // the actual innermost vector map
                std::cout << std::setfill(' ') << std::setw(12) << ""; std::cout << "Min:" << startVector[0] << std::endl;
                std::cout << std::setfill(' ') << std::setw(12) << ""; std::cout << "Avg:" << startVector[1] << std::endl;
                std::cout << std::setfill(' ') << std::setw(12) << ""; std::cout << "Max:" << startVector[2] << std::endl;
                startMapLoopIdIt++;
            }
            startMapFuncIt++;
        }
        startMapThreadIt++;
    }
}

template<typename T, int DeviceType>
void ACapture<T, DeviceType>::updateIndex(CaptureMessage* currentScopeMsg, CaptureMessage* nextScopeMsg, std::vector<std::string> parentVars, std::vector<std::string> nextVars) {
    db.updateIndex(currentScopeMsg, nextScopeMsg, parentVars, nextVars);
}

template<typename T, int DeviceType>//, typename Derived>
void ACapture<T, DeviceType>::reduce() {
    db.reduce();
}


template<typename T, int DeviceType>//, typename Derived>
void ACapture<T,DeviceType>::debugStartStop() {
    if(this->getDB().getStartMetrics().size() == this->getDB().getStopMetrics().size()) {
        auto startMapThreadIt = this->getDB().getStartMetrics().begin(); // iterators for the thread map
        while(startMapThreadIt != this->getDB().getStartMetrics().end()) {
            std::cout << "Thread: " << startMapThreadIt->first << std::endl;
            auto &startMapFunc = startMapThreadIt->second; // the function name map
            auto startMapFuncIt = startMapFunc.begin(); // the functionname map iterators
            while(startMapFuncIt != startMapFunc.end()) {
                std::cout << "Function: " << startMapFuncIt->first << std::endl;
                auto &startMapLoopId = startMapFuncIt->second; // the loop index map
                auto startMapLoopIdIt = startMapLoopId.begin(); // the loop index map iterators
                while(startMapLoopIdIt != startMapLoopId.end()) {
                    std::cout << "Loop: " << startMapLoopIdIt->first << std::endl;
                    auto &startVector = startMapLoopIdIt->second; // the actual innermost vector map
                    auto &stopVector = this->getDB().getStopMetrics()[startMapThreadIt->first][startMapFuncIt->first][startMapLoopIdIt->first];
                    if(startVector.size() == stopVector.size()) {
                        auto startVecIt = startVector.begin(); // the innermost vector iterator
                        auto stopVecIt = stopVector.begin();
                        while(startVecIt != startVector.end()) {
                            std::cout << "star: " << std::setw(5) << *startVecIt << std::endl;
                            std::cout << "stop: " << std::setw(5) << *stopVecIt << std::endl;
                            std::cout << "diff: " << std::setw(5) << *stopVecIt - *startVecIt << std::endl;
                            startVecIt++;
                            stopVecIt++;
                        }
                    }
                    startMapLoopIdIt++;
                }
                startMapFuncIt++;
            }
            startMapThreadIt++;
        }
    }
}
/*
template<typename T, int DeviceType>//, typename Derived>
void ACapture<T, DeviceType>::reduce() {
    if(unitInnerMetricStart.size() == unitInnerMetricStop.size()) {
        auto startMapThreadIt = unitInnerMetricStart.begin(); // iterators for the thread map
        while(startMapThreadIt != unitInnerMetricStart.end()) {
            auto startMapFunc = startMapThreadIt->second; // the function name map
            auto startMapFuncIt = startMapFunc.begin(); // the functionname map iterators
            while(startMapFuncIt != startMapFunc.end()) {
                auto startMapLoopId = startMapFuncIt->second; // the loop index map
                auto startMapLoopIdIt = startMapLoopId.begin(); // the loop index map iterators
                while(startMapLoopIdIt != startMapLoopId.end()) {
                    auto startVector = startMapLoopIdIt->second; // the actual innermost vector map
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
                        // We need to cast the init value "0" to ull (unsigned long long) because if we dont,
                         // the "0" will be considered int and the accumulate will only accumulate over that int
                         // and overflow whenever the int reaches its limit
                         //
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
}*/

template<typename T>
class CaptureSerializer {
public:
    virtual ~CaptureSerializer() {}
    virtual void serialize() = 0;
    virtual void save(const std::string& filepath);
protected:
    CaptureSerializer(ICapture<T>* captureDevice) : capture(captureDevice) {}
    ICapture<T>* capture;
    std::stringstream serialized;
};

template<typename T>
void CaptureSerializer<T>::save(const std::string& filepath) {
    File f(filepath);
    f.open(File::out, File::text);
    if(f.isGood() && serialized) {
        serialize();
        f.putLine(serialized.str());
    }
}

template<typename T>
class CaptureStringSerializer : public CaptureSerializer<T> {
public:
    CaptureStringSerializer(ICapture<T>* captureDevice) : CaptureSerializer<T>(captureDevice) {}
    virtual void serialize();
    //virtual void serialize(const std::string& filepath);
};

template<typename T>
void CaptureStringSerializer<T>::serialize() {
    std::stringstream sstream; // statistics stream
    std::stringstream completeDataStream;
    sstream << "\nStatistics\n";
    auto &minAvgMax = this->capture->getStatistics();
    auto startMapThreadIt = minAvgMax.begin(); // iterators for the thread map
    while(startMapThreadIt != minAvgMax.end()) {
        sstream << std::setfill(' ') << std::setw(3) <<""; sstream << "Thread: " << startMapThreadIt->first << std::endl;
        completeDataStream << std::setfill(' ') << std::setw(3) <<""; completeDataStream << "Thread: " << startMapThreadIt->first << std::endl;
        auto &startMapFunc = startMapThreadIt->second; // the function name map
        auto startMapFuncIt = startMapFunc.begin(); // the functionname map iterators
        while(startMapFuncIt != startMapFunc.end()) {
            sstream << std::setfill(' ') << std::setw(6) << ""; sstream << "Function: " << startMapFuncIt->first << std::endl;
            completeDataStream << std::setfill(' ') << std::setw(6) << ""; completeDataStream << "Function: " << startMapFuncIt->first << std::endl;
            auto &startMapLoopId = startMapFuncIt->second; // the loop index map
            auto startMapLoopIdIt = startMapLoopId.begin(); // the loop index map iterators
            while(startMapLoopIdIt != startMapLoopId.end()) {
                sstream << std::setfill(' ') << std::setw(9) << ""; sstream << "Loop: " << startMapLoopIdIt->first << std::endl;
                auto &startVector = startMapLoopIdIt->second; // the actual innermost vector map
                sstream << std::setfill(' ') << std::setw(12) << ""; sstream << "Min:" << startVector[0] << std::endl;
                sstream << std::setfill(' ') << std::setw(12) << ""; sstream << "Avg:" << startVector[1] << std::endl;
                sstream << std::setfill(' ') << std::setw(12) << ""; sstream << "Max:" << startVector[2] << std::endl;
                /* This block will serialize the complete data point set */
                completeDataStream << std::setfill(' ') << std::setw(9) << ""; completeDataStream << "Loop: " << startMapLoopIdIt->first << std::endl;
                auto &stopDataVector = this->capture->getStopMetrics()[startMapThreadIt->first][startMapFuncIt->first][startMapLoopIdIt->first];
                auto stopDataVectorIt = stopDataVector.begin();
                std::cout << "*** Loop " << startMapLoopIdIt->first << " captures = " << stopDataVector.size() << std::endl;
                int iterationIndexIntoCaptureVec = 0;
                while(stopDataVectorIt != stopDataVector.end()) {
                    // This commented block will print the captured variables associated with each iteration
                    //std::cout << "Loop : "<< startMapLoopIdIt->first << " Iteration index into capture vec : " << iterationIndexIntoCaptureVec << std::endl;
                    auto &variableCaptureMap = this->capture->getVarCaptures()[startMapThreadIt->first][startMapFuncIt->first][startMapLoopIdIt->first];
                    auto variableCaptureMapIt = variableCaptureMap.begin();
                    int captureIndex = 0;
                    std::string iterationVarCaptures = "";
                    while(variableCaptureMapIt != variableCaptureMap.end()) {
                        //std::cout << "\tVariable : " << variableCaptureMapIt->first << " Size: " << variableCaptureMapIt->second.size() << " capture Index : " << captureIndex << std::endl;
                        if((variableCaptureMapIt->first == "j" || variableCaptureMapIt->first == "i") )
                            std::cout << "";
                        auto parentVariables = this->capture->getDB().getVariableParents(startMapThreadIt->first, startMapFuncIt->first, startMapLoopIdIt->first, variableCaptureMapIt->first, iterationIndexIntoCaptureVec);
                        //std::cout << "Parent vars size = " << parentVariables.size();
                        for(auto parentVar : parentVariables)
                            iterationVarCaptures += " " + parentVar.first + "=" + parentVar.second + " , ";
                        if(! variableCaptureMapIt->second.empty() ) {
                            iterationVarCaptures += " " + variableCaptureMapIt->first + "=" + variableCaptureMapIt->second[iterationIndexIntoCaptureVec] + " : ";
                        }
                        else
                            iterationVarCaptures += "no var capture happened the loop didnt activate";
                        variableCaptureMapIt++;
                        captureIndex++;
                    }

                    //completeDataStream << std::setfill(' ') << std::setw(12) << ""; completeDataStream << "Datapoint: " << *stopDataVectorIt << std::endl;
                    completeDataStream << std::setfill(' ') << std::setw(12) << ""; completeDataStream << "Datapoint: " + iterationVarCaptures << *stopDataVectorIt << std::endl;
                    stopDataVectorIt++;
                    iterationIndexIntoCaptureVec++;
                    //startDataVectorIt++;
                }
                /* End of complete data set serialization */
                startMapLoopIdIt++;
            }
            // This code block is used for debugging purposes only. It prints the number of captures for each var
            auto &variableCaptureLoopMap = this->capture->getVarCaptures()[startMapThreadIt->first][startMapFuncIt->first];
            auto variableCaptureLoopMapIt = variableCaptureLoopMap.begin();
            while(variableCaptureLoopMapIt != variableCaptureLoopMap.end()) {
                auto &variableCaptureMap = this->capture->getVarCaptures()[startMapThreadIt->first][startMapFuncIt->first][variableCaptureLoopMapIt->first];
                auto variableCaptureMapIt = variableCaptureMap.begin();
                while(variableCaptureMapIt != variableCaptureMap.end()) {
                    std::cout << "****** Var " << variableCaptureMapIt->first << " size = " << variableCaptureMapIt->second.size() << std::endl;
                    variableCaptureMapIt++;
                }
                variableCaptureLoopMapIt++;
            }

            startMapFuncIt++;
        }
        startMapThreadIt++;
    }
    std::cout << sstream.str();
    //std::cout << completeDataStream.str();
    this->serialized << sstream.str(); // TODO: Not efficient AT ALL
}

// Not the best way to write the xml. It would be better if the capture Maps are
// used to construct an xml tree and then serialize that tree
template<typename T>
class CaptureXmlSerializer : public CaptureSerializer<T> {
public:
    CaptureXmlSerializer(ICapture<T>* captureDevice) : CaptureSerializer<T>(captureDevice) {}
    virtual void serialize();
    //virtual void serialize(const std::string& filepath);
private:
    void writeXmlDocument(std::stringstream& input);
    void writeXmlDecl(std::stringstream& input);
    void writeEmptyElement(std::stringstream& input, std::string name);
    template<typename TextValueType>
    void writeElementWithAttributesAndValue(std::stringstream& input, std::string name, std::string attributesString, TextValueType textValue);
    void writeStatisticsElement(std::stringstream& input);
    void writeDatapointsElement(std::stringstream& input);
    template<typename AttributeType>
    void writeXmlElement(std::stringstream& input, std::string name, AttributeType attributeValue);
    void writeXmlElementClosing(std::stringstream& input, std::string name);

};
template <typename T>
void CaptureXmlSerializer<T>::writeXmlDecl(std::stringstream &input) {
    input << "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>";
}

template <typename T>
void CaptureXmlSerializer<T>::writeEmptyElement(std::stringstream &input, std::string name) {
    input << "<" << name << ">";
}

template <typename T> template <typename TextValueType>
void CaptureXmlSerializer<T>::writeElementWithAttributesAndValue(std::stringstream &input, std::string name, std::string attributesString, TextValueType textValue) {
    input << "<" << name <<  attributesString << ">";
    input << textValue << "</" << name << ">";
}

template <typename T>
void CaptureXmlSerializer<T>::writeStatisticsElement(std::stringstream &input) {
    writeEmptyElement(input, "stats");
}

template <typename T>
void CaptureXmlSerializer<T>::writeDatapointsElement(std::stringstream &input) {
    writeEmptyElement(input, "data");
}

template<typename T> template <typename AttributeType>
void CaptureXmlSerializer<T>::writeXmlElement(std::stringstream &input, std::string name, AttributeType attributeValue) {
    input << "<" << name << " id=\"" << attributeValue << "\">";
}
template <typename T>
void CaptureXmlSerializer<T>::writeXmlElementClosing(std::stringstream &input, std::string name) {
    input << "</" << name << ">";
}

template <typename T>
void CaptureXmlSerializer<T>::writeXmlDocument(std::stringstream &input) {
    std::stringstream datapointsStream;
    writeXmlDecl(input);
    writeEmptyElement(input, "root");
    writeStatisticsElement(input);
    writeDatapointsElement(datapointsStream);
    auto &minAvgMax = this->capture->getStatistics();
    auto startMapThreadIt = minAvgMax.begin(); // iterators for the thread map
    while(startMapThreadIt != minAvgMax.end()) {
        writeXmlElement<std::thread::id>(input, "thread", startMapThreadIt->first);
        writeXmlElement<std::thread::id>(datapointsStream, "thread", startMapThreadIt->first);
        auto &startMapFunc = startMapThreadIt->second; // the function name map
        auto startMapFuncIt = startMapFunc.begin(); // the functionname map iterators
        while(startMapFuncIt != startMapFunc.end()) {
            writeXmlElement<std::string>(input, "function", startMapFuncIt->first);
            writeXmlElement<std::string>(datapointsStream, "function", startMapFuncIt->first);
            auto &startMapLoopId = startMapFuncIt->second; // the loop index map
            auto startMapLoopIdIt = startMapLoopId.begin(); // the loop index map iterators
            while(startMapLoopIdIt != startMapLoopId.end()) {
                /* The following blocks writes the statistics data */
                writeXmlElement<int>(input, "loop", startMapLoopIdIt->first);
                writeXmlElement<int>(datapointsStream, "loop", startMapLoopIdIt->first);
                auto &startVector = startMapLoopIdIt->second; // the actual innermost vector map
                writeXmlElement<T>(input, "min", startVector[0]);
                writeXmlElementClosing(input, "min");
                writeXmlElement<T>(input, "avg", startVector[1]);
                writeXmlElementClosing(input, "avg");
                writeXmlElement<T>(input, "max", startVector[2]);
                writeXmlElementClosing(input, "max");
                /* End of statistics data */

                /* The following block writes the data points */
                auto &stopDataVector = this->capture->getStopMetrics()[startMapThreadIt->first][startMapFuncIt->first][startMapLoopIdIt->first];
                auto stopDataVectorIt = stopDataVector.begin();
                int iterationIndexIntoCaptureVec = 0;
                while(stopDataVectorIt != stopDataVector.end()) {
                    // Opens, writes and closes the point tag
                    auto &variableCaptureMap = this->capture->getVarCaptures()[startMapThreadIt->first][startMapFuncIt->first][startMapLoopIdIt->first];
                    auto variableCaptureMapIt = variableCaptureMap.begin();
                    std::string iterationVarCaptures = "" ;
                    while(variableCaptureMapIt != variableCaptureMap.end()) {

                        auto parentVariables = this->capture->getDB().getVariableParents(startMapThreadIt->first, startMapFuncIt->first, startMapLoopIdIt->first, variableCaptureMapIt->first, iterationIndexIntoCaptureVec);
                        //std::cout << "Parent vars size = " << parentVariables.size();
                        for(auto parentVar : parentVariables)
                            iterationVarCaptures += " " + parentVar.first + "=\"" + parentVar.second + "\"";
                        if(! variableCaptureMapIt->second.empty() ) {
                            iterationVarCaptures += " " + variableCaptureMapIt->first + "=\"" + variableCaptureMapIt->second[iterationIndexIntoCaptureVec] + "\"";
                        }
                        //else
                        //    iterationVarCaptures += "no var capture happened the loop didnt activate";

                        variableCaptureMapIt++;
                    }
                    // Bad hack: I made the tag name be the (tag + the attributes)
                    writeElementWithAttributesAndValue<T>(datapointsStream, "point", iterationVarCaptures , *stopDataVectorIt);
                    stopDataVectorIt++;
                    iterationIndexIntoCaptureVec++;
                }
                /* End of datapoints */

                startMapLoopIdIt++;
                writeXmlElementClosing(input, "loop");
                writeXmlElementClosing(datapointsStream, "loop");
            }
            startMapFuncIt++;
            writeXmlElementClosing(input, "function");
            writeXmlElementClosing(datapointsStream, "function");
        }
        startMapThreadIt++;
        writeXmlElementClosing(input, "thread");
        writeXmlElementClosing(datapointsStream, "thread");
    }
    writeXmlElementClosing(input, "stats");
    writeXmlElementClosing(datapointsStream, "data");
    writeXmlElementClosing(datapointsStream, "root");
    // Append the datapoints stream to the original stream that contains the statistics
    input << datapointsStream.str();
}
template <typename T>
void CaptureXmlSerializer<T>::serialize() {
    std::stringstream sstream;
    writeXmlDocument(sstream);
    //std::cout << sstream.str();
    this->serialized << sstream.str(); // TODO: not efficient AT ALL.
}

/*
template<typename T>
ACapture<T>::reduce_bkp() {
    if(unitInnerMetricStart.size() == unitInnerMetricStop) {
        auto startMapThreadIt = unitInnerMetricStart.begin(); // iterators for the thread map
        auto stopMapThreadIt = unitInnerMetricStop.begin();
        while(startMapThreadIt != unitInnerMetricStart.end()) {
            auto startMapFunc = startMapThreadIt->second; // the function name map
            auto stopMapFunc = stopMapThreadIt->second;
            if(startMapFunc.size() == stopMapFunc.size()) {
                auto startMapFuncIt = startMapFunc.begin(); // the functionname map iterators
                auto stopMapFuncIt = stopMapFunc.begin();
                while(startMapFuncIt != startMapFunc.end()) {
                    auto startMapLoopId = startMapFuncIt->second; // the loop index map
                    auto stopMapLoopId = stopMapFuncIt->second;
                    if(startMapLoopId.size() == stopMapLoopId.size()) {
                        auto startMapLoopIdIt = startMapLoopId.begin(); // the loop index map iterators
                        auto stopMapLoopIdIt = stopMapLoopId.begin();
                        while(startMapLoopIdIt != startMapLoopId.end()) {
                            auto startVector = startMapLoopIdIt->second; // the actual innermost vector map
                            auto stopVector = stopMapLoopIdIt->second;
                            if(startVector.size() == stopVector.size()) {
                                auto startVecIt = startVector.begin(); // the innermost vector iterator
                                auto stopVecIt = stopVector.begin();
                                while(startVecIt != startVector.end()) {
                                    *stopVecIt = *stopVecIt - *startVecIt; // the actual reduction
                                    startVecIt++;
                                    stopVecIt++;
                                }
                            }
                            startMapLoopIdIt++;
                        }
                    }
                }
            }
        }
    }
}*/

#endif // ICAPTURE

