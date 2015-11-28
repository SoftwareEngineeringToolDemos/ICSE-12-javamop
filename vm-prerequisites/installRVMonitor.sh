#!/bin/bash

#Install script for RV-Monitor

#Downloading RV-Monitor from official website
wget --directory-prefix="/home/vagrant/Downloads" http://runtimeverification.com/monitor/1.3/rv-monitor-installer-1.3.jar
cd /home/vagrant/Downloads

#Running the executable
java -jar rv-monitor-installer-1.3.jar
