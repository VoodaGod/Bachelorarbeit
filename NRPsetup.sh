mkdir -p $HOME/.local
echo "#NRP stuff" >> $HOME/.bashrc
echo "export HBP=$HOME/NRP" >> $HOME/.bashrc
#echo "export NRP_INSTALL_MODE=user" >> $HOME/.bashrc
source $HOME/.bashrc
sudo apt-get -y install cmake git build-essential doxygen python-dev python-h5py python-lxml autogen automake libtool build-essential autoconf libltdl7-dev libreadline6-dev libncurses5-dev libgsl0-dev python-all-dev python-numpy python-scipy python-matplotlib ipython ipython-notebook libxslt1-dev zlib1g-dev python-opencv ruby libtar-dev libprotoc-dev protobuf-compiler imagemagick libtinyxml2-dev git python-virtualenv libffi-dev uwsgi-plugin-python python-pip git
mkdir -p $HBP
cd $HBP
git clone https://bitbucket.org/hbpneurorobotics/user-scripts.git --branch=master
cd $HBP/user-scripts
./clone-all-repos
echo ". $HBP/user-scripts/nrp_variables" >> $HOME/.bashrc
echo ". $HBP/user-scripts/nrp_aliases" >> $HOME/.bashrc
source $HOME/.bashrc

sudo wget -O - https://raw.githubusercontent.com/ros/rosdistro/master/ros.key | sudo apt-key add -
sudo apt-add-repository "deb http://packages.ros.org/ros/ubuntu xenial main"
sudo apt-get update
sudo apt-get -y install ros-kinetic-desktop-full
sudo apt-get -y install ros-kinetic-web-video-server
sudo apt-get -y install ros-kinetic-control-toolbox ros-kinetic-controller-manager ros-kinetic-transmission-interface ros-kinetic-joint-limits-interface ros-kinetic-rosauth ros-kinetic-smach-ros python-rospkg

sudo apt-get -y remove --purge gazebo6* ros-kinetic-gazebo6-msgs ros-kinetic-gazebo6-plugins ros-kinetic-gazebo6-ros ros-kinetic-gazebo6-ros-control ros-kinetic-gazebo6-ros-pkgs
sudo wget -O - http://packages.osrfoundation.org/gazebo.key | sudo apt-key add -
sudo apt-add-repository "deb http://packages.osrfoundation.org/gazebo/ubuntu xenial main"
sudo apt-get update
sudo apt-get -y install libignition-math2-dev libignition-transport-dev libignition-transport0-dev
sudo apt-get -y install libsimbody-dev libgts-dev libgdal-dev ruby-ronn xsltproc graphviz-dev

sudo apt-get -y remove --purge python-pynn
sudo apt-get -y install libgsl0-dev
sudo apt-get -y install bison byacc

sudo apt-get -y install libgts-dev libjansson-dev
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash
source $HOME/.bashrc
nvm install 0.10
nvm install 8
nvm alias default 8
npm install -g bower

cd $HBP/user-scripts
./configure_nrp 2>/dev/null 
sudo apt-get -y install python-pip python-virtualenv
sudo pip uninstall swagger flask-swagger flask-restful-swagger
sudo apt-get -y install libblas-dev liblapack-dev libhdf5-dev gfortran

sudo apt-get -y install nginx-extras lua-cjson

cd $HBP
cd ExDFrontend
sudo apt-get -y install ruby-compass
sudo gem install compass
npm install -g grunt-cli
npm install -g grunt

echo "continue at Step 9"
