#!/bin/bash

#Installing JDK 8
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
sudo apt-get install -y oracle-java8-installer

#Installing Aspectj Compiler
sudo apt-get install -y aspectj

#Installing Git and cloning ICSE0-2012-javamop repository
mkdir /home/vagrant/Documents/javamopGit
sudo apt-get install -y git
git clone https://github.com/SoftwareEngineeringToolDemos/ICSE-2012-javamop.git /home/vagrant/Documents/javamopGit

#Changing ownership permissions and read/write capabilities of vm-prerequisites folder
sudo chown -R vagrant:vagrant "/home/vagrant/Documents/javamopGit/vm-prerequisites"
sudo chmod -R a+rwx "/home/vagrant/Documents/javamopGit/vm-prerequisites"

#Copying files to Desktop
cp /home/vagrant/Documents/javamopGit/vm-prerequisites/Installation.txt /home/vagrant/Desktop
cp /home/vagrant/Documents/javamopGit/vm-prerequisites/License.txt /home/vagrant/Desktop
cp /home/vagrant/Documents/javamopGit/vm-prerequisites/Readme.txt /home/vagrant/Desktop
cp /home/vagrant/Documents/javamopGit/vm-prerequisites/javaMOPDemoVideo.html /home/vagrant/Desktop
cp /home/vagrant/Documents/javamopGit/vm-prerequisites/DemoVideoWebpage.html /home/vagrant/Desktop
cp /home/vagrant/Documents/javamopGit/vm-prerequisites/JavaMOPAgent.jar /home/vagrant/Documents/javamop1/javamop/examples/agent/many
mv /home/vagrant/Documents/javamopGit/vm-prerequisites/installRVMonitor.sh /home/vagrant/Documents
#rm -rf "/home/vagrant/Documents/javamopGit"

#Downloading the tool zip folder from Official Project Website
mkdir /home/vagrant/Documents/javamop1
wget --directory-prefix="/home/vagrant/Desktop" http://fsl.cs.uiuc.edu/Download.php?filename=javamop-4.2.zip 
unzip "/home/vagrant/Desktop/Download.php?filename=javamop-4.2.zip" -d /home/vagrant/Documents/javamop1
rm -rf "/home/vagrant/Desktop/Download.php?filename=javamop-4.2.zip" 

#Setting PATH and CLASSPATH environment variables
echo "export PATH=$PATH:/home/vagrant/RV-Monitor/bin:/home/vagrant/Documents/javamop1/javamop/bin/" >> ~/.bashrc
echo "export CLASSPATH=/home/vagrant/RV-Monitor/lib/rv-monitor.jar:/home/vagrant/RV-Monitor/lib/rv-monitor-rt.jar:/home/vagrant/RV-Monitor/lib/aspectjweaver.jar:." >> ~/.bashrc
source ~/.bashrc
export PATH=$PATH:/home/vagrant/RV-Monitor/bin:/home/vagrant/Documents/javamop1/javamop/bin/
export CLASSPATH=/home/vagrant/RV-Monitor/lib/rv-monitor.jar:/home/vagrant/RV-Monitor/lib/rv-monitor-rt.jar:/home/vagrant/RV-Monitor/lib/aspectjweaver.jar:.

#Changing read/write permission for Tool folder
sudo chown -R vagrant:vagrant "/home/vagrant/Documents/javamop1"
sudo chmod -R a+rwx "/home/vagrant/Documents/javamop1"
cp /home/vagrant/Documents/javamopGit/vm-prerequisites/JavaMOPAgent.jar /home/vagrant/Documents/javamop1/javamop/examples/agent/many
echo "javamop" >> ~/.bashrc

#Autostart terminal on VM boot up
mkdir -p /home/vagrant/.config/autostart/
echo '[Desktop Entry]
Type=Application
Name=Terminal
Comment=Terminal
Icon=utilities-terminal
Exec=gnome-terminal
Terminal=false
Categories=Application;
' >> /home/vagrant/.config/autostart/Terminal.desktop

#Rebooting VM
sudo reboot
