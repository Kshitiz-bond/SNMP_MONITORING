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
In this the user has to enter the IP addrerss(SNMP enabled) for which the monitoring of the system is required.
@User_Input_Poll.ps1
Following are the some screenshots of the above mentioned file's execution.

### Entering the IP address
![poll_user](https://user-images.githubusercontent.com/13145914/27858128-a7d54f34-6191-11e7-9cfd-b7812ebc9c56.jpg)

### User Prompt
![poll_user2](https://user-images.githubusercontent.com/13145914/27858138-ae7c6aac-6191-11e7-89ef-ad22d3a5d052.jpg)

### Entering for second device
![poll_user3](https://user-images.githubusercontent.com/13145914/27858201-f8540612-6191-11e7-8a59-d851c9740726.jpg)

## Further any improvements if you feel to mention then they are most welcome as there is always a chance of getting better.

# Contact:
@mail: kshitiz.agarwal95@gmail.com
feel free to contact me for any queries and suggestions.




