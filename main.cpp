#include <iostream>
#include <ctime>
#include <thread>
#include <vector>
#include <tuple>
#include <iomanip> // needed for put_time

using namespace std;
/*
class IWrapper {
public:
    virtual ~IWrapper() {}
    virtual void captureVar(int loopId)=0;
    virtual void updateIndex(int previousLoop, int nextLoop, std::vector<std::string> previousVars, std::vector<std::string> nextVars) = 0;
    virtual void start(int loopId) = 0;
    virtual void stop(int loopId) = 0;
};*/

void doesNothingButSleep() {
    std::this_thread::sleep_for(std::chrono::seconds(1));
}

//enum CaptureType { timer, energy, power, };
/*IWrapper* _metric_capture_long_double_timer_setup_(std::string fileName, std::string functionName, int loopCount);
void _metric_capture_start_(IWrapper* capturer, int loopId);
void _metric_capture_stop_(IWrapper* capturer, int loopId);*/

void testFunction(int d, double* S, double* D) {//, std::string funcName) {
    /*std::string funcName= "abcdefghijklmnopkrstuvwxyz";
    _metric_capture_long_double_timer_setup_(funcName, funcName, 5);
    _metric_capture_start_(nullptr, 0);
    _metric_capture_stop_(nullptr, 0);*/
    for(int k=0;k<d;++k){
	//double xyz =0.;
//start 1
        for(int i=k;i<d;++i){
            double sum=0.;
//start 2
            for(int p=0;p<k;++p){
                sum+=D[i*d+p]*D[p*d+k];
            }
//stop 2
            D[i*d+k]=S[i*d+k]-sum; // not dividing by diagonals
        }
//stop 1
	//xyz += d*S[k];
//start 3
        for(int j=k+1;j<d;++j){
            double sum=0.;
//start 4
            for(int p=0;p<k;++p){
                sum+=D[k*d+p]*D[p*d+j];
            }
//stop 4
            D[k*d+j]=(S[k*d+j]-sum)/D[k*d+k];
        }
//stop 3
        //xyz+= D[k]*2*d;
    }
    //double abc = S[0]*D[2*d];
}

int main(int argc, char* args[])
{
    int matrixSize = std::stoi(args[1]);
    double* S = new double[matrixSize*matrixSize];
    double* D = new double[matrixSize*matrixSize];
    std::string inp = "abcdefg";
    testFunction(matrixSize, S, D);//, inp);
    std::thread t1(doesNothingButSleep);
    std::thread t2(doesNothingButSleep);
    t1.join();
    t2.join();
    delete[] S;
    delete[] D;

    return 0;
}

