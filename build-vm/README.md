## Instructions to set up Virtual Machine  

1. Download and install Oracle VM VirtualBox from [here](https://www.virtualbox.org/wiki/Downloads). 
2. Download and install Vagrant from [here](https://www.vagrantup.com/downloads.html) on your system. 
3. Ensure that the path to installation directory of vagrant is added to PATH environment variable on the host machine.
4. Create a new directory on the host machine and navigate to this newly created directory.
5. Copy the Vagrantfile from the tool repository available [here](https://github.com/SoftwareEngineeringToolDemos/ICSE-2012-javamop/blob/master/build-vm/Vagrantfile) into that directory.
6. Change the current directory to the newly created directory by using the 'cd' command. 
7. Run 'vagrant up' command. Ubuntu 14.04 LTS machine will be created and Java 8 will be installed on the virtual machine.
8. After the machine is up, use one of the following methods to log in to the virtual machine:
   * Use the GUI which shows up when 'vagrant up' command is run. When prompted, enter password : vagrant
   * Use an SSH client such as PuTTY which can be downloaded from [here](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html). To SSH into the virtual machine, use the following credentials:
   ~~~
       Hostname: 127.0.0.1
       Port: 2222
       Username: vagrant
       Password: vagrant
   ~~~
 
## Note
* Please wait for the vagrant command to complete successfully before using the virtual machine.
* Java installation can be verified on the virtual machine by running 'java -version' command. The following output is obtained:

~~~
java version "1.8.0_66"
Java(TM) SE Runtime Environment (build 1.8.0_66-b17)
Java HotSpot(TM) 64-Bit Server VM (build 25.66-b17, mixed mode)
~~~

## References
* https://www.vagrantup.com/
* https://www.digitalocean.com/community/tutorials/how-to-install-java-on-ubuntu-with-apt-get
* http://www.vagrantbox.es/
* https://docs.vagrantup.com/v2/provisioning/shell.html
* Vagrant VirtualBox Image used : https://atlas.hashicorp.com/box-cutter/boxes/ubuntu1404-desktop
