#ifndef ENERGYCAPTURE_H
#define ENERGYCAPTURE_H
#include "icapture.h"

template<typename T, int DeviceType>
class EnergyCapture: public ACapture<T,DeviceType>
{
public:
    void start(CaptureMessage* message);
    void stop(CaptureMessage* message);
    //static ICapture* instance();
    static ICapture<T>* instance() {
        if(!ACapture<T,DeviceType>::singletonInstance)
            ACapture<T,DeviceType>::singletonInstance = new EnergyCapture<T,DeviceType>();
        return ACapture<T,DeviceType>::singletonInstance;
    }

    static void revokeInstance() {
        if(ACapture<T,DeviceType>::singletonInstance) {
            delete ACapture<T,DeviceType>::singletonInstance;
            ACapture<T,DeviceType>::singletonInstance = 0;
        }
    }

protected:
    EnergyCapture() {} // we only want to create instances using the static singlton function
    ~EnergyCapture() {}
};


template<typename T, int DeviceType>
void EnergyCapture<T,DeviceType>::start(CaptureMessage* message) {
    //std::cout << "Starting energy capture" << std::endl;
    //std::cout << *message << std::endl;
    //this->unitInnerMetricStart[message->threadId()][message->functionName()][message->capturedUnitId()].push_back(rand());
    this->db.insertStartMetric(message, rand());
}

template<typename T, int DeviceType>
void EnergyCapture<T, DeviceType>::stop(CaptureMessage* message) {
    //std::cout << "Stopped energy capture" << std::endl;
    //std::cout << *message << std::endl;
    //this->unitInnerMetricStop[message->threadId()][message->functionName()][message->capturedUnitId()].push_back(rand());
    this->db.insertStopMetric(message, rand());
}

#endif // ENERGYCAPTURE_H
