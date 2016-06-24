# JavaMOP Overview

[Monitoring-Oriented Programming (MOP)](http://fsl.cs.illinois.edu/mop),
is a software development and analysis framework which aims to reduce
the gap between formal specification and implementation by allowing
them together to form a system.
In MOP, runtime monitoring is supported and encouraged as a
fundamental principle for building reliable software: monitors are
automatically synthesized from specified properties and integrated
with the original system to check its dynamic behaviors during
execution. When a specification is violated or validated at runtime,
user-defined actions will be triggered, which can be any code: from
information logging to runtime recovery. 

[JavaMOP](http://fsl.cs.illinois.edu/javamop)
is an instance of MOP for Java.

## Installation

See [INSTALL.md](INSTALL.md) for installing JavaMOP from the
[binary release zip archive](http://fsl.cs.illinois.edu/index.php/JavaMOP4).
To build JavaMOP from source code, download the
[source code](https://github.com/runtimeverification/javamop) and refer to
[src/README.md](src/README.md).

## Usage

Refer to [docs/Usage.md](docs/Usage.md) for detailed instructions on how
to use JavaMOP.

## JavaMOPAgent

A separate tool called ```javamopagent``` is provided to facilitate the 
monitoring of your program. Refer to [docs/JavaMOPAgentUsage.md]
(docs/JavaMOPAgentUsage.md) for detailed instructions on how to use 
JavaMOPAgent. 


This repository contains information related to the tool JavaMOP presented ICSE '12: Proceedings of the 34th International Conference on Software Engineering. The tool was originally presented in [this paper](http://dl.acm.org/citation.cfm?id=2337436&dl=ACM&coll=DL&CFID=555221767&CFTOKEN=28958084).

This repository _is not_ the original repository for this tool. Here are some links to the original project:
* [The Official Project Page, including source code](http://fsl.cs.illinois.edu/index.php/JavaMOP4)
* [A Video of the Tool](http://fsl.cs.uiuc.edu/JavaMOPDemo.html)

In this repository, for JavaMOP you will find:
* :white_check_mark: [Source code](https://github.com/SoftwareEngineeringToolDemos/ICSE-12-javamop/tree/master/src/main/java/javamop))
* :white_check_mark: [Binary code](https://github.com/SoftwareEngineeringToolDemos/ICSE-12-javamop/tree/master/bin))
* :white_check_mark: [The original tool](https://github.com/SoftwareEngineeringToolDemos/javamop/tree/master/bin/javamop.bat)
* :white_check_mark: [Virtual machine containing tool](http://go.ncsu.edu/SE-tool-VMs)


This repository was constructed by [Anshita Sayal](https://github.com/anshi1690) under the supervision of [Emerson Murphy-Hill](https://github.com/CaptainEmerson). Thanks to Dongyun Jin, Patrick O'Neil Meredith, Choonghwan Lee and Grigore Roşu for their help in establishing this repository.
