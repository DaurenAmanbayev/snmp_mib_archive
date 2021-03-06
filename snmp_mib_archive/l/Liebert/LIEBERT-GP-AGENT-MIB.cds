                       "Agent specific notifications."               :"The agent has lost communications with a managed device."                 C"The firmware update to the agent card has completed successfully."                 \"The firmware update to the agent card has failed and the firmware is
        now corrupt."                 "The agent card is alive."                w"A Domain Name System (DNS) lookup of a network name failed to
        resolve.  This may result in one or more of the following:
           1. failure to notify a target address of an important condition
           2. failure allow access for monitoring purposes
        This issue should be resolved as soon as possible with a
        network or system administrator."                �"This branch contains copies of the notifications registered directly
         below lgpAgentEventNotifications. These are here to provide support 
         for some legacy devices which send out lgpAgentEventNotifications 
         as the SNMPv1 enterprise trap parameter instead of 
         lgpAgentNotifications, which causes problems with some SNMP clients 
         when converting from V1 to V2 notifications (RFC3584 Section 3)."               :"The agent has lost communications with a managed device."                 C"The firmware update to the agent card has completed successfully."                 \"The firmware update to the agent card has failed and the firmware is
        now corrupt."                 "The agent card is alive."                w"A Domain Name System (DNS) lookup of a network name failed to
        resolve.  This may result in one or more of the following:
           1. failure to notify a target address of an important condition
           2. failure allow access for monitoring purposes
        This issue should be resolved as soon as possible with a
        network or system administrator."                    �"The MIB module used to specify Liebert software or firmware
      agent SNMP OIDs.

      Copyright 2000-2008 Liebert Corporation. All rights reserved.
      Reproduction of this document is authorized on the condition
      that the forgoing copyright notice is included.

      This Specification is supplied 'AS IS' and Liebert Corporation
      makes no warranty, either express or implied, as to the use,
      operation, condition, or performance of the Specification."0"Contact:   Technical Support

      Postal:
      Liebert Corporation
      1050 Dearborn Drive
      P.O. Box 29186
      Columbus OH, 43229
      US

      Tel: +1 (800) 222-5877

      E-mail: liebert.monitoring@emerson.com
      Web:    www.liebert.com

      Author:  Gregory M. Hoge" "200811170000Z" "200807020000Z" "200801100000Z" "200705290000Z" "200602220000Z" "Added support for NXL unit." b"Updated INTEGER references to Integer32 (SMIv2).
     Added missing item to import (Unsigned32)" S"Modified contact email address and added lgpAgentEventNotifications
    objects." "Added support for XDF Unit." $"Added support for Liebert DS Unit."                      �"Perform an immediate 'reboot' of the agent process.  When possible
         the reboot will approximate a power on reset of the agent
         communications hardware.  This type of reboot will be performed if
         a hardware reset is supported by the hardware/software on the
         communications card.  Otherwise a 'software' reboot will be executed.
         In both cases a temporary loss of communications and other agent
         functionality will result.

         Any valid INTEGER value may be written to this object to initiate
         the reboot operation.

         If read the value '0' will always be returned."                       �"This object represents the settings of Telnet.
         yes
             Telnet services are enabled.
         no
             Telnet services are disabled.
         The system must be rebooted before changes can take effect."                      �"This object configures the Velocity Server to grant external clients access to agent data via the Liebert Velocity protocol.
         yes
             Agent data is available to external clients via the Liebert Velocity protocol.
         no
             Agent data is not available to external clients via the Liebert Velocity protocol.
         The system must be rebooted before changes can take effect."                      9"This object represents the settings of Web services.
         disabled
             Web services are disabled.
         http
             Web server mode is HTTP (not secure).
         https
             Web server mode is secure HTTP.
         The system must be rebooted before changes can take effect."                                   "The agent manufacturer."                       T"The agent model designation.  This identifier is typically a
    model name or ID"                       +"The firmware revision level of the agent."                       �"The serial number of the agent.  This is a string of
    alphanumeric characters that uniquely identifies the agent hardware.  This
    number is assigned when the agent hardware is manufactured and does not
    change throughout its lifecycle."                       *"The agent model part number designation."                       �"The number of devices currently connected and communicating
    successfully with the agent.  Devices for which communications are
    currently being attempted are not considered in this count."                           8"This table contains one entry for each managed device."                      Y"This entry describes a row in the table
                'lgpAgentManagedDeviceTable'.  The rows in this table cannot
                be created by the NMS. The rows are automatically created by
                the agent based upon the hardware configuration of the
                Liebert managed device(s) being monitored with this agent."                       �"The device identifier. This is used as an index to address
                a particular row in the table 'lgpAgentManagedDeviceTable'."                       ^"The managed device specific identifier defined by the
                product registration."                       ""The managed device manufacturer."                       '"The managed device model designation."                       4"The firmware revision level of the managed device."                       �"The managed device unit number.  Typically this is a
    number assigned to a managed device that uniquely identifies it from
    other similar devices within a 'system'."                       *"The serial number of the managed device."                       -"The manufacture date of the managed device."                       ,"The service contact of the managed device."                       @"The phone number of the service contact of the managed device."                       6"Line 1 of the service address of the managed device."                       6"Line 2 of the service address of the managed device."                       6"Line 3 of the service address of the managed device."                       6"Line 4 of the service address of the managed device."                       <"Unit name for the managed device assigned by the customer."                       U"Identifier that uniquely identifies the site where this device is
        located."                       w"Identifier that uniquely identifies this device within a particular
        site (see lgpAgentDeviceSiteIdentifier)."                       *"Customer Sales Order information line 1."                       *"Customer Sales Order information line 2."                      