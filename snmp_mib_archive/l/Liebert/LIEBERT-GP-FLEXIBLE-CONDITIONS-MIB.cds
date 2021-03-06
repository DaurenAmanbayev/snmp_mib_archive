      �"The MIB module used to register Liebert SNMP OIDs.

      Copyright 2000-2015 Liebert Corporation. All rights reserved.
      Reproduction of this document is authorized on the condition
      that the forgoing copyright notice is included.

      This Specification is supplied 'AS IS' and Liebert Corporation
      makes no warranty, either express or implied, as to the use,
      operation, condition, or performance of the Specification.""Contact:   Technical Support

      Postal:
      Liebert Corporation
      1050 Dearborn Drive
      P.O. Box 29186
      Columbus OH, 43229
      US

      Tel: +1 (800) 222-5877

      E-mail: liebert.monitoring@emerson.com
      Web:    www.liebert.com" "201502170000Z" #"Compiled From GDD Version: 6224.1"                     �-- STATUS      current
-- DESCRIPTION
--    "Liebert well known conditions are defined by OIDs that
--    reside in this sub-tree."
 <"The input is not qualified to provide power to the system."               E"An overload exists on output phase A while operating on the bypass."               E"An overload exists on output phase B while operating on the bypass."               E"An overload exists on output phase C while operating on the bypass."               9"A problem associated with the bypass has been detected."               ;"Automatic retransfer from bypass to inverter is possible."               {"After performing a recoverable transfer to bypass, an attempt to
        auto retransfer from bypass to inverter failed."               {"The number of auto retransfers, from bypass to inverter, has
        exceeded the maximum for a specified time interval."               Q"Restart of the bypass is inhibited by the state of an external
        signal."               "The bypass breaker is closed."               +"Bypass off due to static switch overload."               @"The static bypass is unavailable to support the critical load."               h"The system has performed too many pulse parallel operations within
        a specified time interval."               0"An automatic transfer to static bypass failed."               "The power conductors on the input line are not wired to the UPS in
        the sequence preferred for the rectifier (A-B-C)."               O"The RMS input current has reached the input current limit
        threshold."               W"The calculated battery time remaining has reached the low battery
        threshold."               ="Output turned off due to battery reaching end-of-discharge."               '"The battery is not charging properly."               P"Using a reduced battery charging algorithm due to an external
        signal."               "Battery capacity is low."               "Output is off."               "The battery is discharging."               E"Excessive temperature differences between battery sensors detected."               ["The rectifier output voltage is increased to equalize the battery
        voltage level."               %"Manual battery test is in progress."               ("Automatic battery test is in progress."               ""Main battery disconnect is open."               7"A battery temperature sensor fault has been detected."               O"The bypass frequency is outside the inverter synchronization
        limits."               $"Battery circuit breaker 1 is open."               +"Battery circuit breaker 1 failed to open."               ,"Battery circuit breaker 1 failed to close."               $"Battery circuit breaker 2 is open."               +"Battery circuit breaker 2 failed to open."               ,"Battery circuit breaker 2 failed to close."               $"Battery circuit breaker 3 is open."               +"Battery circuit breaker 3 failed to open."               ,"Battery circuit breaker 3 failed to close."               $"Battery circuit breaker 4 is open."               +"Battery circuit breaker 4 failed to open."               ,"Battery circuit breaker 4 failed to close."               $"Battery circuit breaker 5 is open."               +"Battery circuit breaker 5 failed to open."               ,"Battery circuit breaker 5 failed to close."               $"Battery circuit breaker 6 is open."               +"Battery circuit breaker 6 failed to open."               ,"Battery circuit breaker 6 failed to close."               $"Battery circuit breaker 7 is open."               +"Battery circuit breaker 7 failed to open."               ,"Battery circuit breaker 7 failed to close."               $"Battery circuit breaker 8 is open."               +"Battery circuit breaker 8 failed to open."               ,"Battery circuit breaker 8 failed to close."               B"Battery charging is inhibited due to an external inhibit signal."               3"System shutdown due to Emergency Power Off (EPO)."               ;"System shutdown due to Remote Emergency Power Off (REPO)."               "The system output is off."               E"The system detected a voltage on the bypass when none was expected."               W"Manual transfer from inverter to bypass is inhibited - bypass not
        qualified."               `"Manual transfer from bypass to inverter is inhibited - inverter
        output not qualified."               O"A battery temperature sensor is reporting a value above a
        threshold."               <"External battery monitor 1 - battery maintenance required."               <"External battery monitor 2 - battery maintenance required."               ="Battery system ground fault amperage exceeds the threshold."               ^"System output is off - 'Emergency Power Off (EPO) - latched'
        requires manual reset."               W"The system output power factor is low, resulting in reduced output
        capacity."               <"Output current for one or more phases exceeds a threshold."               ,"Inverter failure - inverter output is off."               4"Inverter is operating with an overload on phase A."               4"Inverter is operating with an overload on phase B."               4"Inverter is operating with an overload on phase C."               ="Restart of the inverter is inhibited by an external signal."               )"Inverter output breaker failed to open."               *"Inverter output breaker failed to close."               "The external input contact 1."               "The external input contact 2."               "The external input contact 3."               "The external input contact 4."               "The external input contact 5."               "The external input contact 6."               "The external input contact 7."               "The external input contact 8."               "The external input contact 9."                "The external input contact 10."                "The external input contact 11."                "The external input contact 12."                "The external input contact 13."                "The external input contact 14."                "The external input contact 15."                "The external input contact 16."               >"The phase A output has exceeded the user amperage threshold."               >"The phase B output has exceeded the user amperage threshold."               >"The phase C output has exceeded the user amperage threshold."               Z"Transfer of critical bus source to inverter is inhibited by an
        external signal."               8"The inverter has shutdown due to a sustained overload."               :"The inlet air exceeds the maximum temperature threshold."               '"Rectifier failure - rectifier is off."               D"The operation of the rectifier is inhibited by an external signal."               /"The output power is supplied by the inverter."               -"The output power is supplied by the bypass."               9"The output power is supplied by the maintenance bypass."               m"The control has detected a communication failure of a component on
        the internal communication bus."               ?"A ground fault has been detected on the positive DC Bus link."               ?"A ground fault has been detected on the negative DC Bus link."               +"Equipment over temperature summary event."               4"System fan failure - one or more fans have failed."               "Password changed."               "Power supply failure."               3"A generator is supplying the power to the system."               "Auto restart is in progress."               3"Auto restart inhibited due to an external signal."               +"User initiated manual transfer to bypass."               -"User initiated manual transfer to inverter."               "Battery test passed."               "Battery test failed."               <"The battery test was manually stopped prior to completion."               /"The backfeed breaker is in the open position."               ["Notification of a message rejected by Velocity due to an
        authentication failure."               >"The system has detected a receptacle over current condition."               ?"The system has detected a receptacle under current condition."               '"System Input Currents are Imbalanced."               E"Bypass static switch is off due to the state of an external signal."               -"Battery disconnect due to end-of-discharge."               1"A fault has been detected in the system output."               Q"Inverter is off (operation is inhibited) due to external signal
        state."               y"The system has detected a short across one or more inverter static
        switch Silicon Controlled Rectifiers (SCR)."               �"One or more temperature sensors cannot provide a valid temperature
        reading (i.e. sensor failure, wiring failure, sense circuit
        failure, etc)."               :"The system has detected a module over current condition."               ;"The system has detected a module under current condition."               :"The system has detected a module over current condition."               ;"The system has detected a module under current condition."               d"One or more conditions indicate a Branch Receptacle Module failure
        , service is required."               :"The system has detected a module over current condition."               ;"The system has detected a module under current condition."               �"Excessive temperature rise internal to the system (i.e. difference
        between the output versus input temperature is too large)."               "Automatic restart failed."               7"A summary event indicating one or more fuse failures."               #"System controller internal error."               4"One or more breakers in the system failed to open."               :"The system has detected a module over current condition."               ;"The system has detected a module under current condition."               D"The system has detected a module over current condition on line 1."               D"The system has detected a module over current condition on line 2."               D"The system has detected a module over current condition on line 3."               E"The system has detected a module under current condition on line 1."               E"The system has detected a module under current condition on line 2."               E"The system has detected a module under current condition on line 3."               5"The receptacle power state changed to the ON state."               6"The receptacle power state changed to the OFF state."               7"The Branch Receptacle Module's input breaker is open."               "Device Configuration Change."               "Basic Display Module Removed."               ""Basic Display Module Discovered."               @"The system has detected a power module over current condition."               A"The system has detected a power module under current condition."               W"One or more conditions indicate a power module failure, service is
        required."               8"Internal communications failure with the Power Module."               #"Branch Receptacle Module Removed."               &"Branch Receptacle Module Discovered."               U"The system has detected a Branch Receptacle Module over current
        condition."               V"The system has detected a Branch Receptacle Module under current
        condition."               ."The receptacle's load stopped drawing power."               ."The receptacle's load started to draw power."               "Module Removed."               "Module Added."               S"Module compatibility error requires a system firmware update to
        resolve."               O"A generic test event designed to evaluate system handling of
        events."               -"An over temperature condition was detected."               ."An under temperature condition was detected."               3"An over relative humidity condition was detected."               4"An under relative humidity condition was detected."               Z"[Ext Air Sensor A Temperature] has exceeded [External Air Over
        Temp Threshold]."               Z"[Ext Air Sensor B Temperature] has exceeded [External Air Over
        Temp Threshold]."               ["[Ext Air Sensor A Temperature] has dropped below [Ext Air Under
        Temp Threshold]."               ["[Ext Air Sensor B Temperature] has dropped below [Ext Air Under
        Temp Threshold]."               �"At least one dew point temperature reading ([Ext Air Sensor A Dew
        Point Temp], [Ext Air Sensor B Dew Point Temp]...) has exceeded
        [Ext Dew Point Over Temp Threshold]."               S"The external air sensor A is disconnected or the signal is out of
        range."               S"The external air sensor B is disconnected or the signal is out of
        range."               f"[Supply Chilled Water Temperature] has exceeded [Supply Chilled
        Water Over Temp Threshold]."               e"The supply chilled water temperature sensor is disconnected or the
        signal is out of range."               �"Event that is activated when [Supply Refrigerant Temperature]
        exceeds [Supply Refrig Over Temp Threshold]. The event is
        deactivated when the temperature drops below the threshold."               T"[Supply Refrigerant Temperature] has dropped below a specified
        threshold."               c"The supply refrigeramt temperature sensor is disconnected or the
        signal is out of range."               V"[Supply Fluid Temperature] has exceeded [Supply Fluid Over Temp
        Threshold]."               E"[Supply Fluid Temperature] has dropped below a specified threshold."               ]"The supply fluid temperature sensor is disconnected or the signal
        is out of range."               �"Loss of flow is detected in pump 1. The loss of flow condition
        occurs when no differential pressure is detected across the pump."               �"Loss of flow is detected in pump 2. The loss of flow condition
        occurs when no differential pressure is detected across the pump."               |"Pumps have short cycled. A short cycle is defined as turning on
        and off a number of times over a set time period."               #"Compressor 1A high head pressure."               #"Compressor 1B high head pressure."               #"Compressor 2A high head pressure."               #"Compressor 2B high head pressure."               ~"Compressor 1A short cycle. A short cycle is defined as turning on
        and off a number of times over a set time period."               ~"Compressor 1B short cycle. A short cycle is defined as turning on
        and off a number of times over a set time period."               ~"Compressor 2A short cycle. A short cycle is defined as turning on
        and off a number of times over a set time period."               ~"Compressor 2B short cycle. A short cycle is defined as turning on
        and off a number of times over a set time period."               ."'Tandem compressors' 1 low suction pressure."               ."'Tandem compressors' 2 low suction pressure."               s"Chilled water valve out of position. Chilled water control valve
        position does not match expected value."               "System condensation detected."               z"System lost power. This event becomes active when the unit is
        powered on following an unexpected loss of power."               "Smoke detected."               $"Water under the floor is detected."               "Unit requires servicing."               R"One or more fans are not operating within their operational
        parameters."               -"The receptacle's load is not drawing power."               4"Automatic (scheduled) battery tests are inhibited."               #"Battery self test is in progress."               -"Battery disconnect due to end-of-discharge."               k"One or more temperature sensors report a temperature outside of
        the range of expected operation."               "Redundant system fan failure."               "Multiple fan failure."               ,"A Main Controller fault has been detected."               5"One or more breakers in the system failed to close."               ]"The input filter disconnect is open due to exceeding the maximum
        number of cycles."               "Service code is running."               %"The Load Bus Sync option is active."               ^"The system has detected that conditions to perform Load Bus Sync
        are not satisfied."               E"The leading output Power Factor has fallen below a specified value."               V"A controls reset is required due to one or more critical settings
        changing."               %"Parallel communication bus warning."               C"Failure of a device on the multi-module system communication bus."               k"The multi-module collection doesn't have enough modules to satisfy
        the redundancy configuration."               0"The Bypass Static Switch startup is inhibited."               U"The critical load can not be manually transferred from inverter to
        bypass."               W"The critical load can not be manually retransferred from bypass to
        inverter."               )"Multi-module system loss of sync pulse."               "Multi-module system overload."               ("The multi-module system is on battery."               *"Multi-module system low battery warning."               >"The system has detected a low ambient temperature condition."               ?"The system has detected a high ambient temperature condition."               R"The system has detected a low battery string overall voltage
        condition."               S"The system has detected a high battery string overall voltage
        condition."               B"The system has detected a high battery string current condition."               P"The system has detected a low battery string float current
        condition."               Q"The system has detected a high battery string float current
        condition."               R"The system has detected a high battery string ripple current
        condition."               ?"The system has detected a battery string discharge condition."               @"The system has detected an excessive discharge time condition."               e"The system has detected a low battery string overall voltage
        condition during a discharge."               S"The system has detected a low cell voltage condition during a
        discharge."               ^"The system has detected a high battery string current condition
        during a discharge."               ]"The system has detected an excessive cell to cell temperature
        deviation condition."               `"The system has detected an excessive cell to ambient temperature
        deviation condition."               7"The system has detected a low cell voltage condition."               8"The system has detected a high cell voltage condition."               ;"The system has detected a low cell temperature condition."               <"The system has detected a high cell temperature condition."               >"The system has detected a low internal resistance condition."               ?"The system has detected a high internal resistance condition."               @"The system has detected a high intercell resistance condition."               @"The system has detected a high intertier resistance condition."               '"Supply chilled water flow is too low."               r"[Supply Refrigerant Temperature] is above the upper threshold
        specified by [Supply Refrig Temp Band 1]."               r"[Supply Refrigerant Temperature] is below the lower threshold
        specified by [Supply Refrig Temp Band 1]."               r"[Supply Refrigerant Temperature] is above the upper threshold
        specified by [Supply Refrig Temp Band 2]."               r"[Supply Refrigerant Temperature] is below the lower threshold
        specified by [Supply Refrig Temp Band 2]."               �"Inverter for pump 1 has short cycled and is temporarily locked out
        from further operation to protect from thermal overload. A short
        cycle is defined as powering on and off a number of times over a
        set time period."               �"Inverter for pump 2 has short cycled and is temporarily locked out
        from further operation to protect from thermal overload. A short
        cycle is defined as powering on and off a number of times over a
        set time period."               R"[Supply Air Temperature] has exceeded [Supply Air Over Temp
        Threshold]."               X"[Supply Air Temperature] has dropped below [Supply Air Under Temp
        Threshold]."               R"[Return Air Temperature] has exceeded [Return Air Over Temp
        Threshold]."               b"The air sensor at the outlet of the unit is disconnected or the
        signal is out of range."               B"[Return Humidity] has exceeded [High Return Humidity Threshold]."               O"[Return Humidity] has dropped below [Low Return Humidity
        Threshold]."               A"Operating hours for the humidifier have exceeded the threshold."               C"Operating hours for the dehumidifier have exceeded the threshold."               Z"The electrical current to the humidifier has dropped below its
        lower threshold."               U"The electrical current to the humidifier has exceeded its upper
        threshold."               D"The water level in the humidifier has dropped below its threshold."               R"Humidifier cylinder is not operating properly and needs to be
        replaced."               9"Humidifier issue detected, causing it to be locked out."               P"The humidifier is shut down and disabled by an external input
        signal."               ["Humidifier control board is required to be connected, but no
        signal is detected."               �"[Return Humidity] has exceeded the upper limit of
        [Dehumidification Proportional Band], or has dropped below the
        lower limit of [Humidification Proportional Band] ], for an
        extended period of time."               :"No air flow through the unit due to failure of all fans."               O"Operating hours for the unit blower fan have exceeded the
        threshold."               <"The top fan is not operating within its normal parameters."               ?"The bottom fan is not operating within its normal parameters."               >"Remote sensor is disconnected or the signal is out of range."               $"Compressor 1 low suction pressure."               ?"Operating hours for compressor 1 have exceeded the threshold."               h"Digital scroll compressor 1 temperature sensor is disconnected or
        the signal is out of range."               n"Digital scroll compressor 1 shut off because its head temperature
        has exceeded the upper threshold."               ^"Compressor 1 low pressure transducer is disconnected or the signal
        is out of range."               P"The compressor is shut down and disabled by an external input
        signal."               ="The temperature of the reheater has exceeded its threshold."               O"Operating hours for electric reheater 1 have exceeded the
        threshold."               E"The reheater is shut down and disabled by an external input signal."               <"Condenser 1 is not operating within its normal parameters."               8"The condenser fan Variable Frequency Drive is offline."               b"The condenser Transient Voltage Surge Suppressor or Surge
        Protection Device has failed."               ^"A temperature has exceeded its threshold, as indicated by an
        external input signal."               E"Loss of flow is detected, as indicated by an external input signal."               ]"High water is detected in the condenser, as indicated by an
        external input signal."               S"The standby glycol pump is on, as indicated by an external input
        signal."               :"Fire detected, as indicated by an external input signal."               "Unit was turned on."               "Unit was turned off."               ""Unit was placed in standby mode."               ^"An event has occurred requiring some system components to be
        shutdown and disabled."               p"An event has occurred requiring the unit to be shutdown and
        disabled to prevent damage to the system."               ["The water leakage detector sensor is disconnected or the signal is
        out of range."               �"Building Management System (or external monitoring system) has not
        communicated with the system within the expected timeframe."               3"The calculated maintenance date has been reached."               -"Maintenance has been completed on the unit."               <"Air filter is dirty and needs to be (cleaned or) replaced."               7"RAM or RAM backup battery is not operating correctly."               /"Communication with master unit has been lost."               4"Supply to high power components has been shutdown."               n"Digital scroll compressor 2 shut off because its head temperature
        has exceeded the upper threshold."               ^"The output frequency has exceeded a specified range for a
        specified period of time."               ?"Active alarm or fault of any module in a multi-module system."               P"Unable to pump down suction-side pressure during compressor
        shutdown."               a"The air sensor at the inlet of the unit is disconnected or the
        signal is out of range."               ]"Compressor high pressure transducer is disconnected or the signal
        is out of range."               �"The UPS battery voltage is not qualified. This event will be
        detected even in the absence of battery disconnect or when it is
        open."               h"The measured battery voltage is a negative value due to reverse
        battery terminal connections."               v"Battery converter failure. This is a summary event caused by one
        or more power sub-modules in a UPS module."               s"The system has detected an open across one or more inverter static
        switch Silicon Controlled Rectifiers."               �"Difference between any phase inverter current of unit and the
        relevant average output current of parallel system is more than a
        specific percent of nominal current."               5"The system has detected an abnormal DC Bus Voltage."               2"Loss of neutral in the input source is detected."               %"On bypass as result of load impact."               &"User attempted an invalid operation."               P"One or more failures detected in power module, inverter or
        rectifier."               B"One or more of the output phase voltages has exceeded the limit."               P"One or more of the output phase voltages has dropped below the
        limit."               ;"One or more of the phase currents has exceeded the limit."               6"The system's neutral current has exceeded the limit."               /"System ground current has exceeded the limit."               s"The Total Harmonic Distortion of the voltage on one or more of the
        output phases has exceeded the limit."               4"The output frequency is outside a specified range."               9"Indicates a unit transformer overtemperature condition."               �"The status for the panel. Detects and annunciates upon occurrence
        of any branch or panelboard main breaker active event."               R"One or more of the phase voltages of this panel has exceeded the
        limit."               R"One or more of the phase voltages of this panel is less than the
        limit."               R"One or more of the phase currents of this panel has exceeded the
        limit."               ;"The Neutral current of this panel has exceeded the limit."               :"The Ground current of this panel has exceeded the limit."               E"The current in one or more phases of this branch exceeds the limit."               S"The current in one or more phases of this branch is less than the
        limit."               T"One or more of the phase currents in this subfeed has exceeded the
        limit."               ="The Neutral current in this subfeed has exceeded the limit."               <"The Ground current of this subfeed has exceeded the limit."               0"The present state of this digital event input."               5"Compressor commanded to stop, but continues to run."               ?"[Compressor Hours] has exceeded [Compressor Hours Threshold]."               4"Compressor is shut down due to high head pressure."               6"Compressor is shut down due to low suction pressure."               2"Compressor is shut down due to thermal overload."               "Compressor low oil pressure."               ;"Compressor head pressure has exceeded an upper threshold."               ;"Compressor is shut down due to low differential pressure."               C"Condenser fan is not operating within its operational parameters."               4"Refrigerant pressure in condenser coil is too low."               ;"[Fluid Pressure] has dropped below a specified threshold."               @"[Return Fluid Temperature] has exceeded a specified threshold."               E"[Return Fluid Temperature] has dropped below a specified threshold."               ]"The return fluid temperature sensor is disconnected or the signal
        is out of range."               x"The return fluid temperature sensors for all Teamwork units are
        disconnected or the signals are out of range."               A"System is shut down due to loss of flow in all available pumps."               3"[Pump Hours] has exceeded [Pump Hours Threshold]."               X"[Free Cooling Valve Hours] has exceeded [Free Cooling Valve Hours
        Threshold]."               a"The evaporator inlet temperature sensor is disconnected or the
        signal is out of range."               |"The evaporator inlet temperature sensors for all Teamwork units
        are disconnected or the signals are out of range."               �"Evaporator outlet fluid temperature has dropped below the freeze
        threshold. Evaporator has been shut down, but will restart when
        the temperature rises above the threshold."               �"Evaporator outlet fluid temperature has dropped below the freeze
        threshold. Evaporator has been shut down and requires a manual
        reset."               �"While subgroup unit communication was lost, an event occurred on
        the subgroup unit. Please check subgroup unit event log."               X"[Return Air Temperature] has dropped below [Return Air Under Temp
        Threshold]."               _"[Ext Air Sensor A Humidity] has exceeded [Ext Air Sensor A High
        Humidity Threshold]."               c"[Ext Air Sensor A Humidity] has dropped below [Ext Air Sensor A
        Low Humidity Threshold]."               {"Compressor short cycle. A short cycle is defined as turning on and
        off a number of times over a set time period."               p"Digital scroll compressor discharge temperature sensor is
        disconnected or the signal is out of range."               g"Digital scroll compressor is shut down due to head temperature
        exceeding an upper threshold."               7"Free cooling is disabled by an external input signal."               c"The free cooling fluid temperature sensor is disconnected or the
        signal is out of range."               f"[Hot Water / Hot Gas Valve Hours] has exceeded [Hot Water / Hot
        Gas Valve Hours Threshold]."               W"[Electric Reheater Hours] has exceeded [Electric Reheaters Hours
        Threshold]."               0"Main fan is shut down due to thermal overload."               ?"Condenser is not operating within its operational parameters."               T"Loss of air blower is detected, as indicated by an external input
        signal."               ?"Standby unit is on, as indicated by an external input signal."               W"Digital output board is required to be connected, but no signal is
        detected."               +"Unit code has not been entered and saved."               A"Master has lost communication with one or more networked units."               <"Power turned off because equipment over temperature limit."               R"The number of sensors connected to the PDU exceeds the allowable
        limit."               <"Output power shutdown due to high transformer temperature."               1"Transformer temperature has exceeded the limit."               ,"Transformer temperature sensor has failed."               ^"The system has detected a low ambient temperature condition on
        temperature probe 2."               _"The system has detected a high ambient temperature condition on
        temperature probe 2."               6"The system has detected a thermal runaway condition."               >"The system has detected a battery string equalize condition."               8"The system has detected the battery string is offline."               S"The system has detected a low cell voltage condition during a
        discharge."               Z"A module is not sharing power with the other modules in a multi
        -module system."               O"Module is placed into standby operation per Intelligent
        Paralleling."               S"Conditions for Activation or Automatic Reactivation have been
        satisfied."                "ECO Mode session is suspended."               h"Number of automatic suspensions has exceeded the ECO Mode -
        Maximum Auto Suspensions setting."               "An open door was detected."               ""Door sensor disconnect detected."               "An open circuit was detected."                "A closed circuit was detected."               ("External system condensation detected."               R"One or more fans are not operating within their operational
        parameters."               '"Unit is shut down by a remote signal."               �"The air temperature in the Hot aisle is either above [Hot Aisle
        Over Temp Threshold] or below [Hot Aisle Under Temp Threshold]."               �"The air temperature in the cold aisle is either above [Cold Aisle
        Over Temp Threshold] or below [Cold Aisle Under Temp Threshold]."               '"Unit is shut down by a remote signal."               '"Compressor capacity has been reduced."               \"Compressor low pressure transducer is disconnected or the signal
        is out of range."               ;"The system has detected a neutral over current condition."               2"Communication with condenser unit has been lost."               b"Condenser outside air temperature sensor is disconnected or the
        signal is out of range."               m"[Condenser Outside Air Temperature] is either above an upper
        threshold or below a lower threshold."               4"The condenser control board is reporting an issue."               :"Condenser refrigerant pressure has exceeded a threshold."               ?"Condenser refrigerant pressure has dropped below a threshold."               _"Condenser refrigerant pressure sensor is disconnected or the
        signal is out of range."               D"Condenser supply refrigerant temperature has exceeded a threshold."               \"Condenser supply refrigerant temperature has dropped below a
        specified threshold."               i"Condenser supply refrigerant temperature sensor is disconnected or
        the signal is out of range."               t"Fan speed exceeding the maximum set point in order to alleviate a
        high temperature or pressure condition."               �"[Evaporator Return Fluid Temperature] has exceeded a threshold.
        The event is deactivated when the temperature drops below the
        threshold."               �"[Evaporator Return Fluid Temperature] has dropped below a
        threshold.  The event is deactivated when the temperature rises
        above the threshold."               l"This UPS system has been selected as the functional Master Load
        Bus Synchronization (LBS) system."               �"This UPS system is synchronized to the output bus of the UPS
        system that has been selected as the Master Load Bus
        Synchronization (LBS) system."               6"The DC Bus voltage has reached a critical low level."               "The fan contactor is open."               #"The fan contactor failed to open."               $"The fan contactor failed to close."               5"The intelligent paralleling operation is inhibited."               O"One or more of the input phase voltages has dropped below the
        limit."               A"One or more of the input phase voltages has exceeded the limit."               C"Ambient air sensor is disconnected or the signal is out of range."               �"At least one dew point temperature reading ([Ext Air Sensor A Dew
        Point Temp], [Ext Air Sensor B Dew Point Temp]...) has dropped
        below [Ext Dew Point Under Temp Threshold]."               A"Dew point temperature reading has exceeded the upper threshold."               O"Dew point temperature reading has dropped below the lower
        threshold."               ]"One or more unspecified events active. See local unit display for
        further details."               `"[Remote Sensor Average Temperature] has exceeded [Remote Sensor
        Over Temp Threshold]."               f"[Remote Sensor Average Temperature] has dropped below [Remote
        Sensor Under Temp Threshold]."               g"[Remote Sensor System Average Temperature] has exceeded [Remote
        Sensor Over Temp Threshold]."               l"Remote Sensor System Average Temperature] has dropped below
        [Remote Sensor Under Temp Threshold]."               X"[Remote Sensor Temperature] has exceeded [Remote Sensor Over Temp
        Threshold]."               ^"[Remote Sensor Temperature] has dropped below [Remote Sensor Under
        Temp Threshold]."               �"Indoor room temperature has exceeded its upper threshold and the
        outdoor air damper has been opened for emergency cooling."               E"Air economizer filter is dirty and needs to be cleaned or replaced."               b"Compressor discharge refrigerant superheat temperature has
        exceeded an upper threshold."               �"The delta temperature between a cell temperature and the ambient
        temperature has exceeded the thermal runaway cell to ambient
        temperature threshold."               w"The delta temperature between two cells has exceeded the thermal
        runaway cell to cell temperature threshold."               s"The Battery-String charger current has exceeded the thermal
        runaway charger current level one threshold."               s"The Battery-String charger current has exceeded the thermal
        runaway charger current level two threshold."               e"The air sensor selected for cooling control is disconnected or the
        signal is out of range."               ="Electronic expansion valve refrigerant low superheat event."               S"Electronic expansion valve refrigerant high discharge temperature
        event."               ["Electronic expansion valve battery cannot be recharged and needs
        to be replaced."               R"Electronic expansion valve lost power and is running on battery
        backup."               x"One or more unspecified electronic expansion valve events active.
        See local unit display for further details."               T"The static pressure sensor is disconnected or the signal is out of
        range."               "High static pressure event."               "Low static pressure event."               b"One or more unspecified pump events active. See local unit display
        for further details."               l"One or more unspecified condenser unit events active. See local
        unit display for further details."               o"One or more unspecified condenser circuit events active. See local
        unit display for further details."               "Reserved event for SFA use."               "Reserved event for SFA use."               "Reserved event for SFA use."               "Reserved event for SFA use."               "Reserved event for SFA use."               "Reserved event for SFA use."               "Reserved event for SFA use."               "Reserved event for SFA use."               "Reserved event for SFA use."               "Reserved event for SFA use."               "Reserved event for SFA use."               "Reserved event for SFA use."               "Reserved event for SFA use."               "Reserved event for SFA use."               "Reserved event for SFA use."               "Reserved event for SFA use."               "Reserved event for SFA use."               "Reserved event for SFA use."               "Reserved event for SFA use."               "Reserved event for SFA use."               "Reserved event for SFA use."               "Reserved event for SFA use."               "Reserved event for SFA use."               "Reserved event for SFA use."               "Reserved event for SFA use."               "The difference between the outlet air temperature and inlet air
        temperature exceeds a specified maximum temperature."               4"An Emergency Module Off command has been detected."               A"Top outlet fan fault - one or more top outlet fans have failed."               X"The multi-module system load is larger than the apparent power
        limit setting."               2"Compressor has returned to normal load capacity."               v"Compressor contactor is not closing during compressor startup or
        is not opening during compressor shutdown."               k"One or more unspecified unit shutdown events active. See local
        unit display for further details."               @"The system has detected a module under voltage condition (LN)."               @"The system has detected a module under voltage condition (LL)."               S"The system has detected a line-to-line under voltage condition (L1
        -L2)."               S"The system has detected a line-to-line under voltage condition (L2
        -L3)."               S"The system has detected a line-to-line under voltage condition (L3
        -L1)."               T"The system has detected a line to neutral under voltage condition
        (L1-N)."               T"The system has detected a line to neutral under voltage condition
        (L2-N)."               T"The system has detected a line to neutral under voltage condition
        (L3-N)."               @"The system has detected a module under voltage condition (LN)."               @"The system has detected a module under voltage condition (LL)."               ;"The system has detected a module under voltage condition."               "Continuous Power Tie Active."               ="The user kWh accumulator was reset to zero by the operator."               "The Peak kW was reset."               -"Bypass overloaded, reduce load immediately."               {"If active and guaranteed shutdown is enabled, a low battery
        reserve condition exists that will shutdown the UPS."               #"An overload exists on the output."               )"Output off pending - shutdown imminent."               ,"Shutdown was due to a short on the output."               ."Shutdown was due to a low battery condition."               ?"Shutdown was due to a remote communications shutdown command."               D"Shutdown was due to an externally applied hardware control signal."               X"The system has an insufficient number of power modules to provide
        redundancy."               W"One or more conditions indicate a power module failure, service is
        required."               ="One or more power modules is reporting a warning condition."               ,"The Power Module has detected a fan fault."               >"The Power Module has detected an over temperature condition."               4"Power Module has shutdown due to over temperature."               ."The Charger Module has detected a fan fault."               >"A Battery Module temperature sensor fault has been detected."               @"The Battery Module has detected an over temperature condition."               *"The Battery Module needs to be replaced."               6"System shutdown due to transformer over temperature."               ?"Maximum load alarm indicating load setting has been exceeded."               >"One or more battery modules are reporting a fault condition."               @"One or more battery modules are reporting a warning condition."               A"Please check air filter, it may need to be cleaned or replaced."               !"The transformer fan has failed."               �"Indicates the UPS has output voltage but the output current is
        below a set threshold [No Load Warning Current Threshold] for a
        set period of time [No Load Warning Delay]."               Y"A battery temperature sensor is reporting a value above a
        predetermined limit."               6"The main battery disconnect has closed unexpectedly."               _"The system has detected that the battery voltage has exceeded a
        predetermined limit."               /"One or more battery fuse faults has occurred."               >"The main battery disconnect is forced to the unlocked state."               S"The voltage between battery and DC bus measurements is out of
        tolerance."               Z"This event indicates that the battery is not configured and PFC is
        not enabled."               #"Regeneration operation is active."               '"Regeneration operation is not active."               l"Regeneration operation has been terminated due to bypass source
        instability or unit misoperation."               w"When the signal from [Program Input Contact 01] is active the
        function assigned to this contact is executed."               w"When the signal from [Program Input Contact 02] is active the
        function assigned to this contact is executed."               w"When the signal from [Program Input Contact 03] is active the
        function assigned to this contact is executed."               w"When the signal from [Program Input Contact 04] is active the
        function assigned to this contact is executed."               w"When the signal from [Program Input Contact 05] is active the
        function assigned to this contact is executed."               w"When the signal from [Program Input Contact 06] is active the
        function assigned to this contact is executed."               w"When the signal from [Program Input Contact 07] is active the
        function assigned to this contact is executed."               w"When the signal from [Program Input Contact 08] is active the
        function assigned to this contact is executed."               w"When the signal from [Program Input Contact 09] is active the
        function assigned to this contact is executed."               w"When the signal from [Program Input Contact 10] is active the
        function assigned to this contact is executed."               w"When the signal from [Program Input Contact 11] is active the
        function assigned to this contact is executed."               w"When the signal from [Program Input Contact 12] is active the
        function assigned to this contact is executed."               ="The system has detected a ground fault on a Battery-String."               f"The humidity sensor at the inlet of the unit is disconnected or
        the signal is out of range."               �"Compressor exceeded maximum startup attempts due to low
        differential pressure. Compressor is shutdown and has been
        disabled."               ?"Airflow sensor is disconnected or the signal is out of range."               g"Air damper position does not match expected value, as indicated by
        an external input signal."               V"Unit main power source A failure, as indicated by an external
        input signal."               V"Unit main power source B failure, as indicated by an external
        input signal."               ?"Static pressure sensor signal is out of its configured range."               V"The fluid temperature sensor is disconnected or the signal is out
        of range."               O"The fluid flow sensor is disconnected or the signal is out of
        range."               7"An over differential pressure condition was detected."               8"An under differential pressure condition was detected."              "Mixed mode has been entered too many times over a rolling time
        period and has been temporarily disabled.  Mixed mode is defined
        as the use of a compressor on one refrigeration circuit and the
        use of a refrigerant pump on the other circuit."               C"The system has detected a line-to-line unbalanced load condition."               O"The Branch Receptacle Module's over current protection is
        triggered."               @"The system has detected a module under voltage condition (LL)."               <"The system has detected the bypass voltage is unqualified."               5"Battery temperature is outside of acceptable range."               "Inverter in overload fault."               i"Communication with external auxiliary device providing an air
        temperature value has been lost."               6"Communication with Modbus power meter has been lost."               "Inverter Desaturation."               7"The control board reports a fault - Service required."               f"An AC phase to ground fault or three phase fault to ground exists
        on the output of the UPS."               !"The main input breaker is open."               "The neutral breaker is open."               "The output breaker is open."               +"The maintenance bypass breaker is closed."               "The battery circuit is open."               ["The rectifier isolation breaker (RFB) indicates that it is in the
        open position."               V"The bypass circuit breaker (SBB) indicates that it is in the open
        position."               X"The bypass isolation breaker (BIB) indicates that it is in the
        open position."               o"The voltage on one or more bypass phases is less than a specified
        percentage of the nominal voltage."               ."The Bypass Static Switch has been turned on."               P"A battery temperature sensor is reporting a value above the
        setpoint."               Q"The inverter output breaker indicates that it is in the open
        position."               �"Equipment over temperature warning is a summary event based on the
        detection of at least one measured temperature exceeding a
        threshold."               C"The equipment air temperature has exceeded its maximum set point."               U"The rectifier isolation breaker indicates that it is in the open
        position."               7"The output is being supplied power from the inverter."               "Core-2-core fuse failure."               $"The system output breaker is open."               '"The inverter relay has malfunctioned."               v"The UPS System has transferred to bypass because the active power
        modules cannot support the critical load."               ."The battery is backfeeding the input source."               7"The inverter and bypass are no longer synchronized. ."               @"The battery converter has reached is maximum current limit.  ."               \"Load Bus Sync communications is abnormal. A problem with the LBS
        cable may exist."               %"The battery equalizing is time out."               k"The UPS parallel system communications is abnormal. A problem with
        the parallel cable may exist."               /"A short circuit exists in the battery system."               :"The ambient temperature of the battery room is abnormal."               A"The UPSC has failed to communicate in a designated time period."               ;"Fixed compressor 1B is shut down due to thermal overload."               ;"Fixed compressor 2B is shut down due to thermal overload."               <"Fixed compressor 1B run hours have exceeded the threshold."               <"Fixed compressor 2B run hours have exceeded the threshold."               ,"Condenser is shut down by a remote signal."               �"The condenser Transient Voltage Surge Suppressor or Surge
        Protection Device has failed, as indicated by an external input
        signal."               k"The condenser fan Variable Frequency Drive is offline, as
        indicated by an external input signal."               r"Condenser is not operating within its operational parameters, as
        indicated by an external input signal."               _"The number of sensors exceeds the number of allocated slots and
        cannot be displayed."               "Battery voltage is too low."               %"The battery is due for replacement."               5"The input frequency is outside of the normal range."               "Shutdown is pending."               &"Reboot command issued to the system."               "Sensor Added."               "Sensor Removed."               "Water leak detected."               1"Firmware update has started and is in progress."               -"Firmware update has completed successfully."               8"Firmware update has completed, but was not successful."               ["DC Bus precharge/discharge didn't reach specified level within a
        specified time."               8"The memory card on the control board has been removed."               7"The system is automatically calibrating ADC channels."               %"ADC channel calibration has failed."               $"The module output breaker is open."               #"Voltage observed on neutral line."               Q"Loss of load on branch detected. Branch circuit breaker might be
        open."                          