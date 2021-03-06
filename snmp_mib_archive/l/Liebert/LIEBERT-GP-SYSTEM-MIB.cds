 R-- =============================================================================
                     Z"This sub-tree is used to register Liebert System Statistics object
        identifiers." �"The registrations for the objects in this sub-tree are
        defined below in the sub-section titled Liebert System Statistics
        Group."             &"Accumulated run hours of the system."                       V"This sub-tree is used to register Liebert System Status object
        identifiers." �"The registrations for the objects in this sub-tree are
        defined below in the sub-section titled Liebert System Status
        Group."             ("The outcome of the previous self-test."                      �"The operating status for the system. The intent of this data
        is to provide a high level status of the system.

        The possible states are:

            normalOperation(1)
                The system is operating normally with no active warnings or 
                alarms.
            startUp(2)
                The system is in a startup state (initializing). Monitoring 
                operations and information may not be fully supported at this 
                time. This state will clear automatically when the system is 
                fully initialized and ready to accept monitoring commands.
            normalWithWarning(3)
                The system is operating normally with one or more active 
                warnings. Appropriate personnel should investigate the 
                warning(s) as soon as possible and take appropriate action. 
            normalWithAlarm(4)
                The system is operating normally with one or more active 
                alarms. Appropriate personnel should investigate the alarm(s)
                as soon as possible and take appropriate action. 
            abnormalOperation(5)
                They system is operating abnormally. There is a 
                failure within the system that is unexpected under normal 
                operating conditions. Appropriate personnel should investigate
                the cause as soon as possible. The normal functioning of
                the system is likely inhibited."                       X"This sub-tree is used to register Liebert System Settings object
        identifiers." �"The registrations for the objects in this sub-tree are
        defined below in the sub-section titled Liebert System Settings
        Group."             /"The state of the audible alarm of the device."                       W"This sub-tree is used to register Liebert System Control object
        identifiers." �"The registrations for the objects in this sub-tree are
        defined below in the sub-section titled Liebert System Control
        Group."            "Self-Test Command.  This command will initiate a system self-test of
        the system.  If already initiated, this command will abort the
        self-test.  This command should be sent with a parameter of 1.  This
        variable doesn't return a value when read."                       �"This object allows control of the system functionality.  This will not
        affect the communications or control of the system, so that once turned
        off, the system operation can be restored by setting this value to 
        'on'."                       T"This sub-tree is used to register Liebert System Time object
        identifiers." �"The registrations for the objects in this sub-tree are
        defined below in the sub-section titled Liebert System Time
        Group."             �"The present time of the system.  This time is represented as the
        number of seconds since the epoch of 1970-01-01 00:00:00 GMT."                       ["This sub-tree is used to register Liebert System Maintenance object
        identifiers." �"The registrations for the objects in this sub-tree are
        defined below in the sub-section titled Liebert System Maintenance
        Group."             �"The relative percentage of time that has elapsed since the last
        scheduled maintenance was performed.  When this value reaches 100%,
        the device is due for another scheduled maintenance procedure."                       5"The year in which the next scheduled service is due"                       6"The month in which the next scheduled service is due"                       �"An ASCII textual description for the event. This object is
        primarily used in the varbind of some notifications to provide
        a simple human-readable description."                       \"This sub-tree is used to register Liebert System Notification object
        identifiers."              �"This notification is a generic notification intended for direct user
        visibility.  The user event description identifies the system
        condition that has occurred.  This text will be prefixed with either
        'Active:', 'Cleared:', or 'Message:' depending on the state of the
        event.  Note: That a prefix of 'Message:' identifies a stateless event
        and as such there will be no corresponding 'Cleared:' trap sent."                �"The system has returned to a normal operating state. This implies
        prior to the generation of this event the system was operating in a
        state where one or more alarm or warning conditions were present.
        All of those alarms or conditions have now cleared.

        NOTE: This notification may be generated after a short delay during a
        cold boot of the system -- if no alarms or conditions are present in the
        monitored device(s) at that time."                 7"This sub-tree registers well known device components." �"These well known components are referenced in the
        'lgpSysDeviceComponentDescr' column in the
        'lgpSysDeviceComponentTable'."            F"A list of components of devices identified by their serial number and 
            or model number.

            This table contains zero, one, or many rows. The NMS cannot create or
            delete rows from the table. The rows are created by the agent based upon
            the capabilities of the managed device."                       m"This entry defines the contents of the columns for the table
                'lgpSysDeviceComponentTable'."                       y"This is the index indicating the row in the table
                 'lgpSysDeviceComponentTable' for a component entry."                       l"An OID representing a component of the device indicated by the
                index lgpAgentDeviceIndex." y"The object identifiers in this column can be found in the 
                 sub-tree 'lgpSysDeviceComponentWellknown'."                    "This is the serial number of the component described by the OID 
                'lgpSysDeviceComponentDescr'. This data is intended for 
                display / human consumption. Do not use this field for determining
                programmatic behavior."                      "This is the model identifier of the component described by the OID 
                'lgpSysDeviceComponentDescr'. This data is intended for 
                display / human consumption. Do not use this field for determining
                programmatic behavior."                       ?"This sub-tree registers well known Liebert System Components." �"These well known measurement identifiers are referenced in the
             'lgpSysDeviceComponentDescr' column in the
             'lgpSysDeviceComponentTable'."            "This sub-tree is used to register a battery cabinet component.
                    To determine the cabinet being described in a
                    multi-cabinet system, this point implements an additional
                    two indexes. The first index describes the module the cabinet
                    is located in. The second index describes the cabinet
                    number. In an SMS (Single-Module System) the first index is
                    always 1.

                    Example: lgpSysDeviceComponentCabinet.2.4

                        'lgpSysDeviceCabinet' = Point is a battery cabinet.
                                     '.2' = Cabinet is in the second module.
                                     '.4' = Cabinet number 4 in second module"               7"This sub-tree is used to register a parallel cabinet."               ;"This sub-tree is used to register the maintenance bypass."                      �"The MIB module used to specify Liebert Controller OIDs

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

      Author:  Gregory M. Hoge" "200811170000Z" "200807020000Z" "200801100000Z" "200705290000Z" "200602220000Z" "Added support for NXL unit." -"Added missing items to the IMPORT statement" G"Add system notifications sub-tree and modified contact email address." "Added support for XDF Unit." $"Added support for Liebert DS Unit."                          