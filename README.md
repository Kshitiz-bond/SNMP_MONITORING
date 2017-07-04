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

