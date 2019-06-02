namespace Hamamatsu
{
class Camera /NoDefaultCtors/
{
%TypeHeaderCode
#include "HamamatsuCamera.h"
%End

  public:
    Camera(const std::string& config_path,int camera_number=0);
    ~Camera();

    HwBufferCtrlObj* getBufferCtrlObj();

    void startAcq();
    void stopAcq();

    void setNbFrames(int nb_frames);
    void getNbFrames(int& nb_frames /Out/);

    void setExpTime(double exp_time);
    void getExpTime(double& exp_time /Out/);

    void setLatTime(double  lat_time);
    void getLatTime(double& lat_time /Out/);

    void setBin(const Bin& bin);
    void getBin(Bin& bin /Out/);
    void checkBin(Bin& bin /In,Out/);

    void reset();

  private:
    Camera(const Hamamatsu::Camera&);
}; 
};
