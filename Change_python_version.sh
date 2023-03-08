#Curl new python version 
sudo apt update
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev curl libbz2-dev -y 
curl -O https://www.python.org/ftp/python/3.8.2/Python-3.8.2.tar.xz
tar -xf Python-3.8.2.tar.xz
cd Python-3.8.2
./configure --enable-optimizations && sudo make -j4 && sudo make altinstall

#Change the default python version to the python3.8 version by change the alias in the  ~/.bashrc 
sudon nano ~/.bashrc # Change the bashrc python version in the nano 
# Add the following command on the top of the code 
alias python='/usr/bin/python3.8'
source ~/.bashrc 
#Remove the python3.10.4 directory 
sudo rm -rf /usr/local/lib/python3.10  # Completely remove python3.10 out from the installation 
#Remove the python3-pip 
sudo apt-get autoremove python3-pip -y 
#Reinstall new python3.8 pip into the library 
sudo apt install python3.8-distutils
wget https://bootstrap.pypa.io/get-pip.py
sudo python3.8 get-pip.py
#if found the problem of pip and no space left on the device then using the below solution 
#https://stackoverflow.com/questions/55103162/could-not-install-packages-due-to-an-environmenterror-errno-28-no-space-left
sudo systemctl mask tmp.mount
export TMPDIR='/var/tmp'
#Now all python3.8 setup test install by pip3 

