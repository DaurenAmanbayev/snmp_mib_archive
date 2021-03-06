          �"The MIB module used to register Liebert POWER related SNMP OIDs.

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

      Author:  Gregory M. Hoge" "201307100000Z" "200811170000Z" "200807020000Z" "200801100000Z" "200602220000Z" D"Added support for GXT4 economic operation mode and outlet control." "Added support for NXL unit." U"Replaced INTEGER with Integer32 (SMIv2).
     Minor spelling fixes and formatting." ["Modified contact email address and removed redundant
    lgpPwrMeasurementPointNumLines." $"Added support for Liebert DS Unit."                           V"This sub-tree is used to register Liebert Power Battery object
        identifiers." �"The registrations for the objects in this sub-tree are
        defined below in the sub-section titled Liebert Power Battery Group."             8"The number of battery modules installed in the device."                       ?"The number of battery modules in the device that have failed."                       8"The number of redundant battery modules in the device."                       5"The number of active battery modules in the device."                       �"The value of the device's estimated minutes of remaining battery
        at which a lgpEventLowBatteryWarning notification will be sent."                       B"The number of battery modules in the device that have a warning."                       $"The number of batteries installed."                       +"The outcome of the previous battery test."                       G"The nominal battery capacity of the system (in minutes) at full load."                       *"The battery float voltage of the system."                       e"The battery voltage threshold at which the batteries are considered
        completely discharged."                       &"The automatic battery test interval."                       2"The time remaining before the next battery test."                      �"The present state of the system's battery charge.
        A value of 'charging' indicates the batteries are currently charging.
        A value of 'discharging' indicates the batteries are currently
        discharging.  A value of 'fullycharged' indicates the batteries are
        charged to their full capacity.  A value of 'notfullycharged' indicates
        the battery charge is neither fully charged, charging or discharging."                       ]"The state of the battery life enhancer.  When 'on', it will
        preserve battery life."                       #"The state of the battery charger."                       T"The mode of the battery charger: 'float' charging or 'equalize'
        charging."                      �"An estimate of the time to battery charge depletion under the present
        load conditions if the utility power is off and remains off, or if it
        were to be lost and remain off.

        NOTE: A UPS is expected to provide a battery time remaining value 
        when not operating on battery. However, if the system is not capable of 
        providing this information, then this point will return 65535 to
        indicate that the value is unavailable."                       -"The present percentage of battery capacity."                       ;"This sub-tree contains items related to battery cabinets."               �"The number of battery cabinets installed with this device.
             Note some devices may not permit writing a value to this object."                      	"The type of battery cabinet(s) installed on this device.
             Enumeration definitions:
                 notSpecified - The type has not been specified in the
                                device's configuration.
                 internal     - Battery cabinets are internal to the device.
                 external     - Device has external battery cabinets installed.
                 lrt          - Long Run Time cabinets.
             Note some devices may not permit writing a value to this object."                      "Battery cabinet rated capacity (tenths of Amp-hours).
             This assumes that each cabinet is of the same type and capacity.
             This is not a sum of the rating for all attached cabinets.
             Note some devices may not permit writing a value to this object."                       o"Battery cell count - lead-acid. The number of cells that comprise 
            the lead acid battery string."                       y"Battery cell count - nickel-cadmium. The number of cells that 
            comprise the nickel-cadmium battery string."                       �"The cumulative battery Amp-hours withdrawn over the life of the
        battery. This value persists across reboots. Typically, this value is
        reset back to zero when the batteries are replaced."                       {"The battery Amp-hours withdrawn during the current/latest
        discharge. This value does not persist across reboots."                       �"The date and time of the last battery discharge. Typically this is the
        time when the discharge starts. This value persists across reboots. 
        The date and time are determined in seconds since the epoch on 
        January 1, 1970."                      J"The date and time when the battery system was put into service.
        This information persists across system reboot events. It is the
        responsibility of Service to reset this date/time when the batteries
        are replaced. The date and time are determined in seconds since the 
        epoch on January 1, 1970."                       �"The total time spent on battery during the current or last discharge.

        NOTE: While not discharging, some systems may display zero instead of
        the last discharge."                       �"The indication of the capacity remaining in the UPS
        system's batteries.

        NOTE: In a single-module system, this point is intended to have the same 
        behavior as the RFC1628 point upsBatteryStatus."                       +"The state of the Battery Circuit Breaker."                       �"This sub-tree registers Liebert Power Measurement object
        identifiers.  The sub-tree contains tables and well known power
        measurement points." �"The registrations for the objects in this sub-tree are defined
         below in the sub-section titled Liebert Power Measurement Group."             �"This sub-tree registers well known Liebert Power Measurement
         Points.  The object identifier names usually imply locations
         where the measurement is taken -- such as 'input', 'output'
         and 'bypass'." �"These well known measurement identifiers are referenced in the
         'lgpPwrMeasurementPointId' column in the
         'lgpPwrMeasurementPointTable'."            �"This sub-tree is used to register a source 1 input as a
            well known measurement point.  It is intended that no sub-trees
            be created below this node.

            Power input to the managed device from power source 1.
            Many power systems contain more than one input source and
            many of them have more than one measurement point per input
            source.  This identifier represents one input source for the
            system but does not necessarily represent the 'first' one.
            The input sources' numbering with respect to
            'lgpPwrSource1Input' etc. may depend on the physical wiring
            of the system when it was installed."              �"This sub-tree is used to register a source 2 input as a
            well known measurement point.  It is intended that no sub-trees
            be created below this node.

            Power input to the managed device from power source 2.
            Many power systems contain more than one input source and
            many of them have more than one measurement point per input
            source.  This identifier represents one input source for the
            system but does not necessarily represent the 'first' one.
            The input sources' numbering with respect to
            'lgpPwrSource2Input' etc. may depend on the physical wiring
            of the system when it was installed."              �"This sub-tree is used to register a source PDU 1 input as a
            well known measurement point.  It is intended that no sub-trees
            be created below this node.

            Power input to the managed device from power distribution
            unit 1. Many power systems contain more than one input source
            and many of them have more than one measurement point per input
            source.  This identifier represents one input source for the
            system but does not necessarily represent the 'first' one.
            The input sources' numbering with respect to
            'lgpPwrSourcePdu1Input' etc. may depend on the physical wiring
            of the system when it was installed."              �"This sub-tree is used to register a source PDU 2 input as a
            well known measurement point.  It is intended that no sub-trees
            be created below this node.

            Power input to the managed device from power distribution
            unit 1.  Many power systems contain more than one input source
            and many of them have more than one measurement point per input
            source.  This identifier represents one input source for the
            system but does not necessarily represent the 'first' one.
            The input sources' numbering with respect to
            'lgpPwrSourcePdu2Input' etc. may depend on the physical wiring
            of the system when it was installed."               �"This sub-tree is used to register the output to the critical
            load as a well known measurement point.  It is intended that
            no sub-trees be created below this node."               �"This sub-tree is used to register a battery as a well known
            measurement point.  It is intended that no sub-trees be created
            below this node."               �"This sub-tree is used to register a bypass as a well known
            measurement point.  It is intended that no sub-trees be created
            below this node."               �"This sub-tree is used to register a DC bus as a well known
            measurement point.  It is intended that no sub-trees be created
            below this node."              "This sub-tree is used to register the output of a
            multi-module system as a well known measurement point.
            It is intended that no sub-trees be created below this node.

            This identifier represents the power related data of the
            system."              �"This sub-tree is used to register the voltage between the 
            most negative and the most postive terminals of a battery
            cabinet. To determine the cabinet being described in a
            multi-cabinet system, this point implements an additional
            two indexes. The first index describes the module the cabinet
            is located in. The second index describes the cabinet
            number. In an SMS(Single-Module System) the first index is
            always 1.

            Example: lgpPwrMeasBatteryCabinet.2.4

            'lgpPwrMeasBatteryCabinet' = Point is a battery cabinet.
                                  '.2' = Cabinet is in the second module.
                                  '.4' = Cabinet number 4"              `"This table contains a list of AC power measurement point entries.
         The table contains zero, one, or many rows, depending upon the number
         of power related measurement points available.  The NMS cannot
         create or delete rows from the table. The rows are created by the
         agent based upon the capabilities of the managed device.  Each row
         in the table represents a series of measurements on a given point
         or location within the system.  Measurement points/locations are
         identified by the object identifier 'lgpPwrMeasurementPointId' in the
         'LgpPwrMeasurementPointEntry' object.  The actual measurement being
         taken at that identified point is identified by the other
         corresponding columns in the LgpPwrMeasurementPointEntry for the
         particular row of the table." �"The measurement points represented by 'lgpPwrMeasurementPointId'
        can be found in the sub-tree lgpPwrWellKnownMeasurementPoints.
        Additional measurement detail on a 'per line' basis is available in
        the lgpPwrLineMeasurementTable"                     �"This entry defines the measurements to be populated in the
             various columns of the 'lgpPwrMeasurementPointTable'."                       {"This is the index that indicates the row of the
            'lgpPwrMeasurementPointTable' for a power measurement point."                      4"An OID representing a well known measurement point.
            These object identifiers indicate a point or location of power
            measurement in a power system.  The OID's name usually
            implies a location of the measurement point such as
            'input', 'output', 'bypass' etc." v"The object identifiers  in this column can be found in the sub-tree
            'lgpPwrWellKnownMeasurementPoints'."                     �"The number of lines on the indicated power measurement point.
             (i.e. the number of phases on the power source being measured.)"                       W"The magnitude of the nominal voltage on the power source being
            measured."                       �"The nominal or configured/expected frequency for the power
             source indicated by 'lgpPwrMeasurementPointId' in the
             corresponding row in the lgpPwrMeasurementPointTable."                       �"The present (actual) frequency for the power source indicated
             by 'lgpPwrMeasurementPointId' in the corresponding row in the
             lgpPwrMeasurementPointTable."                       �"The present apparent AC power for the power source
             indicated by 'lgpPwrMeasurementPointId' in the corresponding row
             in the lgpPwrMeasurementPointTable."                       �"The present AC power for the power source indicated by
            'lgpPwrMeasurementPointId' in the corresponding row in the
             lgpPwrMeasurementPointTable."                       �"The present Power Factor for the power source indicated by
            'lgpPwrMeasurementPointId' in the corresponding row in the
             lgpPwrMeasurementPointTable."                       �"The present number of Watt Hours for the power source indicated by
            'lgpPwrMeasurementPointId' in the corresponding row in the
             lgpPwrMeasurementPointTable."                       �"The percentage of the rated apparent AC power of the power
            source indicated by 'lgpPwrMeasurementPointId' in the corresponding
            row in the lgpPwrMeasurementPointTable."                       �"The present neutral current of the power point indicated by
            'lgpPwrMeasurementPointId' in the corresponding row in the
            lgpPwrMeasurementPointTable."                       �"The present ground current of the power point indicated by
            'lgpPwrMeasurementPointId' in the corresponding row in the
            lgpPwrMeasurementPointTable."                       �"The nominal or configured/expected current of the power point
            indicated by 'lgpPwrMeasurementPointId' in the corresponding row
            in the lgpPwrMeasurementPointTable."                       �"The nominal or configured/expected power factor of the power point
            indicated by 'lgpPwrMeasurementPointId' in the corresponding row
            in the lgpPwrMeasurementPointTable."                       �"The nominal or configured/expected apparent AC power for the power
            source indicated by 'lgpPwrMeasurementPointId' in the corresponding
            row in the lgpPwrMeasurementPointTable."                       �"The nominal or configured/expected true AC power for the power
            source indicated by 'lgpPwrMeasurementPointId' in the corresponding
            row in the lgpPwrMeasurementPointTable."                      �"The present description of the Power Factor for the power source
            indicated by 'lgpPwrMeasurementPointId' in the corresponding row
            in the lgpPwrMeasurementPointTable.  If Leading, the load is said
            to be capacitive and the phase of the current leads the voltage.
            If Lagging, the load is said to be inductive and the phase of the
            current lags the voltage."                      <"A list of power measurements for each phase/line for a given
         power measurement point/location in the 'lgpPwrMeasurementPointTable'.
         The lgpPwrMeasurementPointIndex in this table corresponds to the
         index in the lgpPwrMeasurementPointTable.

         This table contains zero, one, or
         many rows, depending upon the number of power line source objects
         available.  The NMS cannot create or delete rows from the table.
         The rows are created by the agent based upon the capabilities of
         the managed device."                       i"This entry defines the contents of the columns for the table
            'lgpPwrLineMeasurementTable'." �"The lgpPwrMeasurementPointIndex can be found in the
            lgpPwrMeasurementPointTable.  This index identifies the measurement
            point for which the line detail measurement in the table applies."                     ~"This is the index indicating the row of the table
             'lgpPwrMeasurementPointTable' for a power measurement point."                       }"This is the index indicating the row of the table
             'lgpPwrLineMeasurementTable' for a power measurement point."                      3"An OID representing a well known measurement point.
            These object identifiers indicate a point or location of power
            measurement in a power system.  The OID name usually
            implies a location of the measurement point such as
            'input', 'output', 'bypass', etc." �"The object identifiers  in this column can be found in the sub-tree
            'lgpPwrWellKnownMeasurementPoints' and correspond to the entry in
            the table lgpPwrMeasurementPointTable."                     �"The present Line-to-Line voltage measurement for the indicated
             source. The line being measured is given by the
             lgpPwrLineMeasurementIndex [1 = AB, 2 = BC, 3 = CA]."                       �"The present Line-to-neutral voltage measurement for the indicated
             source. The line being measured is given by the
             lgpPwrLineMeasurementIndex where [1 = A, 2 = B, 3 = C]."                       �"The present current measurement for the indicated source. The line
             being measured is given by the 'lgpPwrLineMeasurementIndex' where
             [1 = A, 2 = B, 3 = C]."                       W"The percentage of the power capacity presently being used on this
             line."                       %"The present apparent AC line power."                       ."The present AC line power measured in watts."                       ?"The present total harmonic distortion on the AC line voltage."                       ?"The present total harmonic distortion on the AC line current."                       "The present line K Factor."                       /"The present crest factor of the line current."                       ("The present Power Factor for the line."                      "The present description of the Power Factor for the line.  If
            Leading, the load is said to be capacitive and the phase of the
            current leads the voltage.  If Lagging, the load is said to be
            inductive and the phase of the current lags the voltage."                       �"The maximum voltage measurement recorded for the indicated source
            since the command 'lgpPwrStatisticsReset' was executed."                       �"The minimum voltage measurement recorded for the
            indicated source since the command 'lgpPwrStatisticsReset' was
            executed."                       l"The present reactive AC line power of the power source indicated by
            'lgpPwrMeasurementPoint'."                       0"The present percent load of the AC line power."                       ;"The present voltage measurement for the indicated source."                       _"The percentage of the apparent power capacity presently being
            used on this line."                      f"This table contains a list of DC power measurement point entries.
         The table contains zero, one, or many rows, depending upon the number
         of power related measurement points available.  The NMS cannot
         create or delete rows from the table. The rows are created by the
         agent based upon the capabilities of the managed device.  Each row
         in the table represents a series of measurements on a given point
         or location within the system.  Measurement points/locations are
         identified by the object identifier 'lgpPwrDcMeasurementPointId' in the
         'LgpPwrDcMeasurementPointEntry' object.  The actual measurement being
         taken at that identified point is identified by the other
         corresponding columns in the LgpPwrDcMeasurementPointEntry for the
         particular row of the table.""The measurement points represented by 'lgpPwrDcMeasurementPointId'
        can be found in the sub-tree lgpPwrWellKnownMeasurementPoints.
        Additional measurement detail on a 'per line' basis is available in
        the lgpPwrLineMeasurementTable"                     �"This entry defines the measurements to be populated in the
             various columns of the 'lgpPwrDcMeasurementPointTable'."                       {"This is the index that indicates the row of the
            'lgpPwrMeasurementPointTable' for a power measurement point."                      4"An OID representing a well known measurement point.
            These object identifiers indicate a point or location of power
            measurement in a power system.  The OID's name usually
            implies a location of the measurement point such as
            'input', 'output', 'bypass' etc." v"The object identifiers  in this column can be found in the sub-tree
            'lgpPwrWellKnownMeasurementPoints'."                     �"The identifier used to differentiate between identical thresholds
            for a given point index and point ID in the DC measurements table."                       �"The present DC voltage for the power source indicated by
            'lgpPwrDcMeasurementPointId' in the corresponding row in the
            lgpPwrDcMeasurementPointTable."                       �"The present DC current for the power source indicated by
            'lgpPwrDcMeasurementPointId' in the corresponding row in the
            lgpPwrDcMeasurementPointTable."                       �"The nominal(configured/expected) DC voltage for the power source
            indicated by 'lgpPwrDcMeasurementPointId' in the
            corresponding row in the lgpPwrDcMeasurementPointTable."                       �"The present DC power for the power source indicated by
            'lgpPwrDcMeasurementPointId' in the corresponding row in the
             lgpPwrDcMeasurementPointTable."                      C"This sub-tree registers well known Liebert Power Measurement
         Types.  The object identifier names usually encompass units of
         measure, lines of reference, and device location.  The OID's
         name usually implies a measurement type such as 'voltsAC',
         'current', 'voltsDc', 'VoltsLL', etc."               +"This identifier represents an AC voltage."               *"This identifier represents a DC voltage."               \"This identifier represents a current measurement in Amps on the
            neutral line."               �"This sub-tree registers Liebert Power Status object
        identifiers.  This is the location of power related status information
        that does not fit into a more specific category such as the
        lgpPwrConversion sub-tree." �"The registrations for the objects in this sub-tree are defined
         below in the sub-section titled Liebert Power Status Group"             i"Number of times that the output load has been transferred between the
        available input sources."                       n"The required wait time between output load auto transfer attempts
         between available input sources."                       �"The ability to retransfer the output load automatically to the well
        known measurement source from the 'lgpPwrWellKnownMeasurements'
        sub-tree that is the preferred input source of the system"                       A"The phase angle difference of source 1 in relation to source 2."                       3"The source supporting the parallel system's load."                       &"The state of the DC to DC converter."                       5"The present source of output power is the Inverter."                       m"The system is adjusting the battery charging algorithm to accommodate
        for the battery temperature."                       G"The ability of the inverter to support the output load of the system."                       3"The present source of output power is the Bypass."                       *"The present state of the boost circuitry"                       )"The present state of the buck circuitry"                       S"The system has previously shutdown due to an over temperature
        condition."                       C"The system has previously shutdown due to an over load condition."                       R"The system has previously shutdown due to a DC bus over load
        condition."                       F"The system has previously shutdown due to an output short condition."                       j"The system has previously shutdown due to a condition where the line
        and neutral were reversed."                       D"The system has previously shutdown due to a low battery condition."                       F"The system has previously shutdown due to a remote shutdown command."                       _"The system has previously shutdown due to an under voltage condition
        during startup."                       _"The system has previously shutdown due to a power factor correction
        startup failure."                       B"The system has previously shutdown due external shutdown signal."                       6"The system has a redundant battery module installed."                       ~"The ability of the bypass to support the output load of the system.
        If Yes, the bypass is available to transfer to."                       $"The state of the system generator."                       )"The state of the system rotary breaker."                       C"The state of the power factor correction circuitry of the system."                       �"The phase angle difference between the inverter output and bypass
        source. A positive value means the inverter leads the bypass source.
        A negative value means the inverter lags the bypass source."                       �"The calculated time remaining before bypass static switch shutdown due
        to the present overload condition. If the bypass is not in an overload
        condition, this object returns -1."                      )"The calculated time remaining before inverter shutdown. The calculated
        time of inverter operation remaining for the present overload event.

        Note: If the inverter is not experiencing an overload event this point
        will return 65535 indicating this value is unavailable."                       �"The UPS's output power source (inverter, bypass, or none).
        NOTE: It is possible that the load still has power from the 
        Maintenance Bypass."                       ;"The system input power source (none, utility, generator)."                       �"The current state of the system input. The unit may or may not operate
        normally under 'marginalLow' and 'marginalHigh' states."                       0"The current state of the bypass static switch."                       �"The current operational state of the bypass static switch. The unit may 
        or may not operate normally under 'marginalLow' and 'marginalHigh'
        states."                       �"The current operational state of the DC bus. The unit may or may not 
        operate normally under 'marginalLow' and 'marginalHigh' states."                       �"The current operational state of the output. The unit may or may not 
        operate normally under 'marginalLow' and 'marginalHigh' states."                       �"The current operational state of the inverter. The unit may or may not 
        operate normally under 'marginalLow' and 'marginalHigh' states."                       $"The current state of the inverter."                       %"The current state of the rectifier."                       -"This group contains UPS module information."               a"Number of UPS modules in the system. In a single module system, this
            value is one."                      �"Number of redundant UPS modules in the system. In a single module
            system, the value is zero. This value is dependent upon the present
            load and the number of modules (i.e. the value may change during normal
            operation based upon a load change). This value represents the number
            of extra modules above the minimum needed to support the load."                       @"The state of the Static Bypass Switch Line Disconnect Breaker."                       @"The state of the Static Bypass Switch Load Disconnect Breaker."                       ,"The state of the Input Disconnect Breaker."                       2"The state of the Trap Filter Disconnect Breaker."                       6"The state of the Inverter Output Disconnect Breaker."                       +"The state of the Internal Bypass Breaker."                       ,"The state of the Bypass Isolation Breaker."                       /"The state of the Rectifier Isolation Breaker."                       ."The state of the Maintenance Bypass Breaker."                       1"The state of the Maintenance Isolation Breaker."                       /"The state of the Output Series Static Switch."                       )"The state of the Module Output Breaker."                      "The time remaining before an inverter overload or inverter fault can 
        be cleared and auto retransfer from the bypass to the inverter can take 
        place. 

        Note: If an inverter overload or fault is not taking place, this point
        will return 65535."                      p"The present source of output power.  The enumeration
        none(2) indicates that there is no source of output
        power (and therefore no output power), for example,
        the system has opened the output breaker.

        NOTE: In a single-module system, this point is intended to have the same 
        behavior as the RFC1628 point upsOutputSource."                       /"The state of the Load Bus Synchronizer (LBS)."                       F"This group contains Static Switch circuit breaker state information."               '"The states of Source 1 Input Breaker."                       '"The states of Source 2 Input Breaker."                       ("The states of Source 1 Bypass Breaker."                       ("The states of Source 2 Bypass Breaker."                       "The states of Output Breaker."                       )"The states of Auxiliary Output Breaker."                       +"The states of Source 1 PDU Input Breaker."                       +"The states of Source 2 PDU Input Breaker."                       �"The present state of ECO mode operation,
        on(1) if system is on bypass due to ECO mode operation,
        off(0) any other time."                       R"This sub-tree registers Liebert Power Static Switch object
        identifiers." �"The registrations for the objects in this sub-tree are defined
         below in the sub-section titled Liebert Power Settings Group."             �"The well known measurement source from the
        'lgpPwrWellKnownMeasurements' sub-tree that is the preferred
         input source of the system."                       �"The well known measurement source from the
         'lgpPwrWellKnownMeasurements' sub-tree that is currently
          powering the output (load)."                       }"The nominal voltage deviation between the well known
        measurement source lgpPwrSource1Input and lgpPwrSource2Input."                       �"The percentage of the nominal voltage deviation between the well known
        measurement source lgpPwrSource1Input and lgpPwrSource2Input."                       �"The maximum phase difference (between the well known
         input sources ) in which a transfer to an available input source is
         permitted."                       �"The maximum frequency deviation (between the well known
         input sources ) in which a transfer to an available input source is
         permitted."                      C"A list of power thresholds for a given power measurement at a
        point/location in the system.
        The lgpPwrThresholdType in this table corresponds to the
        type of measurement the high and low thresholds applies to.

        This table contains zero, one, or many rows, depending upon the number
        of 'lgpPwrThresholdPoint' and 'lgpPwrThresholdSubID' available in the
        table.
        The NMS cannot create or delete rows from the table.
        The rows are created by the agent based upon the capabilities of
        the managed device."                       c"This entry defines the contents of the columns for the table
            'lgpPwrThresholdTable'." �"The lgpPwrThresholdType in this table corresponds to the
            type of measurement the high and low thresholds applies to."                     }"This is the index indicating the row of the table
             'lgpPwrLineMeasurementTable' for a power measurement point."                      4"An OID representing a well known measurement point.
            These object identifiers indicate a point or location of power
            measurement in a power system.  The OID's name usually
            implies a location of the measurement point such as
            'input', 'output', 'bypass' etc." �"The object identifiers  in this column can be found in the sub-tree
            'lgpPwrWellKnownMeasurementPoints' and correspond to the
            entry in the table 'lgpPwrThresholdTable'."                     �"This is a sub identifier for the 'lgpPwrThresholdPoint'.
            It indicates the instance number of the well known threshold point."                      �"An OID representing a well known measurement type.
            These object identifiers indicate the type of measurement referenced
            by the row of the table.  These object identifiers can encompass
            units of measure, lines of reference, and device location.
            The OID's name usually implies a measurement type such as
            'voltsAc', 'current', 'voltsDc', 'VoltsLL', etc." �"The object identifiers  in this column can be found in the sub-tree
            'lgpPwrWellKnownThresholdTypes' and correspond to the
            entry in the table lgpPwrThresholdTable."                    �"The high warning threshold of a type of measurement designated by
            the 'lgpPwrThresholdType' at a location designated by the
            'lgpPwrThresholdPoint'.  If multiple thresholds are available at a
            single 'lgpPwrThresholdPoint', of the same 'lgpPwrThresholdType',
            then the 'lgpPwrThresholdSubID' will differentiate between them.
            When this threshold is met, the agent will send a notification."                      �"The high failure threshold of a type of measurement designated by
            the 'lgpPwrThresholdType' at a location designated by the
            'lgpPwrThresholdPoint'.  If multiple thresholds are available at a
            single 'lgpPwrThresholdPoint', of the same 'lgpPwrThresholdType',
            then the 'lgpPwrThresholdSubID' will differentiate between them.
            When this threshold is met, the agent will send a notification."                      �"The low warning threshold of a type of measurement designated by
            the 'lgpPwrThresholdType' at a location designated by the
            'lgpPwrThresholdPoint'.  If multiple thresholds are available at a
            single 'lgpPwrThresholdPoint', of the same 'lgpPwrThresholdType',
            then the 'lgpPwrThresholdSubID' will differentiate between them.
            When this threshold is met, the agent will send a notification."                      �"The low failure threshold of a type of measurement designated by
            the 'lgpPwrThresholdType' at a location designated by the
            'lgpPwrThresholdPoint'.  If multiple thresholds are available at a
            single 'lgpPwrThresholdPoint', of the same 'lgpPwrThresholdType',
            then the 'lgpPwrThresholdSubID' will differentiate between them.
            When this threshold is met, the agent will send a notification."                       n"The device will automatically restart when utility power is restored
        following a battery discharge."                      ""The device will automatically delay a certain number of seconds and
        then  restart after utility power is restored following a battery
        discharge.  The number of seconds to delay is subject to the precision
        of the device and should be kept to 10 second intervals."                       ^"The battery charge percentage required before the device can
        automatically restart."                       /"The number of modules in the parallel system."                       9"The number of redundant modules in the parallel system."                       ["The configuration of Load Bus Synchronization (LBS) between
        independent systems."                       A"The configuration of the economic operation mode of the system."                      +"Automatic battery test option.  If enabled, the battery will be tested
        on a fixed interval.  If disabled, the battery test must be initiated
        by a battery test command.  The interval at which a battery test is
        performed is defined by 'lgpPwrAutomaticBatteryTestInterval'."                       �"The minimum number of redundant power modules that must be present
        before sending a loss of power redundancy alarm.  If 0, there is no
        redundant power functionality."                       �"The minimum number of redundant battery modules that must be present
        before sending an alarm. If 0, the redundant battery module alarm is 
        disabled."                       c"This is the user specified maximum load the device can support
        without sending an alarm."                      d"The minimum current draw on the output in which the device considers
         there to be a load present on the output.  The condition
         lgpConditionWarningNoLoadDetected will be triggered if the output
         current falls below this value.  If this value is '-1' then the
         lgpConditionNoLoadDetectedWarning condition is 'disabled'."                       �"The amount of time to delay before annunciation of the condition
         lgpConditionNoLoadDetectedWarning after the output current load
         falls below the threshold lgpPwrOutputNoLoadWarningLimit."                       �"The configuration of the economic operation mode of the system.
         Note that this supersedes lgpPwrEconomicOperationMode in newer devices."                       Y"This sub-tree is used to register Liebert Power Conversion object
        identifiers." �"The registrations for the objects in this sub-tree are
        defined below in the sub-section titled Liebert Power Conversion Group."             6"The number of power modules installed in the device."                       ="The number of power modules in the device that have failed."                       @"The number of redundant power modules installed in the device."                       3"The number of active power modules in the device."                       @"The number of power modules in the device that have a warning."                       \"The output to the load is supported by the bypass and the inverter is
        on standby."                       V"This sub-tree is used to register Liebert Power Control object
        identifiers." �"The registrations for the objects in this sub-tree are
        defined below in the sub-section titled Liebert Power Control Group."             �"This sub-tree registers well known Liebert Power Control
         Points.  The object identifier names usually imply locations
         where control of a device is available -- such 'output' or
         'load circuits'." �"These well known control identifiers are referenced in the
         'lgpPwrLoadCircuitId' column in the
         'lgpPwrLoadCircuitTable'."            �"The managed device's controllable load circuit.
                 Many power systems contain more than one load circuit.
                 This identifier represents one load circuit for the
                 system but does not necessarily represent the 'first' one.
                 The load circuits' numbering with respect to
                 'lgpPwrLoadCircuit1' etc. may depend on the physical wiring
                 of the system when it was installed."               �"A list of load circuits that can be controlled(opened or closed).
        The NMS cannot create or delete rows from the table.
        The rows are created by the agent based upon the capabilities of
        the managed device."                       e"This entry defines the contents of the columns for the table
            'lgpPwrLoadCircuitTable'."                       Z"This is the index indicating the row of the table
            'lgpPwrLoadCircuitTable'."                       �"An OID representing a well known load circuit identifier.
            These load circuit identifiers indicate the name or type of load
            circuit reference in the table." v"The object identifiers  in this column can be found in the sub-tree
            'lgpPwrWellKnownMeasurementPoints'."                     �"This is a sub identifier for the 'lgpPwrLoadCircuitId'.
            It indicates the hardware identifier of the load control circuit."                       �"This identifier indicates the state of the load circuit.
            When read, only a closed or open response will be returned.
            When written to, the state of the circuit will transition to
            desired state."                       �"This identifier indicates the state of the load circuit.
            When read, only a closed or open response will be returned.
            When written to, the state of the circuit will transition to
            desired state."                      ""Audible Alarm Silence Command.  This command turns off the device's
        audible alarm.  It will not affect the status of the alarm(s) that
        caused the audible alarm.  This command should be sent with a
        parameter of 1.  This variable doesn't return a value when read."                       �"Battery Test Command.  This command will initiate a battery test if
        one is not already in progress, or abort the current test if it is in
        progress."                      �"UPS Abort command.  This command will abort the pending command on the
        device.  There is no guarantee a client using the abort command will
        cancel a command sent moments before from the same client.
        Another client could initiate a command and change what command is
        actually pending on the device.  This command should be sent with a
        parameter of 1.  This variable doesn't return a value when read."                       �"Transfer to Bypass Command. This command will initiate a transfer of
        the load to the bypass of the system.  This command should be sent with a
        parameter of 1.  This variable doesn't return a value when read."                       �"Transfer to Inverter Command. This command will initiate a transfer
        of the load to the inverter of the system.  This command should be sent
        with a parameter of 1.  This variable doesn't return a value when read."                       �"Output On Delay Command.  This command will turn on the output of the
        device after a user specified delay.  The number of seconds to delay
        is subject to the precision of the device and should be kept to 10
        second intervals."                      g"Output Off Delay with Restart Command.  This command will turn off the
        output of the device after a user specified delay.  The number
        of seconds to delay is subject to the precision of the device and
        should be kept to 10 second intervals.  The device will then
        turn the output on again after a specified amount of time.  "                      `"Output Off Delay without Restart Command.  This command will turn off
        the output of the device after a specified delay.  The number of seconds
        to delay is subject to the precision of the device and should be kept
        to 10 second intervals.  The device will NOT automatically turn the
        output on following this command."                       W"This sub-tree is used to register Liebert Power Topology object
        identifiers." �"The registrations for the objects in this sub-tree are
        defined below in the sub-section titled Liebert Power Topology Group."            ""The UPS has an offline topology.  Under normal operating conditions,
        AC power from the utility passes straight through the UPS
        to the critical load.  The inverter is used to convert the DC power
        from the battery to create AC power to support the load when the
        utility fails. Normally the inverter is operating in the stand-by mode,
        keeping the batteries charged. Should the utility power go out of
        specification, the inverter will power the load by drawing energy from
        the battery."                      �"The UPS has a line-interactive topology.  This topology
        resembles the offline product, but inserts a transformer or inductor
        in series between the utility power source and the load. This inline
        inductor enables the UPS inverter to interact with incoming power
        and provide a measure of power conditioning to the load. This
        buck-and-boost circuitry helps with high and low input voltage
        conditions."                       D"The system has separate input sources for the bypass and inverter."                       '"The system has a frequency converter."                       %"The system has a voltage converter."                       %"The maximum device system capacity."                       6"The device has a redundant control module installed."                       A"Indicates whether the input isolation transformer is installed."                       >"Static switch type (N/A, continous duty, or momentary duty)."                      �"UPS module type. 
            SMS   -- Single Module System
            1 + 1 -- Redundant system for capacity 
            1 + N -- Distributed multi-module system 
            N + 1 -- A multi-module system with one bypass for the system
            SCC   -- System Control Cabinet used in an N+1 system to
                     provide a single bypass for the system. 
            MSS   -- Main Static Switch"                      �"Bypass input wire physical wiring configuration.
            singlePhase2WireL1WithReturn
                Single phase input with 2 wires (Line 1, and Return).
            twoPhase2WireL1L2
                Two phase input with 2 wires (Line 1, and Line 2).
            twoPhase3WireL1L2WithNeutral
                Two phase input with 3 wires (Line 1, Line 2, and Neutral)
            threePhase3WireL1L2L3
                Three phase input with 3 wires (Line 1, Line 2, and Line 3)
            threePhase4WireL1L2L3WithNeutral
                Three phase input with 4 wires (Line 1, Line 2, Line 3, and 
                Neutral)."                      �"Output wire physical wiring configuration.
            singlePhase2WireL1WithReturn
                Single phase output with 2 wires (Line 1, and Return).
            twoPhase2WireL1L2
                Two phase output with 2 wires (Line 1, and Line 2).
            twoPhase3WireL1L2WithNeutral
                Two phase output with 3 wires (Line 1, Line 2, and Neutral)
            threePhase3WireL1L2L3
                Three phase output with 3 wires (Line 1, Line 2, and Line 3)
            threePhase4WireL1L2L3WithNeutral
                Three phase output with 4 wires (Line 1, Line 2, Line 3, and 
                Neutral)."                       >"Indicates whether the rectifier passive filter is installed."                       D"Indicates whether the rectifier input passive filter is installed."                       ="Indicates whether the rectifier active filter is installed."                       X"This sub-tree is used to register Liebert Power Statistic object
        identifiers." �"The registrations for the objects in this sub-tree are
        defined below in the sub-section titled Liebert Power Statistic Group."             �"The number of occurrences where the input line voltage has fallen below
        a pre-determined threshold for a specified amount of time.  This number
        resets when the command 'lgpPwrStatisticsReset' is executed."                       �"The number of occurrences where there is a total loss of electric power.
        This number resets when the command 'lgpPwrStatisticsReset' is
        executed."                       �"The number of occurrences where the input line voltage spikes above a
        pre-determined threshold for a specified amount of time.  This number
        resets when the command 'lgpPwrStatisticsReset' is executed."                       8"The number of battery discharges since the last reset."                       C"The total accumulated time spent on battery since the last reset."                       U"The total accumulated Amp-hours removed from the battery since last
        reset."                       �"The total accumulated Watt-Hours removed from the battery since last
        reset.  This command should be sent with a parameter of 1.  This
        variable doesn't return a value when read."                       �"Battery statistics clear command.  The command to reset all battery
        statistics stored by the device.  This command should be sent with a
        parameter of 1.  This variable doesn't return a value when read."                       �"Reset Power Statistics Command.  This command will reset the power
        statistics stored in the system.  This command should be sent with a
        parameter of 1.  This variable doesn't return a value when read."                       ]"This sub-tree is used to register Liebert Power Configuration
         Object identifiers." �"The registrations for the objects in this sub-tree are
        defined below in the sub-section titled Liebert Power Configuration
        Group."             %"The current device system capacity."                       "The module mode of the UPS."                       �"System output maximum amperage rating. The maximum rated amperage for 
        the system. This value is based upon the model type and is typically 
        limited by the wiring, breakers, power devices, etc."                       G"Rectifier pulse count per waveform cycle (6-, 12-, 18-, or 24-pulse)."                      