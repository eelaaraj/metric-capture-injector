#ifndef CAPTUREDB
#define CAPTUREDB

#include <map>
#include <vector>
#include <iostream>
#include <thread>

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

    // By qualifying the function as friend and defining it in the header file, the compiler knows that
    // when ICapture.h is included, only one copy of this will be loaded rather than n copies corresponding to
    // n includes
    friend std::ostream& operator<<(std::ostream& out, const CaptureMessage& message);

private:
    std::thread::id _threadId;
    std::string _translationUnit;
    std::string _functionName;
    int _capturedUnitId;
};

template<typename T>
class CaptureDB {
public:
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
private:
    std::map<std::thread::id, std::map<std::string, std::map<int, std::vector<T>>>> unitInnerMetricStart;
    std::map<std::thread::id, std::map<std::string, std::map<int, std::vector<T>>>> unitInnerMetricStop;
    std::map<std::thread::id, std::map<std::string, std::map<int, std::vector<T>>>> minAvgMax;
    std::map<std::thread::id, std::map<std::string, std::map<int, std::map<std::string, std::vector<std::string>>>>> variableCaptures;
    std::map<std::thread::id, std::map<std::string, std::map<int, std::map<std::string, std::vector<std::tuple<int, std::string, int, int>>>>>> variableDBIndex;
};

#endif // CAPTUREDB

