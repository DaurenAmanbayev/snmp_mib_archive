                      �"The MIB module used to register Liebert POWER related SNMP OIDs.

      Copyright 2008-2008 Liebert Corporation. All rights reserved.
      Reproduction of this document is authorized on the condition
      that the forgoing copyright notice is included.

      This Specification is supplied 'AS IS' and Liebert Corporation
      makes no warranty, either express or implied, as to the use,
      operation, condition, or performance of the Specification."/"Contact:   Technical Support

      Postal:
      Liebert Corporation
      1050 Dearborn Drive
      P.O. Box 29186
      Columbus OH, 43229
      US

      Tel: +1 (800) 222-5877

      E-mail: liebert.monitoring@emerson.com
      Web:    www.liebert.com

      Author:  Keith Sarbaugh" "200807020000Z" "Initial Version"                       �"This sub-tree contains information about PDU clusters.  Clusters are
         groups of PDU's under a single monitoring or control domain." Q"The registrations for the objects in this sub-tree are
         defined below."            
J"This value represents a bit-field of the various operational
     states of the PDUs that are part of the cluster of PDUs
     being monitored by this agent.

     This value is the bit-wise logical OR of all of the
     'lgpPduEntrySysStatus' columns in the 'lgpPduTable'
     which represents the combined statuses of all PDUs for this agent.

     Note the bit-position is given parenthetically next to the operational
     state in the description below.  The bit position is big-endian
     (least significant digit is the right-most digit).  The state is
     present in the PDU when the bit is on (value = 1).

     The value is a logical OR of all of the following potential states of
     each PDU in the cluster.

         normalOperation(1)
             One or more PDUs in the cluster are operating normally with no
             active warnings or alarms.
         startUp(2)
             One or more PDUs are in the startup state (initializing).  Control
             and monitoring operations may be inhibited or unavailable
             while the PDU is in this state.  This state will clear
             automatically when the PDU(s) are fully initialized and ready to
             accept control and monitoring commands.
         unknownNoSupport(4)
             The state of one or more PDUs are not known at this time or
             there is no support for this piece of information from 1 or more
             PDUs in the cluster/group.
         normalWithWarning(8)
             One or more PDUs are operating normally with one or more active
             warnings.  Appropriate personnel should investigate the
             warning(s) as soon as possible and take appropriate action.
         normalWithAlarm(16)
             One or more PDUs are operating normally with one or more active
             alarms.  Appropriate personnel should investigate the alarm(s)
             as soon as possible and take appropriate action.
         abnormalOperation(32)
            One ore more PDUs are operating abnormally.  There is a
            failure within the system that is unexpected under normal
            operating conditions.  Appropriate personnel should investigate
            the cause as soon as possible.  The normal functioning of
            the system is likely inhibited.
         unknownCommFailure(64)
            The state of one or more PDUs are not known due to a communications
            failure between the PDU hardware and the communications
            module.  This state is usually indicative of a hardware
            problem.
     "                       l"Number of PDUs being monitored by this agent.  This is the
         number of entries in the lgpPduTable."                      �"This table contains a list of PDU entries.
         The table contains zero, one, or many rows, depending upon the number
         of PDUs being monitored.  The Network Management System (NMS)
         cannot create or delete rows in the table. The rows are created by
         the agent based upon the number of PDUs being managed.
         Each row in the table represents a PDU in the system."                       �"This entry defines the columns to be populated in the
             'lgpPduTable'.  Each column represents an attribute of a PDU.
             This table is indexed by the PDU identifier that is unique
             within the agent.
            "                       @"This is the index that indicates the row of the 'lgpPduTable'."                       �"This is an internal index representing a unique identifier for
             each PDU represented by this agent.  The value is assigned
             by the agent."                       5"This is a user assigned label representing the PDU."                      ""System assigned identifier representing the PDU. The value
             is independent of any user assigned label or tag. The exact format
             of this label is system dependent and is subject to change,
             therefore, it should not be referenced for programmatic use."                       }"This is a one-based value that indicates the PDU's relative
             position within a rack or other enclosing entity."                      �"This value represents a bit-field of the various operational
             states of the PDU. The value is a logical OR of all of the
             following potential states of the PDU.  Note the bit-position
             is given parenthetically next to the operational state in the
             description below.  The bit position is assumed to be a big-endian
             format (least significant digit is the right-most digit).  The
             state is present in the PDU when the bit is on (value = 1).

             normalOperation(1)
                 The PDU is operating normally with no active warnings or alarms.
             startUp(2)
                 The PDU is in the startup state (initializing).  Control
                 and monitoring operations maybe inhibited or unavailable
                 while the PDU is in this state.  This state will clear
                 automatically when the PDU(s) are fully initialized and
                 ready to accept control and monitoring commands.
             normalWithWarning(8)
                 The PDU is operating normally with one or more active
                 warnings.  Appropriate personnel should investigate the
                 warning(s) as soon as possible and take appropriate action.
             normalWithAlarm(16)
                 The PDU is operating normally with one or more active
                 alarms.  Appropriate personnel should investigate the alarm(s)
                 as soon as possible and take appropriate action.
             abnormalOperation(32)
                The PDU is operating abnormally.  That is there is some
                failure within the system that is unexpected under normal
                operating conditions.  Appropriate personnel should investigate
                the cause as soon as possible.  The normal functioning of
                the system is likely inhibited.
             "                       �"This is a user assigned Tag for the PDU.  This value may be
             useful for end-user grouping or asset tracking purposes.
             The value for this tag does not need to be unique for this
             unit or across other units."                       �"This is a user assigned Tag for the PDU.  This value may be
             useful for end-user grouping or asset tracking purposes.
             The value for this tag does not need to be unique for this
             unit or across other units."                       �"System assigned serial number for this PDU.  This number is
             assigned at time of manufacture, is globally unique with respect
             to all PDU units."                       5"Number of receptacle branches (Rb) within this PDU."                       "This is the PDU Software Over Current Protection feature which will
             prevent unused receptacles from turning on when the
             'PDU Over Current Warning' or 'PDU Over Current Alarm' threshold
             is violated. Such receptacles shall get locked to prevent any user
             from switching them ON. Only device-admin shall have the authorization
             to unlock such receptacles.
             If the feature is enabled, in case of PDU Over Current Warning or Alarm condition,
             following action will be taken on the receptacles:
                a. Locked & OFF  No change
                b. Locked & ON -  No change
                c. UnLocked & OFF  Receptacle shall be locked
                d. Unlocked & ON  If the receptacle is being used (current>0), no change.
                   If that outlet is being unused(current=0), turn it off and lock it in that position.

             No action will be taken if the feature is disabled.

             Note: Only applicable to PDU models where receptacle measurement and control is supported.
             Not applicable for PDU models that support only branch monitoring.

         disabled
              This function is disabled.
         enable
              This function is enabled."                       ="This sub-tree contains information about PDU power sources." Q"The registrations for the objects in this sub-tree are
         defined below."             /"Number of power sources in the lgpPduPsTable."                      �"This table contains a list of the PDU's power source(s).
         The table contains zero, one, or more rows, depending
         upon the number of PDUs being monitored and the number of
         power sources installed for each PDU.
         The NMS cannot create or delete rows in the table. The rows are
         created by the agent based upon the capabilities of the PDUs
         being monitored.  Each row in the table represents a PDU's
         Power Source."                      �"This entry defines the attributes to be populated in the
             various columns of the 'lgpPduPsTable' (Power Source Table).
             This table is indexed by both the 'lgpPduEntryIndex' which is
             the sole index into the 'lgpPduTable' and the 'lgpPduPsEntryIndex'
             which is a unique identifier for the Power Source within a
             given PDU.  Taken together these two indexes uniquely identify
             a Power Source within this agent.
            "                       �"This is a unique identifier for the Power Source within a
             given PDU. This is one of two indexes used to indicate the row of
             the 'lgpPduTable'."                       \"This is a unique entry id representing a given PDU power source
             for the PDU."                      $"System assigned identifier for this power source.  The value
             is independent of any user assigned label or tag. The exact format
             of this label is system dependent and is subject to change,
             therefore, it should not be referenced for programmatic use."                       :"This is the model name (identifier) of the power supply."                      @"The PDU's power supply physical wiring type.
                not-specified
                    The type has not been specified/configured.  The end_user
                    must configure this object to specify the physical wiring
                    type.
                single-phase-3-wire-L1-N-PE
                    Single Phase input with 3 wires (Line 1, Neutral and
                    Protective Earth).
                two-phase-3-wire-L1-L2-PE
                    Two Phase input with 3 wires (Line 1, Line 2, and
                    Protective Earth).
                three-phase-4-wire-L1-L2-L3-PE
                    Three Phase input with 4 wires (Line 1, Line 2, Line 3,
                    and Protective Earth).
                three-phase-5-wire-L1-L2-L3-N-PE
                    Three Phase input with 5 wires (Line 1, Line 2, Line 3,
                    Neutral and Protective Earth).
                two-phase-4-wire-L1-L2-N-PE
                    Two Phase input with 4 wires (Line 1, Line 2, Neutral,
                    and Protective Earth)."                      9"Rated Input Line Voltage for the power source (i.e. this is the
             nominal line input voltage; it is NOT a measured voltage).

             The value is defined to be the rated line voltage
             (either line-to-neutral or line-to-line depending upon the
             power source's type)."                       e"This is the rated input line current for the module
             (it is NOT the measured current)."                       �"Rated input line frequency for this power source
             (i.e. This is the expected line frequency; it is NOT a
             measured frequency; it is typically 50 Hz or 60 Hz)."                      "Total accumulated energy, measured at the power source input, since
             the last energy reset. Writing a value of 0 (zero) to this
             causes the accumulated energy to be reset. Writing a non-zero
             value is invalid and shall result in a write error and the
             total energy value remains unchanged.

             If the energy has not been reset and has not wrapped,
             then this is the total energy since installation.

             This value persists across boot events."                       �"This is a unique serial number of the power supply.  This number
             is assigned to the power supply at the time of manufacture."                       X"This is the version of the firmware installed on the PDU's
             power supply."                       e"Total input power for this power supply.  This is the sum of the
             power for all phases"                       9"The neutral current measured at the PDU's power source."                      Y"The threshold at which an over current warning is activated. If the
             measured neutral current (lgpPduPsEntryEcNeutral) is above this
             percentage of the full scale rated value
             (lgpPduPsEntryEcInputRated), an over neutral current warning
             (lgpConditionSource1NeutralOverCurrent) is activated."                      U"The threshold at which an over current alarm is activated. If the
             measured neutral current (lgpPduPsEntryEcNeutral) is above this
             percentage of the full scale rated value
             (lgpPduPsEntryEcInputRated), an over neutral current alarm
             (lgpConditionSource1NeutralOverCurrent) is activated."                      e"The parameter is for setting the maximum acceptable percentage of
             'Unbalanced Load' between any two phases. This setting shall
             trigger an alarm when the % load between any two phases varies by
             a percentage higher than this configurable value. If this value is
             0% then the alarm would be deactivated."                       q"Total Apparent power for this power supply.  This is the sum of the
             apparent power for all phases"                       �"Total power factor, which is real power/apparent power for all
             phases combined. This is the sum of the real power for all phases
             divided by the sum of the apparent power for all phases."                      �"This table contains a list of PDU's power source line/phase
         measurements. The table contains zero, one, or many rows, depending
         upon the number of PDU's Power Sources being monitored.
         The NMS cannot create or delete rows in the table.
         The rows are created by the agent based upon the capabilities of the
         managed PDU's power supply(s).  Each row in the table represents a
         particular phase/line measurement of a power supply for a
         given PDU."                      9"This entry defines the attributes to be populated in the
             various columns of the 'lgpPduPsLineTable'.
             The table is index by three indexes which taken together
             uniquely identify line/phase information for a given power source
             within a PDU.  The 'lgpPduEntryIndex' is an index into the
             'lgpPduTable'.  This identifies the PDU that the power source
             is on.  The 'lgpPduPsEntryIndex' is an index that together with
             the 'lgpPduEntryIndex' uniquely identifies the power source
             within the PDU that the row in this table represents.  The final
             index 'lgpPduPsLineEntryIndex' identifies the particular
             line/phase that the measurement applies to within the identified
             power source."                       �"This is the index that indicates the line/phase of the measurements
             in the given row of the 'lgpPduPsLineTable'."                       �"Unique identifier (within a PDU) for the PDU's power source.
             The object may not be available in non-modular systems."                      !"The line number (phase) that the measurement represents for all
             measurements in a given row of the table.  Note that this always
             matches the lgpPduPsLineEntryIndex of the same row in the table.
             The line/phases are as follows:

              Line#  Description
              -----  ---------------------------------------------------
                 1   Line 1-N (A) for Line-to-Neutral measurements
                 2   Line 2-N (B) for Line-to-Neutral measurements
                 3   Line 3-N (C) for Line-to-Neutral measurements

                 1   Line 1-2 (A-B) for Line-to-Line measurements
                 2   Line 2-3 (B-C) for Line-to-Line measurements
                 3   Line 3-1 (C-A) for Line-to-Line measurements
             "                       �"Alternating Current RMS Line to Neutral Electrical Potential
             measurement.
             The line/phase being measured is indicated by the corresponding
             lgpPduPsLineEntryLine value of this row in the table."                       �"Alternating Current RMS Line to Neutral Electrical Potential
             measurement.
             The line/phase being measured is indicated by the corresponding
             lgpPduPsLineEntryLine value of this row in the table."                       �"Total input line-to-neutral electrical current.
             The line/phase being measured is indicated by the corresponding
             lgpPduPsLineEntryLine value of this row in the table."                       �"Total input line-to-neutral electrical current.
             The line/phase being measured is indicated by the corresponding
             lgpPduPsLineEntryLine value of this row in the table."                      )"The threshold at which an under current alarm is activated.  If
             the measured current (lgpPduPsLineEntryEc) is equal to or below
             this percentage of the full scale rated value
             (lgpPduPsEntryEcInputRated), an under current alarm
             is activated."                      *"The threshold at which an over current warning is activated.  If
             the measured current (lgpPduPsLineEntryEc) is equal to or over
             this percentage of the full scale rated value
             (lgpPduPsEntryEcInputRated), an over current warning
             is activated."                      &"The threshold at which an over current alarm is activated.  If
             the measured current (lgpPduPsLineEntryEc) is equal to or over
             this percentage of the full scale rated value
             (lgpPduPsEntryEcInputRated), an over current alarm
             is activated."                       }"The amount that the current/amperage may increase from its present
             value before an over current alarm occurs."                       `"The percent of current utilization relative to the over current
             alarm threshold."                       �"Line to Line Electrical Potential.
             The line/phase being measured is indicated by the corresponding
             lgpPduPsLineEntryLine value of this row in the table."                       �"Line to Line Electrical Potential.
             The line/phase being measured is indicated by the corresponding
             lgpPduPsLineEntryLine value of this row in the table."                       }"The amount that the current/amperage may increase from its present
             value before an over current alarm occurs."                       �"The line-to-neutral measurement of the Real Power (Watts).
             The line/phase being measured is indicated by the corresponding
             lgpPduPsLineEntryLine value of this row in the table."                       �"The line-to-line measurement of the Real Power (Watts).
             The line/phase being measured is indicated by the corresponding
             lgpPduPsLineEntryLine value of this row in the table."                       �"The line-to-neutral measurement of the Apparent Power (VA).
             The line/phase being measured is indicated by the corresponding
             lgpPduPsLineEntryLine value of this row in the table."                       �"The line-to-line measurement of the Apparent Power (VA).
             The line/phase being measured is indicated by the corresponding
             lgpPduPsLineEntryLine value of this row in the table."                       �"The line-to-neutral measurement of the Power Factor of the
             power source.
             The line/phase being measured is indicated by the corresponding
             lgpPduPsLineEntryLine value of this row in the table."                       �"The line-to-line measurement of the Power Factor of the
             power source.
             The line/phase being measured is indicated by the corresponding
             lgpPduPsLineEntryLine value of this row in the table."                       C"This sub-tree contains information about PDU receptacle branches." Q"The registrations for the objects in this sub-tree are
         defined below."             5"Number of receptacle branches in the lgpPduRbTable."                      �"This table contains a list of PDU Receptacle branches.
         The table contains zero, one, or many rows, depending
         upon the number of PDUs being managed and how many
         receptacle branches each PDU has installed.
         The NMS cannot create or delete rows in the table. The rows are
         created by the agent based upon the capabilities of the PDUs
         being managed.  Each row in the table represents a receptacle branch
         for a given PDU.  The PDU that a branch is installed
         on is indicated by the column lgpPduEntryIndex.  The branch
         within the lgpPduEntryIndex PDU is indicated by the column
         lgpPduRbEntryIndex."                      "This entry defines the attributes to be populated in the
             various columns of the 'lgpPduRbTable'.  The table is indexed
             by both the 'lgpPduEntryIndex' and 'lgpPduRbEntryIndex'.  The
             lgpPduEntryIndex specifies the PDU, defined in the lgpPduTable
             that the branch is on.  The lgpPduRbEntryIndex uniquely identifies
             the branch within that PDU.  Taken together the two indexes
             uniquely identify a branch being monitored by this agent.
            "                       O"This is the index that indicates the row of the
             'lgpPduRbTable'"                       �"A unique id representing the receptacle branch within the
             collection of branches being monitored by this agent.  The
             uniqueness of this id is within the PDUs being managed by
             a single agent."                       ;"A user assigned label representing the receptacle branch."                      )"System assigned identifier for this receptacle branch.  The value
             is independent of any user assigned label or tag. The exact format
             of this label is system dependent and is subject to change,
             therefore, it should not be referenced for programmatic use."                       l"This is a one-based value that indicates the relative
             position of the branch within the PDU."                      "A globally unique serial number for this branch.  This number
             is assigned to the branch at the time of manufacture and can not
             be modified.  NOTE: Generally only PDUs with replaceable
             receptacle branches will have serial numbers."                       ;"This is the model designation for this receptacle branch."                       �"This is the firmware version number of the control software
             running on the receptacle branch.  Only PDUs with
             replaceable receptacle branches will typically support this
             object."                      "This is a user assigned Tag for the receptacle branch.  This
             value may be useful for end-user grouping or asset tracking
             purposes.  The value for this tag does not need to be unique
             for this unit or across other units."                      "This is a user assigned Tag for the receptacle branch.  This
             value may be useful for end-user grouping or asset tracking
             purposes.  The value for this tag does not need to be unique
             for this unit or across other units."                      �"This enumeration represents the type of receptacles installed
             on this receptacle branch.  All receptacles on this branch are
             of this type/style.

             not-specified
                 If this value is returned, either the receptacle type has
                 not been specified/configured or the agent monitoring this
                 PDU does not have a SNMP enumeration defined to the type.
            "                      �"Receptacle branch capabilities describes what an individual branch
             is capable of.

             no-optional-capabilities
                 The branch is unable to report measurements and lacks
                 control capabilities.
             measurement-only
                 The branch is capable of reporting multiple measurements.
             measurement-and-control
                 The branch is capable of reporting multiple measurements
                 and controlling the state.
             control-only
                 The branch is capable of controlling the state.
             current-measurement-only
                 The branch is capable of reporting the current/amperage only.
             current-measurement-and-control
                 The branch is capable of reporting the current/amperage and
                 has the ability to control the state."                      
#"This represents the line source that is supplying power to this
            receptacle branch.
                not-specified
                    The line source supplying power to the load for this
                    receptacle branch has not been specified/configured.
                line-1-N
                    The load for this receptacle branch is supplied by
                    a line-to-neutral configuration. (line 1 to neutral).
                line-2-N
                    The load for this receptacle branch is supplied by
                    a line-to-neutral configuration. (line 2 to neutral).
                line-3-N
                    The load for this receptacle branch is supplied by
                    a line-to-neutral configuration. (line 3 to neutral).
                line-1-line-2
                    The load for this receptacle branch is supplied by
                    a line-to-line configuration (line 1 to line 2).
                line-2-line-3
                    The load for this receptacle branch is supplied by
                    a line-to-line configuration (line 2 to line 3).
                line-3-line-1
                    The load for this receptacle branch is supplied by
                    a line-to-line configuration (line 3 to line 1).
                line-1-line-2-and-line-1-neutral
                    The load for this mixed receptacle branch is supplied by
                    a line-to-line and line-to-neutral configuration
                    (line 1 to line 2 and line 1 to neutral).
                line-2-line-3-and-line-2-neutral
                    The load for this mixed receptacle branch is supplied by
                    a line-to-line and line-to-neutral configuration
                    (line 2 to line 3 and line 2 to neutral).
                line-3-line-1-and-line-3-neutral
                    The load for this mixed receptacle branch is supplied by
                    a line-to-line and line-to-neutral configuration
                    (line 3 to line 1 and line 3 to neutral).
                unknown-line-neutral
                    The load for this branch is supplied by
                    a line-to-neutral configuration. The system is unable to
                    determine which lines are supporting the load.
                unknown-line-line
                    The load for this branch is supplied by
                    a line-to-line configuration. The system is unable to
                    determine which lines are supporting the load.
            "                       6"The number of receptacles on this receptacle branch."                       �"Rated Line Voltage for the receptacle branch and its associated
             receptacles (i.e. This is the nominal line voltage that is
             available to the connected load; it is NOT a measured voltage.)"                       d"This is the rated input line current for the module
            (it is NOT the measured current)."                       o"This is the rated electrical frequency for the receptacle branch
             and its associated receptacles"                      �"Total accumulated energy, measured at the receptacle branch input,
             since the last energy reset. Writing a value of 0 (zero) to this
             causes the accumulated energy to be reset. Writing a non-zero
             value is invalid and shall result in a write error and the
             total energy value remains unchanged.

             If the energy has not been reset and has not wrapped, then this
             is the total energy since installation.

             This value persists across boot events.

             NOTE: Resetting this value does not reset the values for the
             individual receptacles."                       v"The line-to-neutral measurement of the Electrical Potential
             measured in Volts RMS (Root Mean Squared)."                       ="The line-to-neutral measurement of the Real Power (Wattage)"                       <"The line-to-neutral measurement of the Apparent Power (VA)"                       f"The line-to-neutral measurement of the Power Factor of the
             receptacle branches' input."                       v"The line-to-neutral measurement of the Electrical Current
             measured in Amperes RMS (Root Mean Squared)."                      "The threshold at which an under current alarm is activated.  If
             the measured current (lgpPduRbEntryEc) is equal to or below
             this percentage of the full scale rated value
             (lgpPduRbEntryEcRated), an under current alarm
             is activated"                       "The threshold at which an over current warning is activated.  If
             the measured current (lgpPduRbEntryEc) is equal to or over
             this percentage of the full scale rated value
             (lgpPduRbEntryEcRated), an over current warning
             is activated"                      "The threshold at which an over current alarm is activated.  If
             the measured current (lgpPduRbEntryEcLN) is equal to or over
             this percentage of the full scale rated value
             (lgpPduRbEntryEcRated), an over current alarm
             is activated"                       }"The amount that the current/amperage may increase from its present
             value before an over current alarm occurs."                       `"The percent of current utilization relative to the over current
             alarm threshold."                       s"The line-to-line measurement of the Electrical Potential
             measured in Volts RMS (Root Mean Squared)."                      "The configuration parameter to enable or disable the Branch
            SW Over Current Protection feature.If the feature is enabled, in case of Over Current Warning or Alarm condition, following action will be taken on the receptacles:
            Locked & On - No Change
            Locked & Off - No Change
            Unlocked & Off - Turn it Off and Lock it
            Unlocked & On - If load present, No Change. If no load, turn it Off and Lock it.
            No action will be taken if the feature is disabled.
            Note: Only applicable to PDU models where receptacle measurement and control is possible. Not applicable to branch monoitoring models

         disabled
              This function is disabled.
         enable
              This function is enabled."                      9"This table contains a list of PDU receptacle branch line/phase
         measurements. The table contains zero, one, or many rows, depending
         upon the number of PDUs and the number of receptacle branches
         on each PDU that are being monitored.

         The NMS cannot create or delete rows in the table.
         The rows are created by the agent based upon the capabilities of the
         PDU(s) being monitored.  Each row in the table represents a
         particular phase/line measurement of a PDU Receptacle
         Branch.

         Rows in the table are uniquely identified by three indexes representing
         respectively the PDU (lgpPduEntryIndex), the receptacle
         branch (lgpPduRbEntryIndex) and the line/phase being
         measured (lgpPduRbLineEntryIndex).
         "                      "This entry defines the attributes to be populated in the
             various columns of the 'lgpPduRbLineTable'.  The table is
             indexed by three indexes.  The 'lgpPduEntryIndex' references
             a PDU in the 'lgpPduTable' to which this receptacle branch
             line/phase measurement belongs.  The 'lgpPduRbEntryIndex' together
             with the 'lgpPduEntryIndex' references the receptacle branch
             in the 'lgpPduRbTable'.  The 'lgpPduRbLineEntryIndex' represents
             the line/phase of the measurements in the row of this table.
             Together these three indexes uniquely identify a phase/line
             measurement on a receptacle branch within a PDU being monitored
             by this agent.
            "                       S"This is the index that indicates the row of the
             'lgpPduRbLineTable'"                       %"Runtime assigned branch identifier."                      �"The line number or phase that the measurement for this
             receptacle branch represents for each measurement in this row of
             the table.  The phases are as follows:
              Line#  Description
              -----  ---------------------------------------------------
                 1   Line 1-N (A) for Line-to-Neutral measurements
                 2   Line 2-N (B) for Line-to-Neutral measurements
                 3   Line 3-N (C) for Line-to-Neutral measurements

                 1   Line 1-2 (A-B) for Line-to-Line measurements
                 2   Line 2-3 (B-C) for Line-to-Line measurements
                 3   Line 3-1 (C-A) for Line-to-Line measurements
             "                       v"The line-to-neutral measurement of the Electrical Potential
             measured in Volts RMS (Root Mean Squared)."                       v"The line-to-neutral measurement of the Electrical Potential
             measured in Volts RMS (Root Mean Squared)."                       v"The line-to-neutral measurement of the Electrical Current
             measured in Amperes RMS (Root Mean Squared)."                       ="The line-to-neutral measurement of the Real Power (Wattage)"                       <"The line-to-neutral measurement of the Apparent Power (VA)"                       f"The line-to-neutral measurement of the Power Factor of the
             receptacle branches' input."                       v"The line-to-neutral measurement of the Electrical Current
             measured in Amperes RMS (Root Mean Squared)."                      #"The threshold at which an under current alarm is activated.  If
             the measured current (lgpPduRbLineEntryEc) is equal to or below
             this percentage of the full scale rated value
             (lgpPduRbEntryEcRated), an under current alarm
             is activated"                      $"The threshold at which an over current warning is activated.  If
             the measured current (lgpPduRbLineEntryEc) is equal to or over
             this percentage of the full scale rated value
             (lgpPduRbEntryEcRated), an over current warning
             is activated"                      ""The threshold at which an over current alarm is activated.  If
             the measured current (lgpPduRbLineEntryEcLN) is equal to or over
             this percentage of the full scale rated value
             (lgpPduRbEntryEcRated), an over current alarm
             is activated"                       }"The amount that the current/amperage may increase from its present
             value before an over current alarm occurs."                       }"The amount that the current/amperage may increase from its present
             value before an over current alarm occurs."                       `"The percent of current utilization relative to the over current
             alarm threshold."                       s"The line-to-line measurement of the Electrical Potential
             measured in Volts RMS (Root Mean Squared)."                       s"The line-to-line measurement of the Electrical Potential
             measured in Volts RMS (Root Mean Squared)."                       ;"This sub-tree contains information about PDU receptacles." Q"The registrations for the objects in this sub-tree are
         defined below."             ."Number of receptacles in the lgpPduRcpTable."                      �"This table contains a list of PDU receptacle entries.
         The table contains numerous rows representing an individual
         receptacle, depending upon the number and configuration of
         the PDU(s) being monitored by the agent.

         The NMS cannot create or delete rows in the table. The rows are
         created by the agent based upon the capabilities of the managed
         PDU(s).  Each row in the table represents a receptacle in
         the system.
         "                      9"This entry defines the attributes to be populated in the
             various columns of the 'lgpPduRcpTable'.  This table is indexed
             by three indexes. The 'lgpPduEntryIndex' references a PDU in
             the 'lgpPduTable' that a given row in this table represents.
             The 'lgpPduRbEntryIndex' together with the 'lgpPduEntryIndex'
             specifies a row in the 'lgpPduRbTable' that the receptacle
             belongs.  The 'lgpPduRcpEntryIndex' identifies the particular
             receptacle within the branch.
            "                       �"This is the index that indicates the receptacle position on the
             receptacle branch.  This along with the other two indexes on the
             lgpPduRcpTable uniquely identify the receptacle in this table."                       6"A runtime assigned receptacle identification number."                       *"User assigned label for this receptacle."                       s"User assigned Tag to assist in identifying or grouping this
             receptacle within the end-users domain."                       s"User assigned Tag to assist in identifying or grouping this
             receptacle within the end-users domain."                      )"System assigned identifier representing the receptacle. The value
             is independent of any user assigned label or tag. The exact format
             of this label is system dependent and is subject to change,
             therefore, it should not be referenced for programmatic use."                       b"A number representing the position of the receptacle within the
             receptacle branch."                       �"The type or form of receptacle.  The enumerations are specified
             in well-known industry standard terms and abbreviations."                      �"This represents the line source that is supplying power to this
             receptacle.
                not-specified
                    The line source supplying power to the load for this
                    receptacle has not been specified/configured.
                line-1-N
                    The load for this receptacle is supplied by
                    a line-to-neutral configuration. (line 1 to neutral).
                line-2-N
                    The load for this receptacle is supplied by
                    a line-to-neutral configuration. (line 2 to neutral).
                line-3-N
                    The load for this receptacle is supplied by
                    a line-to-neutral configuration. (line 3 to neutral).
                line-1-line-2
                    The load for this receptacle is supplied by
                    a line-to-line configuration (line 1 to line 2).
                line-2-line-3
                    The load for this receptacle is supplied by
                    a line-to-line configuration (line 2 to line 3).
                line-3-line-1
                    The load for this receptacle is supplied by
                    a line-to-line configuration (line 3 to line 1).
                unknown-line-neutral
                    The load for this receptacle is supplied by
                    a line-to-neutral configuration. The system is unable to
                    determine which lines are supporting the load.
                unknown-line-line
                    The load for this receptacle is supplied by
                    a line-to-line configuration. The system is unable to
                    determine which lines are supporting the load.
            "                      �"Receptacle capabilities describes what an individual receptacle is
             capable of.

             no-optional-capabilities
                 The receptacle is unable to report measurements and lacks
                 control capabilities.
             measurement-only
                 The receptacle is capable of reporting multiple measurements.
             measurement-and-control
                 The receptacle is capable of reporting multiple measurements
                 and controlling the state.
             control-only
                 The receptacle is capable of controlling the state.
             current-measurement-only
                 The receptacle is capable of reporting the current/amperage
                 only.
             current-measurement-and-control
                 The receptacle is capable of reporting the current/amperage and
                 has the ability to control the state."                       �"Voltage being delivered to the load attached to the receptacle.
             Alternating Current RMS Electrical Potential measurement."                       �"Voltage being delivered to the load attached to the receptacle.
             Alternating Current RMS Electrical Potential measurement."                       �"Current (amperage) being delivered to the load attached to
             the receptacle. Electrical Current is measured in
             Amperes RMS (Root Mean Squared)."                       �"Current (amperage) being delivered to the load attached to
             the receptacle. Electrical Current is measured in
             Amperes RMS (Root Mean Squared)."                       Z"Real Power (watts) being delivered to the load attached to
             the receptacle."                       b"Apparent Power (volt-amps) being delivered to the load
             attached to the receptacle."                       �"Receptacle Power Factor, which is the ratio of real power
             to apparent power (i.e. ratio of watts to volts-amps)."                       c"The measured line frequency being delivered to the load
             attached to the receptacle."                      "Total accumulated energy, measured at the module input, since
             the last energy reset. Writing a value of 0 (zero) to this
             causes the accumulated energy to be reset. Writing a non-zero
             value is invalid and shall result in a write error and the
             total energy value remains unchanged.

             If the energy has not been reset and has not wrapped,
             then this is the total energy since installation.

             This value persists across boot events."                      "The amount of time to wait before power is applied to the
            receptacle after a power strip is turned on or rebooted.
            This can be used to stagger the powering of multiple
            receptacles in order to prevent a large initial current
            draw."                      �"unknown
                The current power state is unknown.
             off
                The current power state of the receptacle is OFF.
             on
                The current power state of the receptacle is ON.
             off-pending-on-delay
                The current power state of the receptacle is OFF.  The power
                will be ON at the expiration of the ON delay of this
                receptacle."                      "The 'Power Up State' defines the state to which the receptacle shall return 
	    after a power cycle of the PDU.
	
	     on
	   	The receptacle shall be switched to the ON state after the power on delay
                timer (lgpPduRcpEntryPwrOnDelay).
	     off
	   	The receptacle shall be in the OFF state upon power cycle. 
             last-state
	   	The receptacle shall be put to the previous state. Again, on state will be 
		effective only after the power on delay (lgpPduRcpEntryPwrOnDelay)."                      �"This object represents the current and persistent (configured)
             power state of the receptacle.  The receptacle can also be
             controlled by writing to this object.
             off
                 The current and persisted (configured) power state of the
                 receptacle is 'off'.  When writing 'off' to this object the
                 receptacle, if ON, will be turned OFF and its persistent
                 (configured) power state will be set to 'off'.
             on
                 The current and persisted (configured) power state of the
                 receptacle is 'on'.  When writing 'on' to this object the
                 receptacle, if 'off', will be turned 'on' and its persistent
                 (configured) power state will be set to 'on'.
             cycle-power
                 The receptacle is currently in a power-cycle state. The
                 power to the receptacle is being turned off momentarily and
                 will then revert to being 'on'.
                 When writing 'cycle-power' to this OBJECT if the receptacle is
                 'on' it will be momentarily turned 'off' and then revert to the
                 'on' state.  The receptacle's persistent (configured) power
                 state will be left unchanged ('on').

                 If the receptacle is OFF writing cycle-power has no
                 affect on the receptacle.
            "                      �"This object represents the locked state of the receptacle.

             unknown
                 The lock state of the receptacle is not known at this time.
             locked
                 If the receptacle is 'locked' then its current persisted
                 (configured) state can not be changed.
             unlocked
                 If the receptacle is 'unlocked', then a user with proper
                 permissions may change the receptacles state."                      %"The threshold at which an under current alarm is activated.  If
             the measured current (lgpPduRbLineEntryEcLL) is equal to or below
             this percentage of the full scale rated value
             (lgpPduRbEntryEcRated), an under current alarm
             is activated"                      &"The threshold at which an over current warning is activated.  If
             the measured current (lgpPduRbLineEntryEcLL) is equal to or over
             this percentage of the full scale rated value
             (lgpPduRbEntryEcRated), an over current warning
             is activated"                      ""The threshold at which an over current alarm is activated.  If
             the measured current (lgpPduRbLineEntryEcLL) is equal to or over
             this percentage of the full scale rated value
             (lgpPduRbEntryEcRated), an over current alarm
             is activated"                       }"The amount that the current/amperage may increase from its present
             value before an over current alarm occurs."                       }"The amount that the current/amperage may increase from its present
             value before an over current alarm occurs."                       `"The percent of current utilization relative to the over current
             alarm threshold."                       �"Receptacle current crest factor, which is the peak amplitude of the
             current waveform divided by the RMS value of the waveform."                       �"Blink the receptacle LED. Writing blinkLED(2) will cause the LED
             to blink for a predefined duration of time. Reading this object
             will always return noAction(1)."                       "The configuration parameter to enable or disable the Receptacle
            SW Over Temperature Protection feature
            If the feature is enabled, in case of Over Temperature Alarm condition,
            following action will be taken on the receptacles:
            Locked & Off - No Change
            Unlocked & Off - No Change
            Unlocked & On - Turn it Off.
            Locked & On - Turn it Off and keep it Locked.

            No action will be taken if the feature is disabled."                      "Receptacle Operating Condition - indicates the condition of the receptacle.

             The operating condition has the following:

             Normal
                 Normal operation without any alarm or warning.
             Alarm
                 An Alarm condition due to over/under current.
             Warning
                 A Warning condition due to over/under current
             Abnormal
                 A condition in which the outlet is in 'Power Off State' but still drawing current."                       t"The configuration parameter can be used by the user to mark a receptacle as
            critical or non-critical."                      ?"The 'Post On Delay' is the time interval (in seconds) that the PDU waits after
            a command is issued to switch ON a receptacle before applying power to the receptacle

            A value of zero implies that there is no delay (i.e. the receptacle is turned on
            immediately on command issue)."                      D"The 'Post Off Delay' is the time interval (in seconds) that the PDU waits after
            a command is issued to switch OFF a receptacle before removing power from the receptacle

            A value of zero implies that there is no delay (i.e. the receptacle is turned off
            immediately on command issue)."                       A"This sub-tree contains information about PDU Auxiliary Sensors." P"The registrations for the objects in this sub-tree are
        defined below."             :"Number of auxiliary sensors in the lgpPduAuxSensorTable."                      �"This table contains a list of the PDU's Auxiliary Sensors.
         The table contains zero, one, or more rows, depending
         upon the number of PDUs being monitored and the number of
         auxiliary sensors installed for each PDU.
         The NMS cannot create or delete rows in the table. The rows are
         created by the agent based upon the capabilities of the PDUs
         being monitored.  Each row in the table represents an auxiliary
         sensor in a PDU."                      �"This entry defines the attributes to be populated in the
             various columns of the 'lgpPduAuxSensorTable'.
             This table is indexed by both the 'lgpPduEntryIndex' which is
             the sole index into the 'lgpPduTable' and the
             'lgpPduAuxSensorIndex'which is a unique identifier for the
             auxiliary sensor attached to the given PDU.  Taken together these
             two indexes uniquely identify an Auxiliary Sensor within this
             agent."                       <"This is the index indicating the nth element of the table."                      �"not-specified
                The type of sensor is unknown.
             temperature
                The sensor in this row of the table measures temperature.
             humidity
                The sensor in this row of the table measures relative humidity.
             temperature-and-humidity
                The sensor in this row of the table measures both temperature
                and relative humidity."                       o"System assigned auxiliary sensor identification number. The value
             assigned is product specific."                       �"Label assigned to the auxiliary sensor at runtime by the system.
             The value is independent of any user assigned label or asset tag."                       �"Auxiliary sensor relative position.  This is a one-based value
             that indicates the sensor's position relative to the sensor string
             connector."                       '"User assigned auxiliary sensor label."                       y"User assigned Tag to assist in identifying or grouping this
             auxiliary sensor within the end-users domain."                       y"User assigned Tag to assist in identifying or grouping this
             auxiliary sensor within the end-users domain."                       k"The temperature sensor's globally unique serial number assigned at
             the time of manufacture."                       h"The humidity sensor's globally unique serial number assigned at
             the time of manufacture."                       ^"Temperature measured at the temperature sensor reported in
             degrees Fahrenheit."                       }"Under temperature alarm threshold.  An alarm is activated if the
             temperature is equal to or below this value."                       |"Over temperature alarm threshold.  An alarm is activated if the
             temperature is equal to or above this value."                       �"Under temperature warning threshold.  A warning is activated if
             the temperature is equal to or below this value."                       "Over temperature warning threshold.  A warning is activated if the
             temperature is equal to or above this value."                       ["Temperature measured at the temperature sensor reported in
             degrees Celsius."                       }"Under temperature alarm threshold.  An alarm is activated if the
             temperature is equal to or below this value."                       |"Over temperature alarm threshold.  An alarm is activated if the
             temperature is equal to or above this value."                       �"Under temperature warning threshold.  A warning is activated if
             the temperature is equal to or below this value."                       "Over temperature warning threshold.  A warning is activated if the
             temperature is equal to or above this value."                       4"Relative Humidity measured at the humidity sensor."                       �"Under relative humidity alarm threshold.  An alarm is activated
             if the relative humidity is equal to or below this value."                       �"Over relative humidity alarm threshold.  An alarm is activated
             if the relative humidity is equal to or above this value."                       �"Under relative humidity warning threshold.  A warning is activated
             if the relative humidity is equal to or below this value."                       �"Over relative humidity warning threshold.  A warning is activated
             if the relative humidity is equal to or above this value."                      2"This table contains a list of the PDU's Auxiliary Sensor Measurements.
         The table contains zero, one, or more rows, depending
         upon the number of PDUs being monitored, the number of auxiliary
         sensors installed for each PDU, and the number of measurements within
         each sensor. The NMS cannot create or delete rows in the table. The
         rows are created by the agent based upon the capabilities of the PDUs
         being monitored.  Each row in the table represents an auxiliary
         sensor measurement in a PDU."                      h"This entry defines the attributes to be populated in the
             various columns of the 'lgpPduAuxMeasTable'.
             This table is indexed by 'lgpPduEntryIndex' which is
             the sole index into the 'lgpPduTable', 'lgpPduAuxSensorIndex' which
             is a unique identifier for the auxiliary sensor attached to the
             given PDU, and 'lgpPduAuxMeasSensorMeasurementIndex' which is the
             measurement's index identified on the sensor. Taken together these
             three indexes uniquely identify an Auxiliary Sensor Measurement
             within this agent."                       Y"This is the index indicating the sensor the measurement is accessed
             from."                       ;"This is the measurement's index identified on the sensor."                      �"not-specified
                The type of measurement is unknown.
             temperature
                The measurement in this row of the table measures temperature.
             humidity
                The measurement in this row of the table measures relative
                humidity.
             door-closure
                The measurement in this row of the table measures the state of a
                door.
             contact-closure
                The measurement in this row of the table measures the state of a
                contact closure.
             differential-pressure
                The measurement in this row of the table measures differential pressure."                       �"Label assigned to the auxiliary sensor at runtime by the system.
             The value is independent of any user assigned label or asset tag."                       3"User assigned auxiliary sensor measurement label."                       �"User assigned Tag to assist in identifying or grouping this
             auxiliary sensor measurement within the end-users domain."                       �"User assigned Tag to assist in identifying or grouping this
             auxiliary sensor measurement within the end-users domain."                       _"The sensor's globally unique serial number assigned at
             the time of manufacture."                       ^"Temperature measured at the temperature sensor reported in
             degrees Fahrenheit."                       }"Under temperature alarm threshold.  An alarm is activated if the
             temperature is equal to or below this value."                       |"Over temperature alarm threshold.  An alarm is activated if the
             temperature is equal to or above this value."                       �"Under temperature warning threshold.  A warning is activated if
             the temperature is equal to or below this value."                       "Over temperature warning threshold.  A warning is activated if the
             temperature is equal to or above this value."                       ["Temperature measured at the temperature sensor reported in
             degrees Celsius."                       }"Under temperature alarm threshold.  An alarm is activated if the
             temperature is equal to or below this value."                       |"Over temperature alarm threshold.  An alarm is activated if the
             temperature is equal to or above this value."                       �"Under temperature warning threshold.  A warning is activated if
             the temperature is equal to or below this value."                       "Over temperature warning threshold.  A warning is activated if the
             temperature is equal to or above this value."                       4"Relative Humidity measured at the humidity sensor."                       �"Under relative humidity alarm threshold.  An alarm is activated
             if the relative humidity is equal to or below this value."                       �"Over relative humidity alarm threshold.  An alarm is activated
             if the relative humidity is equal to or above this value."                       �"Under relative humidity warning threshold.  A warning is activated
             if the relative humidity is equal to or below this value."                       �"Over relative humidity warning threshold.  A warning is activated
             if the relative humidity is equal to or above this value."                      "The state of a door sensor measurement.
                not-specified
                    The door state is unknown.
                open
                    The door is in the open state.
                closed
                    The door is in the closed state."                      R"Configure door state alarms. This object provides the ability to
             select when a door closure measurement should cause an alarm.
                disabled
                    The door state will never result in alarm.
                alarm-when-open
                    Activate an alarm when the door state becomes open."                      <"The state of a contact closure sensor measurement.
                not-specified
                    The contact closure state is unknown.
                open
                    The contact closure is in the open state.
                closed
                    The contact closure is in the closed state."                      *"Configure contact closure state alarms. This object provides the
             ability to select when a contact closure measurement should
             activate an alarm.
                disabled
                    The contact closure state will never result in alarm.
                alarm-when-open
                    Activate an alarm when the contact closure state becomes
                    open.
                alarm-when-closed
                    Activate an alarm when the contact closure state becomes
                    closed."                       C"Pressure difference measured at the differential pressure sensor."                       �"Under differential pressure alarm threshold.  An alarm is activated
             if the differential pressure is equal to or below this value."                       �"Over differential pressure alarm threshold.  An alarm is activated
             if the differential pressure is equal to or above this value."                       �"Under differential pressure warning threshold.  A warning is activated
             if the differential pressure is equal to or below this value."                       �"Over differential pressure warning threshold.  A warning is activated
             if the differential pressure is equal to or above this value."                      �"This table contains a list of the PDU's Auxiliary Sensors
         and their respective 'location' in the lgpPduAuxMeasTable table.
         This table contains 1 row, for potential sensor for each PDU.
         The rows in this table are created by the agent based on the maximum
         number of sensor's supported for each PDU.

         Each row in the table represents an auxiliary sensor, identified by its
         factory assigned serial number and its placement in the lgpPduAuxMeasTable.
         If all serial numbers in this table are empty strings then the
         location of the sensors in the lgpPduAuxMeasTable will default to the
         agent's default placement algorithm.  If sensors in the
         lgpPduAuxMeasTable and are not represented by an entry in this table then
         the location of the unrepresented sensor(s) in the lgpPduAuxMeasTable,
         and other display mediums, will be determined by the agent, but in no
         case will an unrepresented sensor occupy a position reserved for a sensor
         present in this table.  Those unrepresented sensor's display location is
         not guaranteed to be consistent across reboots or rediscovery actions
         on the sensor bus.  Only sensors represented in this table are guarantted
         consistent placement as specified by their index entries (position) in
         this table.

         Note that it is possible to have entries in this table representing sensors
         that may not exist on the given PDU at runtime. These allocated by not present
         sensors will reduce the total number of sensors that can be displayed for
         the given PDU."                      �"This entry defines the attributes to be populated in the
             various columns of the 'lgpPduAuxMeasOrderTable'.
             This table is indexed by 'lgpPduEntryIndex' which is
             the sole index into the 'lgpPduTable' and 'lgpPduAuxMeasSensorIndex'
             which is a unique identifier for the auxiliary sensor attached to the
             given PDU. Taken together these two indexes uniquely
             identify a Auxiliary Sensor within this agent."                       K"Index representing the position within the sensor string on the given PDU"                      �"The sensor's globally unique serial number assigned at
             the time of manufacture.  The sensor represented by this
             serial number will be, if discovered, by the agent placed
             in the lgpPduAuxMeasTable at the location specified by the
             index entries herein.  A empty string in this object indicates
             an open display position that can be occupied by any sensor not
             given a specific display position in this table."                              