*******************Starting the tool*******************************
Tool automatically starts up on boot up in the form of  Gnome terminal.  Skip to verification of installation section if the tools starts up automatically. If it fails to start try the following ways:

To get the tool started open the terminal by typing Ctrl+Alt+T


************************Verfiying tool installation******************
To check if the tool has been installed correctly. Check the following:

1) rv-monitor -version (Requirement : version 1.3 or higher)
2) ajc -version (Requirement : version 1.6 or higher)
3) java -version (Requirement : version 1.7 or higher)
4) javamop (It should display command options and execute without error)

************Demonstration Examples*******************************
Implementing Demonstration examples as stated in the paper(Section III):
Source : https://github.com/runtimeverification/javamop/blob/master/docs/JavaMOPAgentUsage.md

**HasNext(LTL) property**

Commands: 

-> cd /home/adminuser/javamop/examples/agent/many

-> javac HasNext_1.java

-> java -javaagent:JavaMOPAgent.jar HasNext_1
Expected output : 
			sum: 15

**SafeEnum(ERE) Property**

-> cd /home/adminuser/javamop/examples/agent/many

-> javac SafeEnum_1.java

-> java -javaagent:JavaMOPAgent.jar SafeEnum_1
Expected output : 
			sum: 26

**SafeFile(CFG) Property**

-> cd /home/adminuser/javamop/examples/agent/many

-> javac SafeFile_1.java

-> java -javaagent:JavaMOPAgent.jar SafeFile_1
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

