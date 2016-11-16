#include <stdio.h>
#include <string>
#include <ctime>
#include <iostream>
#include <iomanip>
#include <chrono>
#include <algorithm>

#include "capturefactory.h"
#include "messagefactory.h"

//template<> ACapture<long double,CaptureType::energy>* ACapture<long double, CaptureType::energy>::singletonInstance = 0;
//template<> ACapture<long double,CaptureType::timer>* ACapture<long double, CaptureType::timer>::singletonInstance = 0;

template<> ACapture< double,CaptureType::energy>* ACapture<double, CaptureType::energy>::singletonInstance = 0;
template<> ACapture< double,CaptureType::timer>* ACapture<double, CaptureType::timer>::singletonInstance = 0;

std::string stringTime;
//template<typename T> ICapture<T>* capturer;
//std::vector<std::shared_ptr<CaptureMessage>> mesgs;
class IWrapper {
public:
    virtual ~IWrapper() {}
    virtual void captureVar(int loopId, std::string name, int value) = 0;
    virtual void captureVar(int loopId, std::string name, std::string value) = 0;
    virtual void captureVar(int loopId, std::string name, bool value) = 0;
    virtual void captureVar(int loopId, std::string name, float value) = 0;
    virtual void captureVar(int loopId, std::string name, double value) = 0;
    virtual void captureVar(int loopId, std::string name, long value) = 0;
    virtual void captureVar(int loopId, std::string name, long long value) = 0;
    virtual void updateIndex(int previousLoop, int nextLoop, std::vector<std::string> previousVars, std::vector<std::string> nextVars) = 0;
    virtual void start(int loopId) = 0;
    virtual void stop(int loopId) = 0;
    virtual void reduce() = 0;
};

template <typename T>
class CaptureWrapper: public IWrapper {
public:
    CaptureWrapper(int coiId, int runId, const std::string& fileName, const std::string& functionName, int loopCount, CaptureType captureType);
    virtual ~CaptureWrapper();
    virtual void captureVar(int loopId, std::string name, int value);
    virtual void captureVar(int loopId, std::string name, std::string value);
    virtual void captureVar(int loopId, std::string name, bool value);
    virtual void captureVar(int loopId, std::string name, float value);
    virtual void captureVar(int loopId, std::string name, double value);
    virtual void captureVar(int loopId, std::string name, long value);
    virtual void captureVar(int loopId, std::string name, long long value);
    virtual void updateIndex(int previousLoop, int nextLoop, std::vector<std::string> previousVars, std::vector<std::string> nextVars);
    virtual void start(int loopId);
    virtual void stop(int loopId);
    virtual void reduce();
private:
    int cId; // COI/Benchmark Id
    int rId; // run id
    std::string file;
    std::string func;
    ICapture<T>* capturer;
    std::vector<std::shared_ptr<CaptureMessage>> mesgs;
    std::time_t now;
};

template<typename T>
CaptureWrapper<T>::CaptureWrapper(int coiId, int runId, const std::string& fileName, const std::string& functionName, int loopCount, CaptureType captureType)
    : cId(coiId), rId(runId), file(fileName), func(functionName), capturer(create<T>(captureType)),
      mesgs(createInstances(loopCount, std::this_thread::get_id(), fileName, functionName)),
      now(std::chrono::system_clock::to_time_t(std::chrono::system_clock::now())) {
    capturer->coiId() = coiId;
    capturer->runId() = runId; // ICapture will pass runId to the CaptureDB to be stored there. ICapture does not need runId for now
}

template<typename T>
CaptureWrapper<T>::~CaptureWrapper() {
    destroy<T>(capturer);
}

template<typename T>
void CaptureWrapper<T>::captureVar(int loopId, std::string name, int value) {
    capturer->captureVar(mesgs[loopId].get(), name, value);
}
template<typename T>
void CaptureWrapper<T>::captureVar(int loopId, std::string name, std::string value) {
    capturer->captureVar(mesgs[loopId].get(), name, value);
}
template<typename T>
void CaptureWrapper<T>::captureVar(int loopId, std::string name, bool value) {
    capturer->captureVar(mesgs[loopId].get(), name, value);
}
template<typename T>
void CaptureWrapper<T>::captureVar(int loopId, std::string name, float value) {
    capturer->captureVar(mesgs[loopId].get(), name, value);
}
template<typename T>
void CaptureWrapper<T>::captureVar(int loopId, std::string name, double value) {
    capturer->captureVar(mesgs[loopId].get(), name, value);
}
template<typename T>
void CaptureWrapper<T>::captureVar(int loopId, std::string name, long value) {
    capturer->captureVar(mesgs[loopId].get(), name, value);
}
template<typename T>
void CaptureWrapper<T>::captureVar(int loopId, std::string name, long long value) {
    capturer->captureVar(mesgs[loopId].get(), name, value);
}

template<typename T>
void CaptureWrapper<T>::reduce() {
    capturer->reduce();
}

template<typename T>
void CaptureWrapper<T>::updateIndex(int previousLoop, int nextLoop, std::vector<std::string> previousVars, std::vector<std::string> nextVars) {

}

template<typename T>
void CaptureWrapper<T>::start(int loopId) {
    capturer->start(mesgs[loopId].get());
}

template<typename T>
void CaptureWrapper<T>::stop(int loopId) {
    capturer->stop(mesgs[loopId].get());
}

// This function setups the capture mechanics. It is passed an ID that identifies the COI/Benchmark that we are capturing metrics
// for. Because we might run the instrumented executable multiple times, we will generate a unique Id that identifies the run.
// This will be passed into the captureWrapper object and to the captureDB eventually to be stored with the metrics.
template <typename T>
IWrapper* _metric_capture_setup_(int coiId, std::string fileName, std::string functionName, int loopCount, CaptureType captureType) {
/*  ICapture<T>* capturer = create<T>(captureType);
    std::vector<std::shared_ptr<CaptureMessage>> mesgs = createInstances(7, std::this_thread::get_id(), fileName, functionName);
    std::time_t now = std::chrono::system_clock::to_time_t(std::chrono::system_clock::now());
    stringTime = std::ctime(&now);
    std::replace(stringTime.begin(), stringTime.end(), ' ', '-');
    std::cout << "Instrumented function " << functionName << " in " << fileName << " successfully at "<< stringTime << std::endl;
*/
    std::srand(std::time(0));
    int uniqueRunID = rand();
    IWrapper* wrapper = new CaptureWrapper<T>(coiId, uniqueRunID, fileName, functionName, loopCount, captureType);
    return wrapper;
}

/*
template <typename T>
void* _metric_capture_cleanup_(IWrapper* capturer) {
    // Do something like reduce maybe and then delete capturer.
    delete capturer;
}
*/

extern "C" {

IWrapper* _metric_capture_long_double_setup_(int coiId, const std::string& fileName, const std::string& functionName, int loopCount, CaptureType captureType) {
    //return _metric_capture_setup_<long double>(runId, fileName, functionName, loopCount, captureType);
    return _metric_capture_setup_<double>(coiId, fileName, functionName, loopCount, captureType);
}

IWrapper* _metric_capture_long_double_timer_setup_(const std::string& fileName, const std::string& functionName, int loopCount, int coiId) {
    return _metric_capture_long_double_setup_(coiId, fileName, functionName, loopCount, CaptureType::timer);
}

void _metric_capture_start_(IWrapper* capturer, int loopId) {
    //std::cout << "Called capture start " << loopId << std::endl;
    capturer->start(loopId);
}

void _metric_capture_stop_(IWrapper* capturer, int loopId) {
    //std::cout << "Called capture stop " << loopId << std::endl;
    capturer->stop(loopId);
}

void _var_capture_int_(IWrapper* capturer, int loopId, std::string name, int value) {
    capturer->captureVar(loopId, name, value);
}

void _var_capture_string_(IWrapper* capturer, int loopId, std::string name, std::string value) {
    capturer->captureVar(loopId, name, value);
}

void _var_capture_bool_(IWrapper* capturer, int loopId, std::string name, bool value) {
    capturer->captureVar(loopId, name, value);
}

void _var_capture_long_(IWrapper* capturer, int loopId, std::string name, long value) {
    capturer->captureVar(loopId, name, value);
}

void _var_capture_float_(IWrapper* capturer, int loopId, std::string name, float value) {
    capturer->captureVar(loopId, name, value);
}

void _var_capture_double_(IWrapper* capturer, int loopId, std::string name, double value) {
    capturer->captureVar(loopId, name, value);
}

void _var_capture_long_long_(IWrapper* capturer, int loopId, std::string name, long long value) {
    capturer->captureVar(loopId, name, value);
}

IWrapper* _metric_capture_long_double_energy_setup_(const std::string& fileName, const std::string& functionName, int loopCount, int coiId) {
    return _metric_capture_long_double_setup_(coiId, fileName, functionName, loopCount, CaptureType::energy);
}

void _metric_capture_cleanup_(IWrapper* capturer) {
    // Do something like reduce maybe and then delete capturer.
    capturer->reduce();
    delete capturer;
}

void _enunciate_(const std::string& text) {
    std::cout << text << std::endl;
}

void logop(int i) {
    printf("computed: %i\n", i);
}

void logss(const char* s) {
    std::cout << "s=" << s << std::endl;
}

int retDouble(int i) {
    return i*2;
}

const char* getTime() {
    std::time_t now = std::chrono::system_clock::to_time_t(std::chrono::system_clock::now());
    std::string stringTime = std::ctime(&now);
    std::replace(stringTime.begin(), stringTime.end(), ' ', '-');
    return stringTime.c_str();
}

}

//int main() { }
