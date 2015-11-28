#!/bin/bash

wget --directory-prefix="/home/vagrant/Downloads" http://runtimeverification.com/monitor/1.3/rv-monitor-installer-1.3.jar
cd /home/vagrant/Downloads
java -jar rv-monitor-installer-1.3.jar
