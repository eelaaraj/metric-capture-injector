#ifndef MESSAGEFACTORY
#define MESSAGEFACTORY

#include <iostream>
#include <thread>
#include "icapture.h"

class MessageFactory
{
public:
    MessageFactory() = delete;
    static std::vector<std::shared_ptr<CaptureMessage>> createInstances(int instances, std::thread::id threadId, std::string translationUnit, std::string functionName);
};

static std::vector<std::shared_ptr<CaptureMessage>> createInstances(int instances, std::thread::id threadId, std::string translationUnit, std::string functionName) {
    std::vector<std::shared_ptr<CaptureMessage>> temp;
    for(int i=0; i < instances; i++) {
        temp.push_back(std::shared_ptr<CaptureMessage>(new CaptureMessage(threadId, translationUnit, functionName, i)));
    }
    return temp;
}


#endif // MESSAGEFACTORY

