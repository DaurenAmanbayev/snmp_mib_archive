                  �"The MIB module used to register Liebert SNMP OIDs.

      Copyright 2000-2008 Liebert Corporation. All rights reserved.
      Reproduction of this document is authorized on the condition
      that the forgoing copyright notice is included.

      This Specification is supplied 'AS IS' and Liebert Corporation
      makes no warranty, either express or implied, as to the use,
      operation, condition, or performance of the Specification."."Contact:   Technical Support

      Postal:
      Liebert Corporation
      1050 Dearborn Drive
      P.O. Box 29186
      Columbus OH, 43229
      US

      Tel: +1 (800) 222-5877

      E-mail: liebert.monitoring@emerson.com
      Web:    www.liebert.com

      Author:  Craig S. Ward" "200807020000Z" "200805150000Z" "200801100000Z" "200608150000Z" "200602220000Z"�"   o Added Notifications for PDU devices (power on/off).  
       o Added lgpEventParameters branch for defining notification payload 
         that specifically identifies objects that are contained in tables.
       o Added new varbind to the lgpEventConditionEntryAdded and
         lgpEventConditionEntryRemoved notifications.
       o Fixed minor SMIv2 warnings and issues
   "�"   o Added Notifications for PDU devices (power on/off).  
       o Added lgpEventParameters branch for defining notification payload 
         that specifically identifies objects that are contained in tables.
       o Added new varbind to the lgpEventConditionEntryAdded and
         lgpEventConditionEntryRemoved notifications.
       o Fixed minor SMIv2 warnings and issues
   " �"Modified contact email address and deprecated both:
      o lgpEventAgentFirmwareUpdateSuccessful
      o lgpEventAgentFirmwareCorrupt
    which were moved to the LIEBERT-GP-AGENT-MIB document." G"Added events for firmware update successful and for firmware corrupt." $"Added support for Liebert DS Unit."                   ,"Notifications for Liebert Global Products."               a"This notification is sent each time a condition is inserted into the
        conditions table."                 `"This notification is sent each time a condition is removed from the
        conditions table."                 �"The battery's remaining charge is less than or equal to the agent's
        configured low threshold 'lgpPwrConfigLowBatteryWarningTime'."                 ;"The device has transferred the load to the bypass source."                 ,"The device has reported an internal fault."                 6"The device has reported a battery self-test failure."                 7"The device has reported an output overload condition."                 B"The device has transitioned to the user defined redundant state."                 q"The device as transitioned to a non-redundant power state as defined
        by the user configured threshold."                 "Device power module failure."                  "Device battery module failure."                  "Device control module failure."                 "Device power module warning."                  "Device battery module warning."                  "Device control module warning."                 �"The firmware update to the agent card has completed successfully.

        This element has been relocated to lgpAgentFirmwareUpdateSuccessful
        in the LIEBERT-GP-AGENT-MIB document."                 �"The firmware update to the agent card has failed and the firmware is
        now corrupt.

        This element has been relocated to lgpAgentFirmwareCorrupt
        in the LIEBERT-GP-AGENT-MIB document."                 9"Configuration for the referenced PDU has been modified."                 �"A hot-swappable module has been added to the object specified by the 
         lgpEventParmTableRef and lgpEventParmTableRowRef."                 �"A hot-swappable module has been removed from the object specified by 
         the lgpEventParmTableRef and lgpEventParmTableRowRef."                 ;"Receptacle's power state has been changed from OFF to ON."                 ;"Receptacle's power state has been changed from ON to OFF."                2"The receptacle's load started drawing power. This notification 
        is asserted when the receptacle power is ON and the associated load 
        was previously not drawing power but is now drawing power. 
        This event is not asserted as a result of turning the 
        receptacle power ON."                9"The receptacle's load stopped drawing power. This notification 
        is asserted when the receptacle power is ON and the associated load 
        was previously drawing power but is now no longer drawing power. 
        This event is not asserted as a result of turning the 
        receptacle power OFF."                 r"This sub tree describes various parameters/data that are carried
         in the payload of some notifications."              �"This object will be included as a varbind in some
             lgpEventNotifications.  It is a reference to a table object in 
             the MIB.  The value of this object will be the OID of a table 
             that the object that the notification applies to is defined.
             The notification containing this object will also contain 
             a varbind 'lgpEventParmTableRowRef' that will specify which 
             instance (row) in the table the object is defined in.

             Example:
               NOTIFICATION: lgpEventConditionEntryAdded
               varbind: lgpConditionId          6
               varbind: lgpConditionDescr       lgpConditionRcpBranchBreakerOpen
               varbind: lgpConditionTime        393884848
               varbind: lgpEventParmTableRef    lgpPduRbTable
               varbind: lgpEventParmTableRowRef lgpPduRbEntryId.1.4

             In the above example the breaker opened for a Receptacle branch.
             The specific receptacle branch is specified by the additional
             varbind (lgpEventParmTableRowRef).  In this case the notification
             is for the 4th receptacle branch on the 1st PDU in the PDU cluster.
            "                      �"This is a reference to the intersection of a row and column (cell)
             in the table specified by the companion varbind 
             (lgpEventParmTableRef) in this notification.  The row in the
             table where this cell exists represents the object that this
             notification applies to.

             Example:
               NOTIFICATION: lgpEventRcpPowerStateChangeOff
               varbind: sysUpTime               393885975
               varbind: lgpEventParmTableRef    lgpPduRcpTable
               varbind: lgpEventParmTableRowRef lgpPduRcpEntryId.2.4.5

             In the above example the power state changed for a Receptacle.

             The table containing the definition of the receptacle
             (lgpPduRcpTable) is given by the varbind (lgpEventParmTableRef)

             The specific receptacle is specified by the varbind
             (lgpEventParmTableRowRef).  In this case the notification
             is for the 5th receptacle on the 4th receptacle branch on the 
             2nd PDU in the PDU cluster.

             If one wanted to retrieve the user assigned label for this 
             receptacle the OID would be: lgpPduRcpEntryUsrLabel.2.4.5
            "                      