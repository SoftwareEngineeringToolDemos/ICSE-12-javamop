## Instructions to set up Virtual Machine  

1. Install Oracle VM VirtualBox from [here](https://www.virtualbox.org/wiki/Downloads) and Vagrant from [here](https://www.vagrantup.com/downloads.html) on your system. Both softwares are compatible with Windows and Linux. After installing Vagrant, ensure that the `vagrant` program is part of your `PATH`.
2. Create a new directory on the machine and navigate to this newly created directory.
3. Copy the Vagrantfile from the tool repository available [here](https://github.com/SoftwareEngineeringToolDemos/ICSE-2012-javamop/blob/master/build-vm/Vagrantfile) into that directory.
4. Run v'agrant up' inside the newly created directory. Ubuntu 14.04 LTS machine will be created and Java 7 will be installed on the machine.
5. After the machine is up, 
   * Use an SSH client like [PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html) with the hostname `127.0.0.1` on port `2222`. When prompted enter Username: vagrant and Password: vagrant
   * Use the GUI which shows up when 'vagrant up' command is run. When prompted, enter password : vagrant
6. Java installation can be verified by running java -version command
  

### VM Credentials
* Username: 'vagrant'
* Password: 'vagrant'  
