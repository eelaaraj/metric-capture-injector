#ifndef TIMERCAPTURE_H
#define TIMERCAPTURE_H
#include "icapture.h"
#include <iostream>

template<typename T, int DeviceType>
class TimerCapture: public ACapture<T,DeviceType>
{
public:
    void start(CaptureMessage* message);
    void stop(CaptureMessage* message);
    //static ICapture* instance();
    static ICapture<T>* instance() {
        if(!ACapture<T,DeviceType>::singletonInstance) {
            ACapture<T,DeviceType>::singletonInstance = new TimerCapture<T,DeviceType>();
        }
        return ACapture<T,DeviceType>::singletonInstance;
    }

    static void revokeInstance() {
        if(ACapture<T,DeviceType>::singletonInstance) {
            delete ACapture<T,DeviceType>::singletonInstance;
            ACapture<T,DeviceType>::singletonInstance = 0;
        }
    }

protected:
    TimerCapture() {} // protected so that we don not allow other classes to create instances of this class. The only way this can be done is through the singleton function instance()
    ~TimerCapture() {}
};

template <typename T, int DeviceType>
void TimerCapture<T,DeviceType>::start(CaptureMessage* message) {
    //std::cout << "Starting time capture" << std::endl;
    //std::cout << *message << std::endl;
    std::chrono::time_point<std::chrono::system_clock> start = std::chrono::system_clock::now();
    //std::cout << "star: " << start.time_since_epoch().count() << std::endl;
    //this->unitInnerMetricStart[message->threadId()][message->functionName()][message->capturedUnitId()].push_back(start.time_since_epoch().count());
    this->db.insertStartMetric(message, start.time_since_epoch().count());
}

template <typename T, int DeviceType>
void TimerCapture<T,DeviceType>::stop(CaptureMessage* message) {
    //std::cout << "Stopped time capture" << std::endl;
    //std::cout << *message << std::endl;
    std::chrono::time_point<std::chrono::system_clock> end = std::chrono::system_clock::now();
    //std::cout << "stop: " << end.time_since_epoch().count() << std::endl;
    //this->unitInnerMetricStop[message->threadId()][message->functionName()][message->capturedUnitId()].push_back(end.time_since_epoch().count());
    this->db.insertStopMetric(message, end.time_since_epoch().count());
}

#endif // TIMERCAPTURE_H
