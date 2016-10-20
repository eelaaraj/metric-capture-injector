#ifndef CAPTUREFACTORY_H
#define CAPTUREFACTORY_H
#include <iostream>
#include "icapture.h"

enum CaptureType { timer, energy, power, };
template <typename T>
class CaptureFactory
{
public:
    CaptureFactory() = delete;
    //static std::shared_ptr<ICapture> create(CaptureType type);
    ICapture<T>* create(CaptureType type);
};


#endif // CAPTUREFACTORY_H
