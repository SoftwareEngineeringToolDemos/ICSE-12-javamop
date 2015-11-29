************************************************Starting the tool************************************************************
Tool automatically starts up on boot up in the form of  Gnome terminal.  Skip to RV-Monitor installation section if the tools starts up automatically. If it fails to start try the following ways:

To get the tool started open the terminal by typing Ctrl+Alt+T

**********************************************RV-Monitor Installation********************************************************
Rv-Monitor is one of the tool prerequisites and requires a product key for installation. The tool will not work as expected unless RV-Monitor is installed on the VM. 

To get the product license key follow the below stated steps:

	1. Go to the following link for RV-Monitor official website https://www.runtimeverification.com/monitor/all/
	
	2. Click on Download link for Version 1.3.
	
	3. Enter name and email id. Click on Email key and Download.
To install RV-Monitor do the following:
	
	1. Execute the following commands
		cd /home/vagrant/Documents
		chmod 755 installRVMonitor.sh
		./installRVMonitor.sh
	
	2. On getting the prompt enter email address and key which user has received in the email. Click on Next button
	
	3. Click on 'I accept the terms of this license agreement'. Click on Next button.
	
	4. Keep the installation path as /home/vagrant/RV-Monitor. Do not change it. Click on Next button. Click on OK button 	for confirming installation directory.
	
	5. On package install page click on Next.
	
	6. Installation progress becomes 100%. Click on Next button. 
	
	7. PATH and CLASSPATH variables have already been updated. Just click on Done button.
	
	8. Run the command
		source ~/.bashrc

*******************************************Verfiying tool installation*******************************************************
To check if the tool has been installed correctly. Check the following:

	1) rv-monitor -version (Requirement : version 1.3 or higher)
	2) ajc -version (Requirement : version 1.6 or higher)
	3) java -version (Requirement : version 1.7 or higher)
	4) javamop (It should display command options and execute without error)

**********************************************Demonstration Examples*********************************************************
Implementing Demonstration examples as stated in the paper(Section III):
Source : https://github.com/runtimeverification/javamop/blob/master/docs/JavaMOPAgentUsage.md

**HasNext(LTL) property**

Commands: 

	1. cd /home/vagrant/Documents/javamop1/javamop/examples/agent/many
	
	2.  javac HasNext_1.java
	
	3.  java -javaagent:JavaMOPAgent.jar HasNext_1
	Expected output : 
				sum: 15

**SafeEnum(ERE) Property**

	1. cd /home/vagrant/Documents/javamop1/javamop/examples/agent/many
	
	2. javac SafeEnum_1.java
	
	3. java -javaagent:JavaMOPAgent.jar SafeEnum_1
	Expected output : 
				sum: 26

**SafeFile(CFG) Property**

	1. cd /home/vagrant/Documents/javamop1/javamop/examples/agent/many
	
	2. javac SafeFile_1.java
	
	3. java -javaagent:JavaMOPAgent.jar SafeFile_1
	Expected output : 
	begin
	open
	close
	end
	begin
	open
	end
	improper use of files
	improper use of files
	begin
	close
	improper use of files
	end
	improper use of files
	improper use of files
	
	-> javac SafeFile_2.java
	
	-> java -javaagent:JavaMOPAgent.jar SafeFile_2
	Expected output :
	begin
	open
	close
	end
	begin
	open
	close
	end
	begin
	open
	close
	end
	begin
	open
	close
	end
	begin
	open
	close
	end
	begin
	open
	close
	end
	begin
	open
	close
	end
	begin
	open
	close
	end
	begin
	open
	close
	end
	
