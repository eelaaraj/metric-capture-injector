#ifndef CAPTUREFACTORY_H
#define CAPTUREFACTORY_H
#include <iostream>
#include "icapture.h"
#include "timercapture.h"
#include "energycapture.h"

enum CaptureType { timer, energy, power, };
template <typename T>
class CaptureFactory
{
public:
    CaptureFactory() = delete;
    //static std::shared_ptr<ICapture> create(CaptureType type);
    ICapture<T>* create(CaptureType type);
    void destroy(ICapture<T>* capturer);
};

//static std::shared_ptr<ICapture> create(CaptureType captureType) {
template<typename T>
static ICapture<T>* create(CaptureType captureType) {
    if(captureType == CaptureType::timer) {
        //return std::shared_ptr<TimerCapture<std::chrono::time_point<std::chrono::system_clock>>>(new TimerCapture<std::chrono::time_point<std::chrono::system_clock>>());
        //return std::shared_ptr<TimerCapture<double>>(new TimerCapture<double>());
        return TimerCapture<T, CaptureType::timer>::instance();
    }
    else if(captureType == CaptureType::energy) {
        //return std::shared_ptr<EnergyCapture<double>>(new EnergyCapture<double>());
        return EnergyCapture<T, CaptureType::energy>::instance();
    }
    else {
        std::cout << "Change the return to new XXXCapture()" << std::endl;
        return nullptr;
    }
}

template<typename T>
static void destroy(ICapture<T>* capturer) {
//    if(captureType == CaptureType::timer) {
//        TimerCapture<T, CaptureType::timer>::revokeInstance();
//    }
//    else if(captureType == CaptureType::energy) {
//        EnergyCapture<T, CaptureType::energy>::revokeInstance();
//    }
//    else {
//        std::cout << "Change the return to new XXXCapture()" << std::endl;
//    }
    if(dynamic_cast<TimerCapture<T, CaptureType::timer>*>(capturer)) {
        TimerCapture<T, CaptureType::timer>::revokeInstance();
    }
    else if(dynamic_cast<EnergyCapture<T, CaptureType::energy>*>(capturer)) {
        EnergyCapture<T, CaptureType::energy>::revokeInstance();
    }
    else {
        std::cout << "Change the return to new XXXCapture()" << std::endl;
    }
    capturer = 0;
}

#endif // CAPTUREFACTORY_H
