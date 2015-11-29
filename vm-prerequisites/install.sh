#!/bin/bash

# Remove unused icons from sidebar
sudo rm -f "/usr/share/applications/ubuntu-amazon-default.desktop"
sudo rm -f "/usr/share/applications/libreoffice-calc.desktop"
sudo rm -f "/usr/share/applications/libreoffice-writer.desktop"
sudo rm -f "/usr/share/applications/libreoffice-impress.desktop"
sudo rm -f "/usr/share/applications/ubuntu-software-center.desktop"

#Installing Java 8
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
sudo apt-get install -y oracle-java8-installer

#Installing Aspectj Compiler
sudo apt-get install -y aspectj
mkdir /home/vagrant/Documents/javamopGit

#Installing Git and cloning ICSE-2012-javamop Git respository
sudo apt-get install -y git
git clone https://github.com/SoftwareEngineeringToolDemos/ICSE-2012-javamop.git /home/vagrant/Documents/javamopGit

#Adding files to Desktop of the VM
sudo chown -R vagrant:vagrant "/home/vagrant/Documents/javamopGit/vm-prerequisites"
sudo chmod -R a+rwx "/home/vagrant/Documents/javamopGit/vm-prerequisites"
cp /home/vagrant/Documents/javamopGit/vm-prerequisites/Installation.txt /home/vagrant/Desktop
cp /home/vagrant/Documents/javamopGit/vm-prerequisites/License.txt /home/vagrant/Desktop
cp /home/vagrant/Documents/javamopGit/vm-prerequisites/Readme.txt /home/vagrant/Desktop
cp /home/vagrant/Documents/javamopGit/vm-prerequisites/javaMOPDemoVideo.html /home/vagrant/Desktop
cp /home/vagrant/Documents/javamopGit/vm-prerequisites/JavaMOPAgent.jar /home/vagrant/Documents/javamop1/javamop/examples/agent/many
cp /home/vagrant/Documents/javamopGit/vm-prerequisites/aspectjweaver.jar /home/vagrant/Documents
mv /home/vagrant/Documents/javamopGit/vm-prerequisites/installRVMonitor.sh /home/vagrant/Documents

#Downloading javaMOP files from official project website
mkdir /home/vagrant/Documents/javamop1
mkdir /home/vagrant/Desktop/javaMOP
wget --directory-prefix="/home/vagrant/Desktop" http://fsl.cs.uiuc.edu/Download.php?filename=javamop-4.2.zip 
unzip "/home/vagrant/Desktop/Download.php?filename=javamop-4.2.zip" -d /home/vagrant/Documents/javamop1
cp -a /home/vagrant/Documents/javamop1/. /home/vagrant/Desktop/javaMOP 
rm -rf "/home/vagrant/Desktop/Download.php?filename=javamop-4.2.zip" 

#Setting PATH and CLASSPATH environment variables
echo "export PATH=$PATH:/home/vagrant/RV-Monitor/bin:/home/vagrant/Documents/javamop1/javamop/bin/" >> ~/.bashrc
echo "export CLASSPATH=/home/vagrant/RV-Monitor/lib/rv-monitor.jar:/home/vagrant/RV-Monitor/lib/rv-monitor-rt.jar:/home/vagrant/RV-Monitor/lib/aspectjweaver.jar:." >> ~/.bashrc
source ~/.bashrc
export PATH=$PATH:/home/vagrant/RV-Monitor/bin:/home/vagrant/Documents/javamop1/javamop/bin/
export CLASSPATH=/home/vagrant/RV-Monitor/lib/rv-monitor.jar:/home/vagrant/RV-Monitor/lib/rv-monitor-rt.jar:/home/vagrant/RV-Monitor/lib/aspectjweaver.jar:.
sudo chown -R vagrant:vagrant "/home/vagrant/Documents/javamop1"
sudo chmod -R a+rwx "/home/vagrant/Documents/javamop1"
sudo chown -R vagrant:vagrant "/home/vagrant/Documents/javamopGit/vm-prerequisites"
sudo chmod -R a+rwx "/home/vagrant/Documents/javamopGit/vm-prerequisites"
cp /home/vagrant/Documents/javamopGit/vm-prerequisites/JavaMOPAgent.jar /home/vagrant/Documents/javamop1/javamop/examples/agent/many
rm -rf "/home/vagrant/Documents/javamopGit"

#Autostarting gnome-terminal on vm start up
echo "javamop" >> ~/.bashrc
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

#Rebooting VM for all the changes to take effect
sudo reboot
