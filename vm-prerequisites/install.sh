#!/bin/bash
echo "in the script#########################"
sudo apt-get install -y flashplugin-installer
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
sudo apt-get install -y oracle-java8-installer
sudo apt-get install -y aspectj
mkdir /home/vagrant/Documents/javamopGit
sudo apt-get install -y git
git clone https://github.com/SoftwareEngineeringToolDemos/ICSE-2012-javamop.git /home/vagrant/Documents/javamopGit
sudo chown -R vagrant:vagrant "/home/vagrant/Documents/javamopGit/vm-prerequisites"
sudo chmod -R a+rwx "/home/vagrant/Documents/javamopGit/vm-prerequisites"
cp /home/vagrant/Documents/javamopGit/vm-prerequisites/Installation.txt /home/vagrant/Desktop
cp /home/vagrant/Documents/javamopGit/vm-prerequisites/License.txt /home/vagrant/Desktop
cp /home/vagrant/Documents/javamopGit/vm-prerequisites/Readme.txt /home/vagrant/Desktop
cp /home/vagrant/Documents/javamopGit/vm-prerequisites/javaMOPDemoVideo.html /home/vagrant/Desktop
cp /home/vagrant/Documents/javamopGit/vm-prerequisites/DemoVideoWebpage.html /home/vagrant/Desktop
cp /home/vagrant/Documents/javamopGit/vm-prerequisites/JavaMOPAgent.jar /home/vagrant/Documents/javamop1/javamop/examples/agent/many
mv /home/vagrant/Documents/javamopGit/vm-prerequisites/installRVMonitor.sh /home/vagrant/Documents
#rm -rf "/home/vagrant/Documents/javamopGit"
mkdir /home/vagrant/Documents/javamop1
wget --directory-prefix="/home/vagrant/Desktop" http://fsl.cs.uiuc.edu/Download.php?filename=javamop-4.2.zip 
unzip "/home/vagrant/Desktop/Download.php?filename=javamop-4.2.zip" -d /home/vagrant/Documents/javamop1
rm -rf "/home/vagrant/Desktop/Download.php?filename=javamop-4.2.zip" 
echo "export PATH=$PATH:/home/vagrant/RV-Monitor/bin:/home/vagrant/Documents/javamop1/javamop/bin/" >> ~/.bashrc
echo "CLASSPATH=/home/vagrant/RV-Monitor/lib/rv-monitor.jar:/home/vagrant/RV-Monitor/lib/rv-monitor-rt.jar:/home/vagrant/RV-Monitor/lib/aspectjweaver.jar:." >> ~/.bashrc
source ~/.bashrc
export PATH=$PATH:/home/vagrant/RV-Monitor/bin:/home/vagrant/Documents/javamop1/javamop/bin/
export CLASSPATH=/home/vagrant/RV-Monitor/lib/rv-monitor.jar:/home/vagrant/RV-Monitor/lib/rv-monitor-rt.jar:/home/vagrant/RV-Monitor/lib/aspectjweaver.jar:.
sudo chown -R vagrant:vagrant "/home/vagrant/Documents/javamop1"
#cd /home/vagrant/Documents/
sudo chmod -R a+rwx "/home/vagrant/Documents/javamop1"
sudo chown -R vagrant:vagrant "/home/vagrant/Documents/javamopGit/vm-prerequisites"
#cd /home/vagrant/Documents/
sudo chmod -R a+rwx "/home/vagrant/Documents/javamopGit/vm-prerequisites"
cp /home/vagrant/Documents/javamopGit/vm-prerequisites/JavaMOPAgent.jar /home/vagrant/Documents/javamop1/javamop/examples/agent/many
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
#mv /home/vagrant/Desktop/Terminal.desktop /home/vagrant/.config/autostart/
echo "script END #########################"
sudo reboot
