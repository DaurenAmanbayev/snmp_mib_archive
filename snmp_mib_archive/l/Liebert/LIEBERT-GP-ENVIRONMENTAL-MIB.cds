                           T"This sub-tree is used to register Liebert temperature object
        identifiers." �"The registrations for the objects in this sub-tree are
        defined below in the sub-section titled Liebert Environmental
        Temperature Group."             f"Liebert well known temperature objects are identified by OIDs that
        reside in this sub-tree."               3"Temperature measurement used as control feedback."               ("Temperature measurement of return air."               ("Temperature measurement of supply air."               ""Ambient temperature measurement."               *"Temperature measurement of the inverter."               )"Temperature measurement of the battery."               4"Temperature measurement of the AC-to-DC Converter."               C"Temperature measurement of the power factor correction circuitry."               -"Temperature measurement of the transformer."               6"Temperature measurement of local temperature sensor."               :"Temperature and humidity measurements of Local Sensor 1."               :"Temperature and humidity measurements of Local Sensor 2."               :"Temperature and humidity measurements of Local Sensor 3."               G"Temperature and humidity measurements of a digital Scroll Compressor."               V"Temperature and humidity measurements of a digital Scroll
            Compressor 1."               V"Temperature and humidity measurements of a digital Scroll
            Compressor 2."               3"Temperature measurements of a chill water system."               @"Temperature measurements of an environmental system's coolant."               "Enclosure temperature sensors"                "Enclosure temperature sensor 1"                "Enclosure temperature sensor 2"                "Enclosure temperature sensor 3"                "Enclosure temperature sensor 4"                "Temperature outside enclosure."               h"The calculated temperature outside of the enclosure at which
        condensation is likely to occur."               ""Temperature inside of enclosure."               �"The current temperature set-point which is computed by the system and
         may be temporarily different from the user set-point because of
         external factors."               `"External sensors to monitor environmental variables such as 
        temperature and humidity"               T"Temperature and humidity measurements from external air
                sensor A."               1"Dewpoint temperature for External Air Sensor A."               T"Temperature and humidity measurements from external air
                sensor B."               1"Dewpoint temperature for External Air Sensor B."               6"The current temperature of the fluid being supplied."               <"The current temperature of the refrigerant being supplied."               �"The minimum desired room air temperature. If the room air temperature
         falls below this set point, the unit will reduce the cooling."               U"This sub-tree identifies well-known dew point temperatures in the
         system."               :"Dew point temperature measured at the inlet of the unit."               "This sub-tree contains OIDs that are used to control and monitor
        temperature using the Fahrenheit temperature scale." �"The registrations for the objects in this sub-tree are defined below
        in the sub-section titled Liebert Environmental Fahrenheit Temperature
        Group."             �"The temperature setting used to control the well known temperature
        object 'lgpEnvControlTemperature'.  This setting is cloned in
        'lgpEnvTemperatureSettingDegC' with the value converted to Celsius."                       �"The acceptable variance from 'lgpEnvTemperatureSettingDegF', without
        initiating a control action.  This setting is cloned in
        'lgpEnvTemperatureToleranceDegC' with the value converted to Celsius."                      �"A list of temperature table entries.  The table contains zero, one,
        or many rows, depending upon the number of temperature objects
        available.  The NMS cannot create or delete rows from the table. The
        rows are created by the agent based upon the capabilities of the
        managed device.  The entries in this table are cloned in
        'lgpEnvTemperatureTableDegC' where Fahrenheit values are converted to
        Celsius."                       b"This entry defines the contents of the rows for the table
        'lgpEnvTemperatureTableDegF'."                       d"This OID is used as an index to identify a row in the table
        'lgpEnvTemperatureTableDegF'."                       �"A reference to a temperature description object. The object
        referenced should not be accessible, but rather be used to provide
        a unique description of the temperature."                       !"The measured temperature value."                       �"The high temperature notification threshold.  This is the maximum
        value of 'lgpEnvTemperatureMeasurementDegF' before the agent sends a
        notification."                       �"The low temperature notification threshold.  This is the minimum
        value of 'lgpEnvTemperatureMeasurementDegF' before the agent sends a
        notification."                      <"The temperature setting for the well known
        'lgpEnvTemperatureDescrDegF' point.  This setting may or may not be
        the setting used from control.  Some systems have the capability to
        dynamically change the control setting based on environmental
        conditions and/or user configuration."                       )"The daily high temperature measurement."                       ("The daily low temperature measurement."                       `"The hours digit of the time corresponding to the daily high
         temperature measurement."                       b"The minutes digit of the time corresponding to the daily high
         temperature measurement."                       b"The seconds digit of the time corresponding to the daily high
         temperature measurement."                       _"The hours digit of the time corresponding to the daily low
         temperature measurement."                       a"The minutes digit of the time corresponding to the daily low
         temperature measurement."                       a"The seconds digit of the time corresponding to the daily low
         temperature measurement."                       !"The measured temperature value."                       �"The high temperature notification threshold.  This is the maximum
        value of 'lgpEnvTemperatureMeasurementTenthsDegF' before the agent sends a
        notification."                       �"The low temperature notification threshold.  This is the minimum
        value of 'lgpEnvTemperatureMeasurementTenthsDegF' before the agent sends a
        notification."                      <"The temperature setting for the well known
        'lgpEnvTemperatureDescrDegF' point.  This setting may or may not be
        the setting used from control.  Some systems have the capability to
        dynamically change the control setting based on environmental
        conditions and/or user configuration."                       �"The deadband region around the setpoint value 
        (lgpEnvTemperatureSetPointTenthsDegF) where no heating or cooling will occur."                       �"The proportional region below the setpoint value
        (lgpEnvTemperatureSetPointTenthsDegF) where heating will be
        proportionally controlled."                       �"The proportional region above the setpoint value
        (lgpEnvTemperatureSetPointTenthsDegF) where cooling will be
        proportionally controlled."                       �"The allowable deviation above and below the temperature set point
         used to create a no control region, a dead-band, where  heating
         and cooling  control are disabled."                       |"This sub-tree contains OIDs that are used to control and monitor
        temperature using the Celsius temperature scale." �"The registrations for the objects in this sub-tree are defined below
        in the sub-section titled Liebert Environmental Celsius Temperature
        Group."             �"The temperature setting used to control the well known temperature
        object 'lgpEnvControlTemperature'.  This setting is cloned in
        'lgpEnvTemperatureSettingDegF' with the value converted to Fahrenheit."                       �"The acceptable variance from 'lgpEnvTemperatureSettingDegC', without
        initiating a control action.  This setting is cloned in
        'lgpEnvTemperatureToleranceDegF' with the value converted to Fahrenheit."                      �"A list of temperature table entries.  The table contains zero, one,
        or many rows, depending upon the number of temperature objects
        available.  The NMS cannot create or delete rows from the table. The
        rows are created by the agent based upon the capabilities of the
        managed device.  The entries in this table are cloned in
        'lgpEnvTemperatureTableDegF' where Celsius values are converted to
        Fahrenheit."                       b"This entry defines the contents of the rows for the table
        'lgpEnvTemperatureTableDegC'."                       d"This OID is used as an index to identify a row in the table
        'lgpEnvTemperatureTableDegC'."                       �"A reference to a temperature description object. The object
        referenced should not be accessible, but rather be used to provide
        a unique description of the temperature."                       !"The measured temperature value."                       �"The high temperature notification threshold.  This is the maximum
        value of 'lgpEnvTemperatureMeasurementDegC' before the agent sends a
        notification."                       �"The low temperature notification threshold.  This is the minimum
        value of 'lgpEnvTemperatureMeasurementDegC' before the agent sends a
        notification."                      <"The temperature setting for the well known
        'lgpEnvTemperatureDescrDegC' point.  This setting may or may not be
        the setting used from control.  Some systems have the capability to
        dynamically change the control setting based on environmental
        conditions and/or user configuration."                       )"The daily high temperature measurement."                       ("The daily low temperature measurement."                       _"The hours digit of the time corresponding to the daily high
        temperature measurement."                       a"The minutes digit of the time corresponding to the daily high
        temperature measurement."                       a"The seconds digit of the time corresponding to the daily high
        temperature measurement."                       ^"The hours digit of the time corresponding to the daily low
        temperature measurement."                       `"The minutes digit of the time corresponding to the daily low
        temperature measurement."                       `"The seconds digit of the time corresponding to the daily low
        temperature measurement."                       !"The measured temperature value."                       �"The high temperature notification threshold.  This is the maximum
        value of 'lgpEnvTemperatureMeasurementTenthsDegC' before the agent sends a
        notification."                       �"The low temperature notification threshold.  This is the minimum
        value of 'lgpEnvTemperatureMeasurementTenthsDegC' before the agent sends a
        notification."                      <"The temperature setting for the well known
        'lgpEnvTemperatureDescrDegC' point.  This setting may or may not be
        the setting used from control.  Some systems have the capability to
        dynamically change the control setting based on environmental
        conditions and/or user configuration."                       �"The deadband region around the setpoint value 
        (lgpEnvTemperatureSetPointTenthsDegC) where no heating or cooling will occur."                       �"The proportional region below the setpoint value
        (lgpEnvTemperatureSetPointTenthsDegC) where heating will be
        proportionally controlled."                       �"The proportional region above the setpoint value
        (lgpEnvTemperatureSetPointTenthsDegC) where cooling will be
        proportionally controlled."                       �"The allowable deviation above and below the temperature set point
         used to create a no control region, a dead-band, where  heating
         and cooling  control are disabled."                       �"A reference to a temperature description object. The object
        referenced should not be accessible, but rather be used to provide
        a unique description of the temperature object that is used for
        control."                       Q"This sub-tree is used to register Liebert humidity object
        identifiers." �"The registrations for the objects in this sub-tree are
        defined below in the sub-section titled Liebert Environmental
        Humidity Group."             `"Liebert well known humidity objects are defined by OIDs that reside
        in this sub-tree."               0"Humidity measurement used as control feedback."               %"Humidity measurement of return air."               %"Humidity measurement of supply air."               "Humidity outside enclosure."               ^"This sub-tree contains OIDs that are used to control and monitor
        relative humidity." �"The registrations for the objects in this sub-tree are defined below
        in the sub-section titled Liebert Environmental Relative Humidity
        Group."             N"The humidity setting used to control the well known humidity
        point."                       b"Acceptable variance from lgpEnvHumiditySettingRel, without
        initiating a control action."                      ."A list of humidity table entries.  The table contains zero, one,
        or many rows, depending upon the number of humidity objects available.
        The NMS cannot create or delete rows from the table. The rows are
        created by the agent based upon the capabilities of the managed device."                       ]"This entry defines the contents of the rows for the table
       'lgpEnvHumidityTableRel'."                       `"This OID is used as an index to identify a row in the table
        'lgpEnvHumidityTableRel'."                       �"A reference to a humidity description object. The object
        referenced should not be accessible, but rather be used
        to provide a unique description of the humidity."                       "The measured humidity value."                       �"The high humidity notification threshold.  This is the maximum
        value of 'lgpEnvHumidityMeasurementRel' before the agent sends a
        notification."                       �"The low humidity notification threshold.  This is the minimum
        value of 'lgpEnvHumidityMeasurementRel' before the agent sends a
        notification."                      K"The humidity setting used to control the well known humidity
        object 'lgpEnvHumidityDescrRel'.  This setting may or may not be
        the setting used from control.  Some systems have the capability to
        dynamically change the control setting based on environmental
        conditions and/or user configuration."                       /"The daily high relative humidity measurement."                       ."The daily low relative humidity measurement."                       \"The hours digit of the time corresponding to the daily high
        humidity measurement."                       ^"The minutes digit of the time corresponding to the daily high
        humidity measurement."                       ^"The seconds digit of the time corresponding to the daily high
        humidity measurement."                       R"The hours digit of the time corresponding to the daily low humidity measurement."                       ]"The minutes digit of the time corresponding to the daily low
        humidity measurement."                       T"The seconds digit of the time corresponding to the daily low humidity measurement."                       �"The deadband region around the setpoint value 
        (lgpEnvHumiditySetPoint) where no humidifying or dehumidifying will occur."                       �"The proportional region below the setpoint value
        (lgpEnvHumiditySetPoint) where humidifying will be
        proportionally controlled."                       �"The proportional region above the setpoint value
        (lgpEnvHumiditySetPoint) where dehumidifying will be
        proportionally controlled."                       "The measured humidity value."                       �"The high humidity notification threshold.  This is the maximum
        value of 'lgpEnvHumidityMeasurementRelTenths' before the agent sends a
        notification."                       �"The low humidity notification threshold.  This is the minimum
        value of 'lgpEnvHumidityMeasurementRelTenths' before the agent sends a
        notification."                       �"The allowable deviation above and below the humidity set point used
        to create a no control region, a dead-band, where humidifying and
        dehumidifying control are disabled."                       \"This sub-tree is used to register Liebert environmental state object
        identifiers." �"The registrations for the objects in this sub-tree are
        defined below in the sub-section titled Liebert Environmental
        State Group."             ""The present state of the system."                       -"The present state of the cooling subsystem."                       -"The present state of the heating subsystem."                       0"The present state of the humidifier subsystem."                       1"The present state of the dehumidifier subsystem"                       2"The present state of the Econ-o-cycle subsystem."                       &"The present state of the system fan."                       n"The present state of the general alarm output.  This indicates if
        an alarm is active in the system."                       :"The percentage of the cooling capacity presently in use."                       :"The percentage of the heating capacity presently in use."                       0"The present state of the audible alarm output."                       ]"This sub-tree contains OIDs that are used to indicate the status
        of cooling units."               &"The present state of cooling unit 1."                       &"The present state of cooling unit 2."                       &"The present state of cooling unit 3."                       &"The present state of cooling unit 4."                       ]"This sub-tree contains OIDs that are used to indicate the status
        of heating units."               &"The present state of heating unit 1."                       &"The present state of heating unit 2."                       &"The present state of heating unit 3."                       &"The present state of heating unit 4."                       ;"The reason for the current operating state of the system."                       +"The present operating mode of the system."                       6"The percentage of the fan capacity presently in use."                       ?"The percentage of the free cooling capacity presently in use."                       @"The percentage of the dehumidifying capacity presently in use."                       >"The percentage of the humidifying capacity presently in use."                      '"The present state of the system free cooling process of heat
        exchange.  When 'off', free cooling is not in use. When 'on'
        free cooling is in use.  When 'start', free cooling is preparing
        to turn on.  When 'unavailable', the state information is
        unavailable."                       ,"The present state of the electric heaters."                       ("The present state of hot water system."                       Z"The ratio of cooling energy provided to the amount of total energy
         being used."                      �"This table contains a list of the units components that have
        a state associated with them.
        The table contains zero, one, or more rows, depending
        upon the number of components associated with the unit.
        The NMS cannot create or delete rows in the table. The rows are
        created by the agent based upon the capabilities of the units
        being monitored."                       {"This entry defines the attributes to be populated in the
            various columns of the 'lgpEnvComponentStateTable'."                       <"This is the index indicating the nth element of the table."                       �"A reference to a component description object. The object
            referenced should not be accessible, but rather be used
            to provide a unique description of the component being 
            described in the row of the table."                       �"not-specified
                The state of the component is unknown.
             on
                The component is on.
             off
                The component is off."                      �"This table contains a list of the unit valves that have
        information associated with them.
        The table contains zero, one, or more rows, depending
        upon the number of valves associated with the unit.
        The NMS cannot create or delete rows in the table. The rows are
        created by the agent based upon the capabilities of the units
        being monitored."                       r"This entry defines the attributes to be populated in the
            various columns of the 'lgpEnvValveTable'."                       <"This is the index indicating the nth element of the table."                       �"A reference to a valve description object. The object
            referenced should not be accessible, but rather be used
            to provide a unique description of the valve being 
            described in the row of the table."                       �"not-specified
                The state of the component is unknown.
             open
                The valve is open.
             off
                The valve is closed."                       :"This gives a value describing the position of the valve."                       d"This sub-tree is used to register Liebert environmental configuration
        object identifiers." �"The registrations for the objects in this sub-tree are
        defined below in the sub-section titled Liebert Environmental
        Configuration Group."             a"If locked-out the reheats will not operate even if controller calls
        for its operation."                       d"If locked-out the humidifier will not operate even if controller
        calls for its operation."                       �"When utility power is disrupted, this is the delay interval to wait
        before restarting the system after the utility power is restored.
        A Restart Delay of zero denotes a manual restart, the unit will NOT
        automatically restart."                       "When in the disabled state, the remote shutdown feature should
        be locked out.  The enabled state is self-describing."                      ,"The amount of time, in hours, between scheduled maintenance
        of the cooling system.  When the cooling service timer reaches
        this value an lgpConditionServiceCooling will be activated.
        Once service has been completed the cooling service timer
        should be reset to 0."                      -"The amount of time, in hours, between scheduled maintenance
        of the humidifier.  When the humidifier service timer reaches
        this value an lgpConditionServiceHumidifier will be activated.
        Once service has been completed humidifier service timer
        should be reset to 0."                      "The amount of time, in hours, between scheduled maintenance
        of the system filter.  When the filter service timer reaches this
        value an lgpConditionChangeFilter will be activated.  Once service
        has been completed the filter service timer should be reset to 0."                      "The allowable deviation above and below the temperature set point used
         to create a no control region, a dead-band, where  heating and
         cooling  control are disabled.  This dead-band is applied only
         when the system's sleep mode function is in operation."                      "The allowable deviation above and below the temperature set point used
         to create a no control region, a dead-band, where  heating and
         cooling  control are disabled.  This dead-band is applied only
         when the system's sleep mode function is in operation."                       +"The minimum allowable supply temperature."                       +"The minimum allowable supply temperature."                       z"The value used as the integration factor in the proportional
        integral derivative (PID) temperature calculation."                       +"The local temperature unit of the system."                      j"The configured mode of the device's sleep function.  If 'enabled',
        the device will sleep, or not operate, for each 'lgpEnvSleepDay' that
        is enabled and also during the periods defined in the
        'lgpEnvSleepTimeTable' each day.  If 'disabled', the device will
        operate continually and not sleep at all.  If 'auto', the device will
        sleep, or not operate, for each 'lgpEnvSleepDay' that is enabled and
        also during the periods defined in the 'lgpEnvSleepTimeTable' each
        day unless the environmental conditions fall outside the desired
        operation ranges."                       w"The value used as the integration factor in the proportional
        integral derivative (PID) humidity calculation."                       �"The minimum temperature differential between the control
        temperature measurement and the coolant required to utilize
        free-cooling."                       �"The minimum temperature differential between the control
        temperature measurement and the coolant required to utilize
        free-cooling."                       i"The system configuration parameter to enable or disable the supply
        air low  temperature limit."                       ^"The system configuration parameter to enable or disable the standard
        sensor events."                       J"The system configuration parameter to enable or disable sensor 1 events."                       �"The system configuration parameter to enable or disable the use of
        the sleep interval dead-band range in the sleep mode temperature
        calculations and control algorithm."                       �"The system configuration parameter to enable or disable the auto
        configuration feature.  This feature configures temperature and
        humidity control parameters."                      Z"The system configuration parameter that specifies how the system
        will determine if there is enough capacity to initiate free
        cooling. If 'disabled', the system will use the valve temperature
        to initiate free cooling.  If 'contact', a input to the system
        will initiate free cooling.  If 'valve', the system compares the
        room and glycol temperature differential with the valve temperature
        to initiate free cooling.  If the temperature differential is
        greater than or equal to the valve temperature, free cooling will
        be initiated."                       o"The system configuration parameter to enable or disable the minimum
        chill water temperature control."                       �"The Infrared humidifier pan overfill rate.  This parameter configures
        the amount of water that flows into the humidifier pan when the
        'humidifier is in operation."                       Y"The present configured state of the automatic humidity compensation
        algorithm."                       �"The system as locked out the compressor(s).  If locked-out, the
        compressor(s) will not operate even if the controller calls for their
        operation."                       �"The system as locked out the compressor(s).  If locked-out, the
        electrical reheats and humidifier will not operate even if the
        controller calls for their operation."                      "A list of environmental operational time ranges for a given
        environmental unit.  The entries in this table may be duplicated from
        values in the 'lgpEnvStatistics' group.

        This table contains zero, one, or many rows, depending upon the number
        of 'lgpEnvOperationTimePoint' and 'lgpEnvOperationTimeSubID' available
        in the table.

        The NMS cannot create or delete rows from the table.
        The rows are created by the agent based upon the capabilities of
        the managed device."                       i"This entry defines the contents of the columns for the table
            'lgpEnvOperationalTimeTable'." n"The 'lgpEnvOperationTimePoint' in this table corresponds to what
            the operation time applies to."                     <"This is the index indicating the nth element of the table."                      C"An OID representing a well known operation point.
            These object identifiers can indicate a point, location, or mode
            of an operation for which a measurement is recorded.  The OID's
            name usually implies a location of the measurement point such as
            'fan', 'compressor', etc." �"The object identifiers  in this column can be found in the sub-tree
            'lgpEnvWellKnownPoints' and correspond to the entry in the table
            'lgpEnvOperationalTimeTable'."                    d"This is a sub identifier for the 'lgpEnvOperationPoint'.
            It indicates the instance number of the well known operation
            point.  For example, a system could have two fans installed.
            This variable would identify fan 1 with a lgpEnvOperationSubID
            equal to 1 and fan 2 with a lgpEnvOperationSubID equal to 2."                       �"An OID representing a well known operation time unit type.
            These object identifiers indicate the units of the operation time.
            The OID's name usually implies a measurement type such as
            'lgpEnvHours', etc." �"The object identifiers  in this column can be found in the sub-tree
            'lgpEnvWellKnownUnits' and correspond to the
            entry in the table lgpEnvOperationalTimeTable."                    "The actual operation time value of the
            'lgpEnvOperationTimePoint'.
            If multiple operation times are available for a
            'lgpEnvOperationTimePoint' the 'lgpEnvOperationTimeSubID' will
            differentiate between them."                      "The high warning time of the operation designated by the
            'lgpEnvOperationTimePoint'.  If operation times are available at
            a single 'lgpEnvOperationTimePoint' the 'lgpEnvOperationTimeSubID'
            will differentiate between them."                       4"Selects the algorithm for controlling temperature."                       �"Changes the function of the fan speed output.  If auto, then the fan
        speed is modulated.  If manual, the fan speed output follows
        lgpEnvConfigFanSpeedCapacity."                       �"Sets the fan speed output if lgpEnvConfigFanSpeedMode is set to
        'manual'.  Typical values range from 0 to 100% (actual valid ranges may
        differ from unit to unit)."                      �"The current count-down time for a BMS to continue controlling the fan
        speed.  If this value reaches 0, then the condition
        lgpConditionBmsResetTimerExpired will be generated.  If a BMS wants to
        continue controlling the fan speed, it must reset this timer.  Typical
        values range from 0 to 120 minutes (actual valid ranges may differ from
        unit to unit)."                       �"If any of the enclosure temperature sensors
        (lgpEnvEnclosureTemperatureSensors) are outside the average reading by
        this amount, that sensor's readings will not be used."                       �"If any of the enclosure temperature sensors
        (lgpEnvEnclosureTemperatureSensors) are outside the average reading by
        this amount, that sensor's readings will not be used."                       *"Enable or Disable Cabinet Sensor Alarms."                       g"Sensor from which air temperature measurements will be used for
        cooling and heating control."                       ]"Sensor from which air temperature measurements will be used for fan
        speed control."                       ["Sets the minimum fan speed output if lgpEnvConfigFanSpeedMode is set
         to 'Auto'."                       ["Sets the maximum fan speed output if lgpEnvConfigFanSpeedMode is set
         to 'Auto'."                       �"Temperature control band above the temperature set point calculated
         for proportional fan speed control.  If measured air temperature is
         within this band, fan speed operations are proportionally controlled."                       �"Temperature control band above the temperature set point calculated
         for proportional fan speed control.  If measured air temperature is
         within this band, fan speed operations are proportionally controlled."                       _"This sub-tree is used to register Liebert environmental control
         object identifiers." �"The registrations for the objects in this sub-tree are
        defined below in the sub-section titled Liebert Environmental
        Control Group."            "Setting this object will shutdown (i.e., turn off)
        the system after the indicated number of seconds. Setting
        this object to 0 will cause the shutdown to occur
        immediately.  Setting this object to -1 will abort the
        countdown.  If the system is already in the desired
        state at the time the countdown reaches 0, then
        nothing will happen.  When read, lgpEnvControlShutdownAfterDelay
        will return the number of seconds remaining until shutdown,
        or -1 if no shutdown countdown is in effect.  On some systems,
        if the agent is restarted while a shutdown countdown is in effect,
        the countdown may be aborted.  Sets to this object
        override any lgpEnvControlShutdownAfterDelay already in effect."                      �"Setting this object will start the system after the
        indicated number of seconds.  Setting this object to 0 will
        cause the startup to occur immediately.  Setting this
        object to -1 will abort the countdown.  If the system
        is already on at the time the countdown reaches 0,
        then nothing will happen.  Sets to this object
        override the effect of any lgpEnvControlStartupAfterDelay
        countdown in progress.  When read, lgpEnvControlStartupAfterDelay
        will return the number of seconds until startup, or -1 if no
        startup countdown is in effect.  On some systems, if the agent
        is restarted while a startup countdown is in effect, the
        countdown is aborted."                      *"A sleep time interval table containing a list of the start and stop
        times to be used to take a device online or offline.

        The NMS cannot create or delete rows from the table.
        The rows are created by the agent based upon the capabilities of
        the managed device."                       k"This entry defines the contents of the columns for the table
            'lgpEnvSleepIntervalTimeTable'."                       a"This is the index indicating the row of the table
             'lgpEnvSleepIntervalTimeTable'."                      Y"This is a sub identifier for each 'lgpEnvSleepIntervalTimeEntry'.
            It indicates the instance number of the
            'lgpEnvSleepIntervalTimeEntry'.
            For example, a system could have two sleep intervals and the first
            interval's sub ID would be 1 and the second interval's sub ID
            would be 2."                       V"This is the hours digit of the time when the system will be put
            online."                       X"This is the minutes digit of the time when the system will be put
            online."                       a"This is the hours digit containing the time when the system will
            be taken offline."                       c"This is the minutes digit containing the time when the system
            will be taken offline."                      "A sleep table containing a list of the days of the week the system
        will be offline.

        The NMS cannot create or delete rows from the table.
        The rows are created by the agent based upon the capabilities of
        the managed device."                       b"This entry defines the contents of the columns for the table
            'lgpEnvSleepDayTable'."                       X"This is the index indicating the row of the table
             'lgpEnvSleepDayTable'."                       ]"This is a sub identifier for the day of the week within
            'lgpEnvSleepDayTable'."                       �"The all day sleep functionality has been enabled for the
            corresponding 'lgpEnvSleepDay' in the 'lgpEnvSleepDayTable'."                       `"This sub-tree is used to register Liebert environmental statistic
        object identifiers." �"The registrations for the objects in this sub-tree are
        defined below in the sub-section titled Liebert Environmental
        Statistics Group."             t"Accumulated run hours of compressor 1.  This value may be duplicated
        in the 'lgpEnvOperationalTimeTable'."                       t"Accumulated run hours of compressor 2.  This value may be duplicated
        in the 'lgpEnvOperationalTimeTable'."                       u" Accumulated run hours of the main fan.  This value may be duplicated
        in the 'lgpEnvOperationalTimeTable'."                       w" Accumulated run hours of the humidifier.  This value may be
        duplicated in the 'lgpEnvOperationalTimeTable'."                       x"Accumulated run hours of reheat element 1.  This value may be
        duplicated in the 'lgpEnvOperationalTimeTable'."                       x"Accumulated run hours of reheat element 2.  This value may be
        duplicated in the 'lgpEnvOperationalTimeTable'."                       x"Accumulated run hours of reheat element 3.  This value may be
        duplicated in the 'lgpEnvOperationalTimeTable'."                       �"Accumulated run hours while lgpEnvStateCooling is on(1).
        This value may be duplicated in the 'lgpEnvOperationalTimeTable'."                       �"Accumulated run hours while lgpEnvStateHeating is on(1).
        This value may be duplicated in the 'lgpEnvOperationalTimeTable'."                       �"Accumulated run hours of the humidifying process of the system.
        This value may be duplicated in the 'lgpEnvOperationalTimeTable'."                       �"Accumulated run hours of the dehumidifying process of the system.
        This value may be duplicated in the 'lgpEnvOperationalTimeTable'."                       z"Accumulated run hours of the hot gas system.  This value may be
        duplicated in the 'lgpEnvOperationalTimeTable'."                       |"Accumulated run hours of the hot water system.  This value may be
        duplicated in the 'lgpEnvOperationalTimeTable'."                       �"Accumulated run hours of the free cooling process.  This value may
        be duplicated in the 'lgpEnvOperationalTimeTable'."                       )" Accumulated run hours of compressor 3."                       )" Accumulated run hours of compressor 4."                       \"This sub-tree is used to register Liebert environmental point
        object identifiers." �"The registrations for the objects in this sub-tree are
        defined below in the sub-section titled Liebert Environmental
        point Group."             �"This sub-tree registers well known Liebert Environmental Points.
         The object identifier names usually encompass a process, or location,
         where measurements are recorded or where values are applied."               @"This identifier represents a well known fan measurement point."               T"This identifier represents a well known compressor measurement
            point."               Y"This identifier represents a well known electric heater measurement
            point."               W"This identifier represents a well known chilled water measurement
            point."               T"This identifier represents a well known humidifier measurement
            point."               V"This identifier represents a well known dehumidifier measurement
            point."               X"This identifier represents a well known free-cooling measurement
            process."               S"This identifier represents a well known hot water measurement
            point."               Q"This identifier represents a well known hot gas measurement
            point."              �"This identifier represents a well known cabinet point.
            To determine the cabinet being described in a multi-cabinet system, 
            this point implements two additional indexes. The first index 
            describes the module being supplied with battery power. The second 
            index identifies the number of the battery cabinet, which is 
            typically a sequential number.

            Example: lgpPwrMeasBatteryCabinet.2.4

            'lgpEnvBatteryCabinetPoint' = Point is a battery cabinet.
                                   '.2' = Cabinet is in the second module.
                                   '.4' = Cabinet number 4"               :"This sub-tree identifies well-known pumps in the system."               $"This identifier represents pump 1."               $"This identifier represents pump 2."               @"This sub-tree identifies well-known compressors in the system."               *"This identifier represents compressor 1."               +"This identifier represents compressor 1A."               +"This identifier represents compressor 1B."               *"This identifier represents compressor 2."               +"This identifier represents compressor 2A."               +"This identifier represents compressor 2B."               ;"This sub-tree identifies well-known valves in the system."               -"This identifier represents hot gas valve 1."               -"This identifier represents hot gas valve 2."               Z"This sub-tree identifies well-known remote sensor statistics in the
            system."               \"This identifier represents the minimum value for remote sensor
                 readings."               \"This identifier represents the maximum value for remote sensor
                 readings."               \"This identifier represents the average value for remote sensor
                 readings."               ["This sub-tree is used to register Liebert environmental unit
        object identifiers." �"The registrations for the objects in this sub-tree are
        defined below in the sub-section titled Liebert Environmental
        units Group."             �"This sub-tree registers well known Liebert Environmental Units.
             The object identifier names usually encompass a process, or location,
             where measurements are recorded or where values are applied."               ;"This identifier represents well known time unit of hours."               d"This sub-tree is used to register Liebert environmental remote
        sensor object identifiers." �"The registrations for the objects in this sub-tree are
        defined below in the sub-section titled Liebert Environmental 
        Remote Sensor Group."             �"Calculation method applied to temperature readings from the remote
        sensors to determine a single temperature measurement value for
        cooling and heating control."                       �"This table contains a list of remote sensors attached to the
        environmental unit. The table contains zero, one, or more rows,
        depending upon the number of sensors attached to the unit."                       y"This entry defines the attributes to be populated in the
            various columns of the 'lgpEnvRemoteSensorTable'."                       <"This is the index indicating the nth element of the table."                       3"This is the sensor number identifying the sensor."                      �"Function assigned to remote sensor.  When set to control(2) the
            sensor will be used in calculation of remote sensor temperature which
            may be used for heating and cooling control.  When set to disable(0)
            the remote sensor reading is not available.  When set to reference(1)
            the remote sensor reading is available but not used for control."                       $"User assigned remote sensor label."                       ^"Temperature measured at the temperature sensor reported in
             degrees Fahrenheit."                       ["Temperature measured at the temperature sensor reported in
             degrees Celsius."                                  �"The MIB module used to register Liebert SNMP OIDs.

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

      Author:  Gregory M. Hoge" "200811170000Z" "200807020000Z" "200801100000Z" "200705290000Z" "200608150000Z" "200602220000Z" "Added support for NXL unit." G"SMIv2 changes (INTEGER to Integer32.
     Corrected spelling errors." !"Modified contact email address." "Added support for XDF Unit." "Added support for HP release." $"Added support for Liebert DS Unit."              