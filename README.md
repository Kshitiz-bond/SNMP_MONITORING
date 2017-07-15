# SNMP_MONITORING
Used to monitor the devices using their IP address and to know their system parameters.

## What is SNMP?
Basically it stands for Simple Network Management Protocol. 
Simple Network Management Protocol (SNMP) is an Internet-standard protocol for collecting and organizing information about managed devices
on IP networks and for modifying that information to change device behavior. Devices that typically support SNMP include cable modems, 
routers, switches, servers, workstations, printers, and more.
Three significant versions of SNMP have been developed and deployed. SNMPv1 is the original version of the protocol. More recent versions,
SNMPv2c and SNMPv3, feature improvements in performance, flexibility and security.

SNMP exposes management data in the form of variables on the managed systems organized in a Management Information Base (MIB) which
describe the system status and configuration. These variables can then be remotely queried (and, in some circumstances, manipulated) by
managing applications.

## What is MIB?
The protocol also permits active management tasks, such as modifying and applying a new configuration through remote modification of
these variables. The variables accessible via SNMP are organized in hierarchies. SNMP itself does not define which information 
(which variables) a managed system should offer. Rather, SNMP uses an extensible design which allows applications to define their own 
hierarchies and metadata. These hierarchies, and other metadata (such as type and description of the variable), are described by
management information bases (MIBs). MIBs describe the structure of the management data of a device subsystem; they use a hierarchical
namespace containing object identifiers (OID). Each OID identifies a variable that can be read or set via SNMP. 

## OID(Object Identifiers)
It is based on a hierarchical name structure based on the "OID tree". This naming structure uses a sequence of names, of which the first
name identifies a top-level "node" in the OID tree, and the next provides further identification of arcs leading to sub-nodes beneath the
top-level, and so on to any depth.

![oidd](https://user-images.githubusercontent.com/13145914/27817367-540b6944-60ae-11e7-97c7-df95b660d3b8.jpg)

## Polling of One Device
In this @POLL_ONE_DEVICE.ps1 I am using one default IP address(SNMP enabled) to check the efficiency of the code.
For checking the parameters the user has to click the button respectively.

![one](https://user-images.githubusercontent.com/13145914/27858118-a141aff0-6191-11e7-9121-9bb30d01a5aa.jpg)

## Polling of Two Devices
In this @POLL_2_DEVICES.ps1 I am using two default IP addresses(SNMP enabled) to check the efficiency of the code.
For checking the parameters the user has to click the button respectively for both the devices.

![poll_two_ss](https://user-images.githubusercontent.com/13145914/27817291-eed73bde-60ad-11e7-83d9-68224fd183b8.jpg)

## Improvements
User should not need to click every button for getting the parameters so in the next module I have automated the process. 
The User just need to click on "Click to Continue" and all the values will be dispalyed.

![click](https://user-images.githubusercontent.com/13145914/27817260-ce7d5dfa-60ad-11e7-9d49-fe9243e9b226.jpg)

## Auto Polling of Devices

![auto](https://user-images.githubusercontent.com/13145914/27858100-981520ba-6191-11e7-9c19-f65483f698a9.jpg)

## Further Improvements
Right now the IP address is not "user input", the devices which are need to be monitored their IPs are written in the code itself.
So for getting the parameters of a new device we need to change in the code and then again run it. This is a lengthy task and impractical.
Next module will be user friendly and will receive the user input.

## User Input Enabled Monitoring 
In this the user has to enter the IP addrerss(SNMP enabled) for which the monitoring of the system is required. In this the status bar is also active and tells about the connectivity of the device whether it is offline or online or computer has active internet connection.
Real time output will be saved in a file created in your local computer( Run as Adminstrator). 
@User_Input_Poll.ps1
Following are the some screenshots of the above mentioned file's execution.

### First prompt of form
![poll_user](https://user-images.githubusercontent.com/13145914/27858128-a7d54f34-6191-11e7-9cfd-b7812ebc9c56.jpg)

### On clicking “Enter the IP address of first device”
![1](https://user-images.githubusercontent.com/13145914/28239323-bbc28932-6987-11e7-9e79-66b0f7e303f3.png)

### Status Online of Device
![2](https://user-images.githubusercontent.com/13145914/28239340-0635760a-6988-11e7-82ea-2ccb37e253da.png)

### When Second Device is offline
![3](https://user-images.githubusercontent.com/13145914/28239341-0639eca8-6988-11e7-81ec-6f05e6329eae.png)

### Both the devices are online and showing the values
![4](https://user-images.githubusercontent.com/13145914/28239343-063e73ea-6988-11e7-8236-8b5ed65950b3.png)

### Screenshot of log file saved in local computer
![5](https://user-images.githubusercontent.com/13145914/28239342-063e5aae-6988-11e7-9e82-40c9139092d8.png)


## Further any improvements if you feel to mention then they are most welcome as there is always a chance of getting better.

# Contact:
@mail: kshitiz.agarwal95@gmail.com
feel free to contact me for any queries and suggestions.




