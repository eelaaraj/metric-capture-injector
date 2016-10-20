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

/* This class ICapture was supposed to be purely an interface.
 * But because virtual functions cant be virtual, I had to implement captureVariables
 * in the top most parent rather than ACapture.
 */
template<typename T, typename ...Vars>
class ICapture {
public:
    //virtual ICapture* create() = 0;
    //virtual ~ICapture() {}
    //virtual ICapture* instance() = 0;
    virtual void start(CaptureMessage* message) = 0;
    virtual void stop(CaptureMessage* message) = 0;
    virtual void captureVar(CaptureMessage*, std::vector<std::string> varNames, std::vector<std::string> varValues) = 0;
    //template<Vars... vars>
    //virtual void captureVariables(CaptureMessage* message) = 0;
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
    //virtual ICapture* create() = 0;
    //virtual ~ICapture() {}
    //virtual ICapture* instance() = 0;
    virtual void start(CaptureMessage* message) = 0;
    virtual void stop(CaptureMessage* message) = 0;
    virtual void captureVar(CaptureMessage*, std::vector<std::string> varNames, std::vector<std::string> varValues);
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
class CaptureStringSerializer : public CaptureSerializer<T> {
public:
    CaptureStringSerializer(ICapture<T>* captureDevice) : CaptureSerializer<T>(captureDevice) {}
    virtual void serialize();
    //virtual void serialize(const std::string& filepath);
};

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

#endif // ICAPTURE

