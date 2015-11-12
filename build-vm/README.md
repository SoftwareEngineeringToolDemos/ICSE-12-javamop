## Instructions to set up Virtual Machine  

1. Install Oracle VM VirtualBox from [here](https://www.virtualbox.org/wiki/Downloads) and Vagrant from [here](https://www.vagrantup.com/downloads.html) on your system. 
2. Ensure that the 'vagrant' added to PATH environment variable.
2. Create a new directory on the machine and navigate to this newly created directory.
3. Copy the Vagrantfile from the tool repository available [here](https://github.com/SoftwareEngineeringToolDemos/ICSE-2012-javamop/blob/master/build-vm/Vagrantfile) into that directory.
4. Run 'vagrant up' inside the newly created directory. Ubuntu 14.04 LTS machine will be created and Java 7 will be installed on the machine.
5. After the machine is up, 
   * Use an SSH client such as PuTTY which can be downloaded from [here](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html). To SSH into the VM, use the following credentials:
      * Hostname: 127.0.0.1
      * Port: 2222
      * Username: vagrant
      * Password: vagrant
   * Use the GUI which shows up when 'vagrant up' command is run. When prompted, enter password : vagrant
6. Java installation can be verified by running java -version command
  
### References
* https://www.vagrantup.com/
* https://www.digitalocean.com/community/tutorials/how-to-install-java-on-ubuntu-with-apt-get
* http://www.vagrantbox.es/
* https://docs.vagrantup.com/v2/provisioning/shell.html
