                          �"The MIB module used to register Liebert SNMP OIDs.

      Copyright 2000-2008,2013 Liebert Corporation. All rights reserved.
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

      Author:  Gregory M. Hoge" "201302120000Z" "200811170000Z" "200807020000Z" "200801100000Z" "200705290000Z" "200608150000Z" "200602220000Z" W"Added Surge Protection Device to lgpConditionCondenserTVSSFailure
       DESCRIPTION" "Added support for NXL unit." �"o Expanded condtions table with new columns with a set of richer
       alarm/condition properties.
     o Added additional reference columns to conditions table to allow the
       same alarm to be active on multiple instances of an item.
    " A"Modified contact email address and added lgpNetworkName object." "Added support for XDF Unit." D"Added support for HP release and a condition for firmware corrupt." $"Added support for Liebert DS Unit."                             �-- STATUS      current
-- DESCRIPTION
--    "Liebert well known conditions are defined by OIDs that reside
--    in this sub-tree."
 >"The temperature has exceeded the high temperature threshold."               9"The temperature is below the low temperature threshold."               8"The humidity has exceeded the high humidity threshold."               3"The humidity is below the low humidity threshold."               -"The system has detected a loss of air flow."               9"The system has detected a loss of air flow at sensor 1."               9"The system has detected a loss of air flow at sensor 2."               ;"The system has detected a loss of air flow from blower 1."               ="No air flow through the unit due to failure of all blowers."               ["The system has detected a condition indicating the air filter
        should be changed."               @"This system has detected an excessive head pressure condition."               B"The system has detected excessive head pressure in compressor 1."               C"The system has detected excessive head pressure in compressor 1A."               C"The system has detected excessive head pressure in compressor 1B."               B"The system has detected excessive head pressure in compressor 2."               C"The system has detected excessive head pressure in compressor 2A."               C"The system has detected excessive head pressure in compressor 2B."               B"The system has detected excessive head pressure in compressor 3."               B"The system has detected excessive head pressure in compressor 4."               ;"This system has detected a compressor overload condition."               @"The system has detected an overload condition on compressor 1."               @"The system has detected an overload condition on compressor 2."               ["A compressor has exceeded the maximum number of starts in a
        minimum time period."               �"The system has detected a short cycle event on compressor 1.
            The compressor has exceeded the maximum number of starts for
            specified amount of time."               �"The system has detected a short cycle event on compressor 1A.
              The compressor has exceeded the maximum number of starts for
              specified amount of time."               �"The system has detected a short cycle event on compressor 1B.
              The compressor has exceeded the maximum number of starts for
              specified amount of time."               �"The system has detected a short cycle event on compressor 2.
            The compressor has exceeded the maximum number of starts for
            specified amount of time."               �"The system has detected a short cycle event on compressor 2A.
              The compressor has exceeded the maximum number of starts for
              specified amount of time."               �"The system has detected a short cycle event on compressor 2B.
              The compressor has exceeded the maximum number of starts for
              specified amount of time."               T"The pressure at a compressor inlet has dropped below the
        minimum setting."               X"The pressure at compressor 1 inlet has dropped below the
            minimum setting."               X"The pressure at compressor 2 inlet has dropped below the
            minimum setting."               8"The system has detected a main fan overload condition."               6"The system has detected a manual override condition."               2"The standby Glycol or Glycool pump is activated."               -"Moisture has been detected under the floor."               /"The system has detected a humidifier problem."               U"The system has detected a low water condition in the humidifier
        reservoir."                "The system has detected smoke."               :"The system has detected a low water flow rate condition."               �"The system has lost power before being switched off using the
        controls.  This condition is activated when power is restored."               ]"A fault condition has been detected that is not identified
        in the well known list."               A"This system has detected a local, or customer, alarm condition."               D"The system has detected that customer alarm condition 1 is active."               D"The system has detected that customer alarm condition 2 is active."               D"The system has detected that customer alarm condition 3 is active."               D"The system has detected that customer alarm condition 4 is active."               D"The system has detected that customer alarm condition 5 is active."               D"The system has detected that customer alarm condition 6 is active."               D"The system has detected that customer alarm condition 7 is active."               D"The system has detected that customer alarm condition 8 is active."               8"The system has detected the standby unit is operating."               ;"This system has detected a low head compressor condition."               7"The system has detected low pressure in compressor 1."               F"The system has detected low pressure in tandem compressor circuit 1."               7"The system has detected low pressure in compressor 2."               F"The system has detected low pressure in tandem compressor circuit 2."               7"The system has detected low pressure in compressor 3."               7"The system has detected low pressure in compressor 4."               F"The system has detected a high water condition in the condenser pan."               ?"The system has detected a faulty temperature/humidity sensor."               4"The Cooling system requires scheduled maintenance."               0"The Humidifier requires scheduled maintenance."               U"Charge level of the system control's battery is below the
        alarm set point."               0"The system has detected a ground system fault."               +"The system has detected a ground failure."               ,"The system has detected a security breach."               "The system has detected an emergency shutdown condition.  The System
        is shutting down as a result of this emergency."               Q"This system has detected the load is being powered by a bypass
        source."               /"The load is being powered by a bypass source."               ;"The load is being powered by a maintenance bypass source."               0"The parallel system has transferred to bypass."               g"The system has detected a load impact and has transferred the
            load to the bypass source."               e"The system has transferred to bypass.  The load is being powered by
            the bypass source."               ;"The system has performed an emergency transfer to bypass."               �"The total harmonic distortion (THD) of the output voltage has exceeded a
        pre-determined threshold for a device, or system, defined amount of
        time."               2"The system has detected a control logic failure."               :"This system had detected a power supply fault condition."               A"The system has detected power supply 1 is in a fault condition."               A"The system has detected power supply 2 is in a fault condition."               <"This system has detected a power supply failure condition."               4"The system has detected power supply 1 has failed."               4"The system has detected power supply 2 has failed."               E"The system has detected the source 1 Power supply input has failed."               E"The system has detected the source 2 Power supply input has failed."               7"The system has detected a power supply logic failure."               S"The system has detected the power supply to the compressors
         has failed."               5"This system has detected an over voltage condition."               �"The system has detected an over voltage condition on source 1.
            The voltage measurement has risen above a pre-determined threshold
            for a device, or system, defined amount of time."               �"The system has detected an over voltage condition on source 2.
            The voltage measurement has risen above a pre-determined threshold
            for a device, or system, defined amount of time."               �"The system has detected the output to load is in an over-voltage
             condition.  The voltage for the load has risen above a
             pre-determined threshold for a device, or system, defined amount
             of time."               �"The system has detected an input over voltage condition.  The
            voltage measurement has risen above a pre-determined threshold for
            a specified amount of time."               �"The system has detected an over voltage condition on the bypass.
            The voltage measurement has risen above a pre-determined threshold
            for a device, or system, defined amount of time."               �"The system has detected an over voltage failure condition on the
            bypass.  The voltage measurement has risen above a pre-determined
            threshold for a device, or system, defined amount of time."               ;"The system has detected a battery over voltage condition."               ;"This system has detected a DC Bus over voltage condition."               Q"The system has detected an over voltage condition on DC Bus
                1."               Q"The system has detected an over voltage condition on DC Bus
                2."               Y"The system has detected an over voltage failure condition
                on DC Bus 1."               Y"The system has detected an over voltage failure condition
                on DC Bus 2."               6"This system has detected an under voltage condition."               �"The system has detected an under voltage condition on source 1.
            The voltage measurement has fallen below a pre-determined threshold
            for a device, or system, defined amount of time."               �"The system has detected an under voltage condition on source 2.
            The voltage measurement has fallen below a pre-determined threshold
            for a device, or system, defined amount of time."               �"The system has detected the output to load is in an under-voltage
             condition.  The voltage for the load has fallen below a
             pre-determined threshold for a device, or system, defined amount
             of time."               �"The system has detected an under voltage condition on source 1.
            The voltage measurement has fallen below a pre-determined threshold
            for a specified amount of time."               �"The system has detected an under voltage condition on source 2.
            The voltage measurement has fallen below a pre-determined threshold
            for a specified amount of time."               �"The system has detected an input under voltage condition.
            The voltage measurement has fallen below a pre-determined threshold
            for a device, or system, defined amount of time."               �"The system has detected an under voltage condition on the bypass.
            The voltage measurement has fallen below a pre-determined threshold
            for a device, or system, defined amount of time."               �"The system has detected an under voltage failure condition on the
            bypass.  The voltage measurement has fallen below a pre-determined
            threshold for a device, or system, defined amount of time."               <"The system has detected a battery under voltage condition."               ;"This system has detected a DC bus under voltage condition"               R"The system has detected an under voltage condition on DC Bus
                1."               R"The system has detected an under voltage condition on DC Bus
                2."               Z"The system has detected an under voltage failure condition
                on DC Bus 1."               Z"The system has detected an under voltage failure condition
                on DC Bus 2."               1"This system has detected an overload condition."               �"The system has detected an overload condition on source 1.  The
         power requirement for this source has risen above a pre-determined
         threshold for a device, or system, defined amount of time."               0"The system has detected an overload condition."               �"The system has detected source 1 in is experiencing a peak over load
        condition.  The current has risen above a pre-determined threshold for
        a specified amount of time."               �"The system has detected source 2 in is experiencing a peak over load
        condition.  The current has risen above a pre-determined threshold for
        a specified amount of time."               t"The system had detected that the output to the load has exceeded the
        lgpPwrOutputToLoadUserOverloadLimit."               7"The system has detected an output overload condition."               9"The parallel system has detected an overload condition."               �"With the load on bypass static switch, the measured output
            RMS current has exceeded a specified percentage of the nominal
            RMS current."               �"With the load on bypass static switch, the measured phase A output
            RMS current has exceeded a specified percentage of the nominal
            per-phase RMS current."               �"With the load on bypass static switch, the measured phase B output
            RMS current has exceeded a specified percentage of the nominal
            per-phase RMS current."               �"With the load on bypass static switch, the measured phase C output
            RMS current has exceeded a specified percentage of the nominal
            per-phase RMS current."               Y"This system has detected a Silicon Controlled Rectifier (SCR)
        short condition."               e"The system has detected a source 1 Silicon Controlled Rectifier
            (SCR) short condition."               e"The system has detected a source 2 Silicon Controlled Rectifier
            (SCR) short condition."               j"The system has detected a Silicon Controlled Rectifier (SCR) short
            condition on the bypass."               ~"The system has detected a short across one or more inverter static
            switch Silicon Controlled Rectifiers (SCRs)."               y"The system has detected a source 1 Silicon Controlled Rectifier
            (SCR) short condition on the neutral line."               y"The system has detected a source 2 Silicon Controlled Rectifier
            (SCR) short condition on the neutral line."               X"This system has detected a Silicon Controlled Rectifier (SCR)
        open condition."               d"The system has detected a source 1 Silicon Controlled Rectifier
            (SCR) open condition."               d"The system has detected a source 2 Silicon Controlled Rectifier
            (SCR) open condition."               i"The system has detected a Silicon Controlled Rectifier (SCR) open
            condition on the bypass."               x"The system has detected a source 1 Silicon Controlled Rectifier
            (SCR) open condition on the neutral line."               x"The system has detected a source 2 Silicon Controlled Rectifier
            (SCR) open condition on the neutral line."               3"This system has detected a fan failure condition."               4"The system has detected a fan 1 failure condition."               �"A failure has occurred in a fan that cools the system's internal
            components and has resulted in a loss of fan redundancy."               s"Multiple fans have failed resulting in a decreased ability to cool
            the system's internal components."               �"The system has detected a problem with one or more of the blower
            fans.  These are not the system internal cooling fans."               j"The bottom environmental unit blower fan is not operating
                within its normal parameters."               g"The top environmental unit blower fan is not operating
                within its normal parameters."               p"The system has detected a problem with the Variable Frequency
            Drive system for the condenser fan."               >"The system has detected a power failure on one or more fans."               S"The system is preventing a transfer of the load to the alternate
        source."               >"The system is capable to retransfer to the preferred source."               �"The system has detected that the input sources are not within the
        specified phase difference (synchronization window)."               ="This system has detected an input source failure condition."               ."The system has detected source 1 has failed."               ."The system has detected source 2 has failed."               Z"The system is preventing a retransfer of the load back to the
        preferred source."               c"The system is failing to automatically retransfer the load back to the
        preferred source."               2"This system has detected an open fuse condition."               @"The system has detected a control power fuse 1 open condition."               @"The system has detected a control power fuse 2 open condition."               :"The system has detected a rectifier fuse open condition."               :"The system has detected an inverter fuse open condition."               @"The system has detected an output to load fuse open condition."               ="The system has detected a DC capacitor fuse open condition."               1"The system has detected a disconnect condition."              "The system has detected the source 1 disconnect is open.
            A disconnect is a device which disconnects a conductor of a circuit
            from its supply (ex. circuit breaker, contactor, isolating switch,
            disconnecting switch, etc.)."              "The system has detected the source 2 disconnect is open.
            A disconnect is a device which disconnects a conductor of a circuit
            from its supply (ex. circuit breaker, contactor, isolating switch,
            disconnecting switch, etc.)."              0"The system has detected the source 1 PDU (Power Distribution Unit)
            disconnect is open.
            A disconnect is a device which disconnects a conductor of a circuit
            from its supply (ex. circuit breaker, contactor, isolating switch,
            disconnecting switch, etc.)."              0"The system has detected the source 2 PDU (Power Distribution Unit)
            disconnect is open.
            A disconnect is a device which disconnects a conductor of a circuit
            from its supply (ex. circuit breaker, contactor, isolating switch,
            disconnecting switch, etc.)."              	"The system has detected Output to load disconnect 1 is open.
            A disconnect is a device which disconnects a conductor of a circuit
            from its supply (ex. circuit breaker, contactor, isolating switch,
            disconnecting switch, etc.)."              	"The system has detected Output to load disconnect 2 is open.
            A disconnect is a device which disconnects a conductor of a circuit
            from its supply (ex. circuit breaker, contactor, isolating switch,
            disconnecting switch, etc.)."              "The system has detected the source 1 bypass disconnect is closed.
            A disconnect is a device which disconnects a conductor of a circuit
            from its supply (ex. circuit breaker, contactor, isolating switch,
            disconnecting switch, etc.)."              "The system has detected the source 2 bypass disconnect is closed.
            A disconnect is a device which disconnects a conductor of a circuit
            from its supply (ex. circuit breaker, contactor, isolating switch,
            disconnecting switch, etc.)."              "The system has detected the output to load neutral disconnect is
            open.  A disconnect is a device which disconnects a conductor of a
            circuit from its supply (ex. circuit breaker, contactor, isolating
            switch, disconnecting switch, etc.)."              "The system has detected the battery disconnect is open.
            A disconnect is a device which disconnects a conductor of a
            circuit from its supply (ex. circuit breaker, contactor, isolating
            switch, disconnecting switch, etc.)."               T"The system has detected the cabinet 1 battery disconnect is
                open."               T"The system has detected the cabinet 2 battery disconnect is
                open."               T"The system has detected the cabinet 3 battery disconnect is
                open."               T"The system has detected the cabinet 4 battery disconnect is
                open."               T"The system has detected the cabinet 5 battery disconnect is
                open."               S"The system has detected the cabinet 6 battery disconnect is
               open."               T"The system has detected the cabinet 7 battery disconnect is
                open."               T"The system has detected the cabinet 8 battery disconnect is
                open."              "The system has detected the input disconnect is open.
            A disconnect is a device which disconnects a conductor of a
            circuit from its supply (ex. circuit breaker, contactor, isolating
            switch, disconnecting switch, etc.)."              "The system has detected the Output to load disconnect is open.
            A disconnect is a device which disconnects a conductor of a circuit
            from its supply (ex. circuit breaker, contactor, isolating switch,
            disconnecting switch, etc.)."              "The system has detected the bypass disconnect is open.  A
            disconnect is a device which disconnects a conductor of a circuit
            from its supply (ex. circuit breaker, contactor, isolating switch,
            disconnecting switch, etc.)."              
"The system has detected the static switch disconnect is open.
            A disconnect is a device which disconnects a conductor of a circuit
            from its supply (ex. circuit breaker, contactor, isolating switch,
            disconnecting switch, etc.)."               B"A breaker in the system has failed to respond to an Open signal."               B"A breaker in the system has failed to respond to a Close signal."               �"This system has detected a frequency deviation condition.
        The frequency of a source is outside of the pre-determined thresholds
         for a specified amount of time."               {"The frequency for source 1 has been outside of the pre-determined
            thresholds for a specified period of time."               {"The frequency for source 2 has been outside of the pre-determined
            thresholds for a specified period of time."               |"The frequency for the input has been outside of the pre-determined
            thresholds for a specified period of time."               ~"The frequency for the output has been outside of the pre-determined
             thresholds for a specified period of time."               �"The frequency for the bypass input has been outside of the
            pre-determined thresholds for a specified period of time."               �"This system has detected an over-current condition.  The current of a
        source has risen above a pre-determined threshold for a device,
        or system, defined amount of time."               �"The system has detected an over current condition on source 1.
            The current of a source has risen above a pre-determined
            threshold for a device, or system, defined amount of time."               �"The system has detected an over current condition on source 2.
            The current of a source has risen above a pre-determined
            threshold for a device, or system, defined amount of time."               �"The system has detected the output to load is in an over-current
             condition.  The current for the load has risen above a
             pre-determined threshold for a device, or system, defined amount
             of time."              "The system has detected the output to load on phase A is in an
                over-current condition.  The current on this phase has risen above
                a pre-determined threshold for a device, or system, defined amount
                of time."              "The system has detected the output to load on phase B is in an
                over-current condition.  The current on this phase has risen above
                a pre-determined threshold for a device, or system, defined amount
                of time."              "The system has detected the output to load on phase C is in an
                over-current condition.  The current on this phase has risen above
                a pre-determined threshold for a device, or system, defined amount
                of time."               �"A ground source is experiencing an over-current condition.  The
            current for the ground line has risen above a pre-determined
            threshold for a device, or system, defined amount of time."               �"The system has detected a rectifier over current condition.
            The current for the rectifier has risen above a pre-determined
            threshold for a device, or system, defined amount of time."               �"The system has detected an inverter over current condition.
            The current for the inverter has risen above a pre-determined
            threshold for a device, or system, defined amount of time."              "The system has detected an inverter over current condition on
                phase A.  The current for the this phase in the inverter has risen
                above a pre-determined threshold for a device, or system, defined
                amount of time."              "The system has detected an inverter over current condition on
                phase B.  The current for the this phase in the inverter has risen
                above a pre-determined threshold for a device, or system, defined
                amount of time."              "The system has detected an inverter over current condition on
                phase C.  The current for the this phase in the inverter has risen
                above a pre-determined threshold for a device, or system, defined
                amount of time."               �"The system has detected an over current condition on the battery
            converter.  The current of the converter has risen above a
            pre-determined threshold for a device, or system, defined amount
            of time."               �"The system has detected a battery balancer over current condition.
            The current at this point has risen above a pre-determined
            threshold for a device, or system, defined amount of time."               �"The system has detected an over current condition on the
            humidifier. The current of the humidifier has risen above
            a pre-determined threshold for a defined amount of time."               �"There is an over current condition on the system input power.
             The input current has risen above a pre-determined threshold for
             a pre-defined amount of time."               �"The system has detected an over current condition on the neutral
            line of source 1. The neutral current at source 1 has risen above
            a pre-determined threshold for a pre-defined amount of time."               �"The system has detected an over current condition on the neutral
            line of source 2. The neutral current at source 2 has risen above
            a pre-determined threshold for a pre-defined amount of time."               6"This system has detected a sensor failure condition."               C"The system had detected an output to load voltage sensor failure."               <"The system had detected a source 1 voltage sensor failure."               <"The system had detected a source 2 voltage sensor failure."               d"The system had detected a source 1 SCR (Silicon Controlled
            Rectifier) sensor failure."               d"The system had detected a source 2 SCR (Silicon Controlled
            Rectifier) sensor failure."               <"The system has detected a source 1 current sensor failure."               <"The system has detected a source 2 current sensor failure."               X"The system has detected a device temperature and humidity sensor
            failure."               >"The system has detected a glycol temperature sensor failure."               3"The system has detected a local 1 sensor failure."               ^"The system has detected a compressor 1 digital scroll sensor
            failure condition."               ^"The system has detected a compressor 2 digital scroll sensor
            failure condition."               2"The system has detected a supply sensor failure."               ?"The system has detected a cabinet temperature sensor failure."               <"The system has detected a cabinet humidity sensor failure."               <"The system has detected a room temperature sensor failure."               ?"The system has detected a battery temperature sensor failure."               �"The system has detected a failure with air sensor A.  The sensor
            may have been disconnected or the signal is out of range."               �"The system has detected a failure with air sensor B.  The sensor
            may have been disconnected or the signal is out of range."               �"The system has detected a failure with the chilled water supply
            sensor.  The sensor may have been disconnected or the signal is out
            of range."               �"The system has detected a failure with the refrigerant supply
            sensor.  The sensor may have been disconnected or the signal is out
            of range."               �"The system has detected a failure with the fluid supply
            sensor.  The sensor may have been disconnected or the signal is out
            of range."               "The system has detected that a compressor low pressure
            transducer is disconnected or the signal is out of range."               �"The system has detected that compressor 1 low pressure
                transducer is disconnected or the signal is out of range."               j"The system has detected that a remote sensor is disconnected
            or the signal is out of range."               |"The system has detected that the supply air temperature sensor is
            disconnected or the signal is out of range."               |"The system has detected that the return air temperature sensor is
            disconnected or the signal is out of range."               �"The system has detected that a compressor high pressure
            transducer is disconnected or the signal is out of range."               G"This system has detected an internal communication failure condition."               G"This system has detected an external communication failure condition."               A"This system has detected a source gate drive failure condition."               8"The system has detected a source 1 gate drive failure."               8"The system has detected a source 2 gate drive failure."               �"This system has detected a disconnect failure condition.
        A disconnect is a device which disconnects a conductor of a circuit
        from its supply (ex. circuit breaker, contactor, isolating switch,
        disconnecting switch, etc.)."              "The system has detected the output to load neutral disconnect has
        failed.
        A disconnect is a device which disconnects a conductor of a circuit
        from its supply (ex. circuit breaker, contactor, isolating switch,
        disconnecting switch, etc.)."              "The system has detected a shunt trip failure of a disconnecting device
        on source 1.
        A disconnect is a device which disconnects a conductor of a circuit
        from its supply (ex. circuit breaker, contactor, isolating switch,
        disconnecting switch, etc.)."              "The system has detected a shunt trip failure of a disconnecting device
        on source 2.
        A disconnect is a device which disconnects a conductor of a circuit
        from its supply (ex. circuit breaker, contactor, isolating switch,
        disconnecting switch, etc.)."               �"The system has detected an inverter disconnect failure.  A disconnect
        is a device which disconnects a conductor of a circuit from its
        supply (ex. circuit breaker, contactor, isolating switch,
        disconnecting switch, etc.)."               �"The system has detected a battery disconnect failure.  A disconnect
        is a device which disconnects a conductor of a circuit from its
        supply (ex. circuit breaker, contactor, isolating switch,
        disconnecting switch, etc.)."               �"The system has detected a rectifier disconnect failure.  A disconnect
        is a device which disconnects a conductor of a circuit from its
        supply (ex. circuit breaker, contactor, isolating switch,
        disconnecting switch, etc.)."               9"This system has detected an over temperature condition."               C"The system has detected a heat sink 1 over temperature condition."               W"The system has detected an ambient over temperature condition at
        location 1."               �"The system or a component of the system has detected an over
            temperature condition.  The temperature measurement has risen
            above a pre-determined threshold for a device, or system, defined
            amount of time."               �"The transformer is experiencing an over temperature condition.
            The transformer's temperature has exceeded a pre-determined
            threshold for a device, or system, defined amount of time."               �"The battery is experiencing an over temperature condition.
            The battery's temperature has exceeded a pre-determined threshold
            for a device, or system, defined amount of time."               �"The system has detected a rectifier over temperature condition.
            The rectifier's temperature has exceeded a pre-determined threshold
            for a device, or system, defined amount of time."               �"The system has detected an inverter over temperature condition.
            The inverter's temperature has exceeded a pre-determined
            threshold for a device, or system, defined amount of time."               �"The system has detected a rectifier inductor over temperature
            condition.  The rectifier's inductor temperature has exceeded a
            pre-determined threshold for a device, or system, defined amount
            of time."               �"The system has detected an inverter inductor over temperature
            condition.  The inverter's inductor temperature has exceeded a
            pre-determined threshold for a device, or system, defined amount
            of time."               �"The system has detected a battery converter over temperature
            condition.  The battery converter's temperature has exceeded a
            pre-determined threshold for a device, or system, defined amount
            of time."               �"The system has detected a battery balancer Inductor over
            temperature condition.  The battery balancer Inductor's temperature
            has exceeded a pre-determined threshold for a specified amount of
            time."               R"The system has detected a chilled water over temperature
            condition."               U"The system has detected an electric heater over temperature
            condition."               B"The system has detected an inlet air over temperature condition."              C"The system or a component of the system has detected an over
            temperature condition.  The temperature measurement has risen
            above a normal operating range for a device, or system, defined
            amount of time. The system is still operational but a threshold has
            been exceeded."               �"The system has detected a high temperature on a battery string.
         The temperature has exceeded a specified temperature threshold."               ["The system has detected that the load is being supplied by the
        alternate source."               <"This system has detected a phase rotation error condition."               ="The system has detected a phase rotation error on source 1."               ="The system has detected a phase rotation error on source 2."               ?"The system has detected a phase rotation error on the bypass."               >"The system has detected a phase rotation error on the input."               >"This system has detected a control module failure condition."               5"The system has detected a control module 1 failure."               2"The system has detected the history log is full."               >"The system has detected the configuration has been modified."               9"The system has detected the password has been modified."               5"The system has detected the time has been modified."               5"The system has detected the date has been modified."               9"The system has detected the event log has been cleared."               ;"The system has detected the history log has been cleared."               ,"The system has detected a utility failure."               7"The system is performing a battery test at this time."               4"The system load is being supported by the battery."               ?"The system has detected the batteries are due to be replaced."               0"The system is in a shutdown pending condition."               9"The system has detected the battery charger has failed."               �"The system has detected the bypass voltage is unqualified.
        The voltage measurement is outside a pre-determined threshold range for
        a specified amount of time."               ="The system has detected it is time to check the air filter."               0"The system has detected a brown out condition."               |"The system has locked out transfers to bypass.  Too many transfers
        have occurred over a specified amount of time."               @"The system has detected one or more bypass phases are missing."               H"The system is preventing a transfer of the load to maintenance bypass."               e"An error has been detected requiring the system to be put into a
        'locked on bypass' state."               D"The system has detected an output to load short circuit condition."               Q"The system has detected an emergency transfer of the load to
        inverter."               �"The system has detected an Emergency Power Off (EPO) condition.
        An external EPO switch has cut off the power source to the system."               �"The system has detected an inverter back-feed condition.  The inverter
        is feeding power through the bypass back to the input."               ,"The system has detected a DC ground fault."               X"Ground fault current has been detected in the positive DC link to
            ground."               X"Ground fault current has been detected in the negative DC link to
            ground."               A"The system is preventing the use of the static transfer switch."               ["The system has detected the battery log is approaching the maximum
        record limit."               |"The system has detected an unbalanced input current condition.
        The currents of input phases are out of tolerance."               ."The system has detected a self-test failure."               <"The system has detected an Inverter out of sync condition."               C"This system has detected an alarm within the multi-module system."               Q"The multi-module system has detected an alarm condition on
            unit 1."               Q"The multi-module system has detected an alarm condition on
            unit 2."               Q"The multi-module system has detected an alarm condition on
            unit 3."               Q"The multi-module system has detected an alarm condition on
            unit 4."               Q"The multi-module system has detected an alarm condition on
            unit 5."               Q"The multi-module system has detected an alarm condition on
            unit 6."               Q"The multi-module system has detected an alarm condition on
            unit 7."               Q"The multi-module system has detected an alarm condition on
            unit 8."               r"The system has detected an active alarm in one, or more, of the
        sub-modules of the multi-module system."               7"This system has detected a control failure condition."               ;"The system has detected a main control failure condition."               @"The system has detected a redundant control failure condition."               e"The parallel system has detected a control failure condition with
            one of the controls."               U"One or more communications failures have occurred in the main
            control."               2"The system has detected a control board failure."               c"Humidifier control board is required to be connected,
                but no signal is detected."               8"This system has detected a control warning conditions."               ;"The system has detected a main control warning condition."               @"The system has detected a redundant control warning condition."               E"The system has detected a user interface control failure condition."               �"The system has detected the number of redundant power modules has
        fallen below the minimum redundant power module setting."               R"The system has detected a power module failure condition in the
        system."               T"The system has detected a battery module failure condition in the
        system."               U"The system has detected that there is no power being supplied to the
        load."               "The system is off."               X"The system has detected a rectifier under voltage start-up failure
        condition."               6"The system has detected a rectifier fault condition."               E"The system has shutdown the inverter due to a DC bus under voltage."               6"The system has detected an inverter fault condition."               Q"The system has detected an over run of the inverter DC offset
        voltage."               C"The parallel system has detected a low battery warning condition."               @"The parallel system has detected a load share fault condition."               z"The system has detected a battery fault condition.  The battery
        conductors are either reversed or disconnected."               @"The system has detected a battery converter failure condition."               ="The system has detected a battery balancer fault condition."               �"The system has detected an operation fault.  The UPS attempted to
        transfer to maintenance bypass without following the proper sequence."               G"The system load is being supported by both the battery and rectifier."               A"The system had detected the main input neutral is disconnected."               `"The battery's remaining charge is less than or equal to the
        configured low threshold."               ,"The system has detected an internal fault."               6"The system has detected a battery self-test failure."               U"The system has detected an alarm condition on one, or more,
        power modules."               W"The system has detected an alarm condition on one, or more,
        battery modules."               3"The system has detected a control module warning."               �"The system has detected an operation fault.  The UPS attempted to
        transfer to maintenance bypass without following the proper sequence."               -"The system has detected an alarm condition."               b"The system has detected an internal communication failure
        condition with the rectifier."               a"The system has detected an internal communication failure
        condition with the inverter."               v"The parallel system has detected a connection fault.
        One or more of the devices are not properly connected."               ;"The parallel system has detected a communication failure."               �"The system has detected the number of redundant battery modules has
        fallen below the configured redundant battery module threshold."               D"The system has detected that a compressor has failed to pump down."               Q"The system has detected that compressor 1 has failed to pump
            down."               Q"The system has detected that compressor 2 has failed to pump
            down."               C"The system has detected a chilled water low water flow condition."               9"The system has detected a air filter clogged condition."               9"The system has detected a humidifier failure condition."               Z"The system has detected a pre-determined run hours threshold has been
        exceeded."               f"The system has detected the system run hours has exceeded the
            pre-determined threshold."               l"The system has detected the compressor 1 run hours has exceeded
            the pre-determined threshold."               l"The system has detected the compressor 2 run hours has exceeded
            the pre-determined threshold."               l"The system has detected the free cooling run hours has exceeded
            the pre-determined threshold."               t"The system has detected the electrical heater's run hours have
            exceeded the pre-determined threshold."               p"The system has detected the electrical heater's run hours have
            exceeded the pre-determined limit."               p"The system has detected the electrical heater's run hours have
            exceeded the pre-determined limit."               j"The system has detected the hot water run hours have exceeded
            the pre-determined threshold."               h"The system has detected the hot gas run hours have exceeded the
            pre-determined threshold."               k"The system has detected the humidifier run hours have exceeded
            the pre-determined threshold."               m"The system has detected the dehumidifier run hours have exceeded
            the pre-determined threshold."               p"The system has detected the unit blower fan run hours have
            exceeded the pre-determined threshold."               P"The system has detected a loss of communications with another
        module."               ?"The system has detected a loss of communications with unit 1."               ?"The system has detected a loss of communications with unit 2."               ?"The system has detected a loss of communications with unit 3."               ?"The system has detected a loss of communications with unit 4."               ?"The system has detected a loss of communications with unit 5."               ?"The system has detected a loss of communications with unit 6."               ?"The system has detected a loss of communications with unit 7."               ?"The system has detected a loss of communications with unit 8."               ?"The system has detected a loss of communications with unit 9."               @"The system has detected a loss of communications with unit 10."               @"The system has detected a loss of communications with unit 11."               @"The system has detected a loss of communications with unit 12."               @"The system has detected a loss of communications with unit 13."               @"The system has detected a loss of communications with unit 14."               @"The system has detected a loss of communications with unit 15."               @"The system has detected a loss of communications with unit 16."               "The unit is on."               "The unit is off."               6"The system sleep mode operation has been turned off."               "The system power is on."               "The system is on standby."               "The system power is off."               z"The system has detected a high temperature condition.  This group
        contains various high temperature conditions."               X"The temperature has exceeded the high temperature threshold
            for sensor 1."               �"The system has detected a high temperature event on Digital
            Scroll Compressor 1.  The temperature has exceeded a specified
            temperature threshold."               �"The system has detected a high temperature event on Digital
            Scroll Compressor 2.  The temperature has exceeded a specified
            temperature threshold."               q"The temperature has exceeded the high temperature threshold
         for user configured temperature sensor 1."               �"The system has detected a high internal temperature condition.
         The temperature has exceeded a specified temperature threshold."               e"The temperature has exceeded the high temperature threshold
            for external air sensor A."               e"The temperature has exceeded the high temperature threshold
            for external air sensor B."               f"The temperature has exceeded the high temperature threshold
            for the refrigerant supply."               `"The temperature has exceeded the high temperature threshold
            for the fluid supply."               ^"The temperature has exceeded the high temperature threshold
            for the supply air."               ^"The temperature has exceeded the high temperature threshold
            for the return air."               x"The system has detected a low temperature condition.  This group
        contains various low temperature conditions."               S"The temperature is below the low temperature threshold for
            sensor 1."               �"The system has detected a low internal temperature condition.
         The temperature is below a specified temperature threshold."               `"The temperature is below the low temperature threshold for
            external air sensor A."               `"The temperature is below the low temperature threshold for
            external air sensor B."               a"The temperature is below the low temperature threshold for
            the refrigerant supply."               ["The temperature is below the low temperature threshold for
            the fluid supply."               Y"The temperature is below the low temperature threshold for
            the supply air."               t"The system has detected a high humidity condition.  This group
        contains various high humidity conditions."               R"The humidity has exceeded the high humidity threshold for
            sensor 1."               X"The humidity has exceeded the high humidity threshold for
            the return air."               s"The system has detected a low humidity condition.  This group
        contains various high humidity conditions."               @"The humidity is below the low humidity threshold for sensor 1."               S"The humidity is below the low humidity threshold for the return
            air."               ["The system is unable to communicate with the master on the peer to
        peer network."               C"The system lacks the permissions to execute the on/off operation."               W"The system has detected a communication failure on the peer to
        peer network."               "The unit is disabled."               "The system has shutdown."               Q"The system has established communications on the peer to peer
        network."               9"The system has detected a loss of water flow condition."               <"The system has detected high water in the condensate pump."               4"The system has detected a general alarm condition."               "The system has detected a product specific condition.  This condition
        is not currently available via the agent card."               a"The system has locked out the electrical reheat operation for a
     specified amount of time."               Z"The system has locked out the humidifier operation for a
     specified amount of time."               V"The system has locked out compressor operation for a specified amount
     of time."               `"The system has detected a condition that requires a service
     representative be contacted."               4"This group contains various low memory conditions."               j"The system has detected a low memory condition.  The control
         board is low in memory resources."               ?"This group contains various memory device failure conditions."               4"The system has detected a memory 1 module failure."               4"The system has detected a memory 2 module failure."               ?"This group contains various memory device failure conditions."               �"The system has detected the unit code is not configured.  The unit
            code must be configured before system start-up."               m"The system has detected a unit code error.  This digit of the unit
            code value is out of range."               m"The system has detected a unit code error.  This digit of the unit
            code value is out of range."               m"The system has detected a unit code error.  This digit of the unit
            code value is out of range."               m"The system has detected a unit code error.  This digit of the unit
            code value is out of range."               m"The system has detected a unit code error.  This digit of the unit
            code value is out of range."               m"The system has detected a unit code error.  This digit of the unit
            code value is out of range."               m"The system has detected a unit code error.  This digit of the unit
            code value is out of range."               m"The system has detected a unit code error.  This digit of the unit
            code value is out of range."               m"The system has detected a unit code error.  This digit of the unit
            code value is out of range."               m"The system has detected a unit code error.  This digit of the unit
            code value is out of range."               m"The system has detected a unit code error.  This digit of the unit
            code value is out of range."               m"The system has detected a unit code error.  This digit of the unit
            code value is out of range."               m"The system has detected a unit code error.  This digit of the unit
            code value is out of range."               m"The system has detected a unit code error.  This digit of the unit
            code value is out of range."               m"The system has detected a unit code error.  This digit of the unit
            code value is out of range."               m"The system has detected a unit code error.  This digit of the unit
            code value is out of range."               m"The system has detected a unit code error.  This digit of the unit
            code value is out of range."               m"The system has detected a unit code error.  This digit of the unit
            code value is out of range."               �"The system has detected a high external dew point condition.
        The room dew point has exceeded the specified threshold."               ^"The system has detected the humidifier control board is disconnected
     or not installed."               8"The BMS fan speed control reset counter has timed out."               \"The firmware update to the agent card has failed and the firmware is now
        corrupt."               f"This group contains various system access conditions.  An examples is
        an open access panel."               >"The system has detected the front access panel/door is open."               ="The system has detected the rear access panel/door is open."               8"This group contains various damper failure conditions."               e"The system has detected an emergency damper failure.  The damper is
        in the wrong position."               "A remote shutdown occurred."               "Fire Alarm."               "Heaters Overheated."               3"This group contains condenser failure conditions."               "Condenser 1 Failure."               "Condenser 2 Failure."               f"The condenser Transient Voltage Surge Suppressor or Surge
            Protection Device has failed."               :"The system has detected the humidifier cylinder is worn."              "The system has detected a low current condition.  The current of
        one or more sources in the system has fallen below a threshold for
        a specified amount of time.  The threshold and time that triggered
        this condition is system dependent."               �"The system has detected a low current condition on the
            humidifier. The current of the humidifier has fallen below
            a pre-determined threshold for a defined amount of time."               �"There is a low current condition on the input power source. The
             current of the input power source has fallen below a
             pre-determined threshold for a defined amount of time."               E"This group contains failure conditions for the heat rejection unit."               #"The heat rejecter fan has failed."               �"The heat rejecter voltage suppression has failed and is no longer
             able to protect the unit from power fluctuations."               0"The free cooling capability has been disabled."               G"The sensor used to detect water leaks is not connected or has failed."              �"There is no load detected on the output.  This can be an indication
         that the output is being powered by an external bypass source and has
         inadvertently been left on external bypass.  This warning is triggered
         after a delay.  The delay is specified by the object
         'lgpPwrNoLoadWarningDelay'.  The alarm is triggered when the output
         current falls below a certain threshold specified by the object
         'lgpPwrNoLoadWarningLimit'"               1"Grouping level for firmware related conditions."              �"The firmware on the system or one or more components of the
            system must be updated.  This typically indicates that one or more
            components of the system contain corrupted firmware or the
            firmware on one or more components are incompatible with one
            another.  When this condition is active the system may not be able
            to function to its full capacity or may not be able to function at
            all."               t"Objects in this group of conditions are related to testing or test
         events.  This object is never active."              B"This is a 'test' condition.  It is a generic test event that can
            be utilized to evaluate system handling of events.  Some products
            will support the activation of this event upon user request so that
            user management stations can execute end-to-end event handling
            tests."               2"Grouping level for receptacle branch conditions."               _"The receptacle branch module or control system has failed.
             Service is required."               ("The receptacle branch breaker is open."               �"The input is not qualified to provide power to the system.  This may
        be due to system input over-voltage, system input under-voltage,
        system input frequency out of range, or other similar issues."               �"This summary event is asserted when the bypass is not available.
        Possible causes include: Bypass Sync Error, Bypass Line Fail, Bypass
        Overvoltage, Bypass Undervoltage, Bypass Phase Rotation Error, or
        other similar causes."               \"The system is failing to automatically transfer the load to the
        alternate source."              "A Static Bypass Switch (SBS) Failure has been detected. Possible
        causes include: SBS Phase Open, SBS SCR (Silicon Controlled Rectifier)
        Shorted, SBS Overload Exceeded, Bypass Power Supply
        Fail, Static Bypass Switch Fuse Failure, or other similar causes."               r"On at least one phase of the static bypass switch (SBS), the power
        dissipation limit has been exceeded."               �"The system has performed too many pulse parallel operations within
        the specified time interval.  A pulse parallel operation is a
        momentary operation of the static bypass switch (SBS) in parallel with
        the inverter."               R"The static bypass switch is off due to the state of an external
        signal."               Z"Manual transfer from inverter to bypass is inhibited.  Bypass is not
        qualified."               9"Manual retransfer from bypass to inverter is inhibited."               �"The battery is not charging properly. Some reasons for this condition
        include, but are not limited to: battery charger failure,
        battery failure, etc."               4"Automatic (scheduled) battery tests are inhibited."               X"A reduced battery charging algorithm is being used due to an external
        signal."               �"The battery capacity is low. Some reasons for this condition include,
        but are not limited to: a battery is offline, the battery age has
        reduced its capabilities, etc."               k"The temperature difference between two batteries in the system
        exceeds the predefined threshold."               a"The rectifier output voltage has been increased to equalize the battery
        voltage level."               B"Battery charging is inhibited due to an external inhibit signal."               9"This group contains battery monitor service conditions."               T"External battery monitor 1 indicates battery maintenance is
            required."               T"External battery monitor 2 indicates battery maintenance is
            required."               ="Battery system ground fault amperage exceeds the threshold."               ~"With the battery breaker closed, the battery voltage has dropped
        below the calculated End-Of-Discharge (EOD) limit."               �"The system has detected an Emergency Power Off (EPO) condition.
        The local EPO switch has cut off the power source to the system."               y"The system has detected a lagging output power factor below the
        threshold, resulting in reduced load capacity."               y"The system has detected a leading output power factor below the
        threshold, resulting in reduced load capacity."               �"The system has detected an output to load fault.  This could be
        caused by over or under voltage, or by over or under frequency."               ="Restart of the inverter is inhibited by an external signal."              "The system has shutdown the inverter due to a sustained overload.
        This event does not indicate if the load has been dropped or
        transferred to bypass.  At least one phase of the inverter power
        dissipation limit has been exceeded."               ="The inverter is off due to the state of an external signal."               2"The system has detected an active input contact."               9"The system has detected that input contact 1 is active."               9"The system has detected that input contact 2 is active."               9"The system has detected that input contact 3 is active."               9"The system has detected that input contact 4 is active."               9"The system has detected that input contact 5 is active."               9"The system has detected that input contact 6 is active."               9"The system has detected that input contact 7 is active."               9"The system has detected that input contact 8 is active."               9"The system has detected that input contact 9 is active."               :"The system has detected that input contact 10 is active."               :"The system has detected that input contact 11 is active."               :"The system has detected that input contact 12 is active."               :"The system has detected that input contact 13 is active."               :"The system has detected that input contact 14 is active."               :"The system has detected that input contact 15 is active."               :"The system has detected that input contact 16 is active."               D"The operation of the rectifier is inhibited by an external signal."               6"The bypass backfeed breaker is in the open position."               _"Auto restart is in progress.  Becomes inactive when auto restart
        completes or fails."               6"Auto restart is inhibited due to an external signal."               "Auto restart has failed."               3"A generator is supplying the power to the system."               _"The input filter disconnect has opened too many times within a given
        period of time."               �"The system is in an operational mode intended for testing.  In normal
        operating conditions, the system should not be in this state."               o"Load Bus Sync Operation is active.  This synchronizes the UPS output
        with the output of another UPS."               h"The system has detected that conditions to perform Load Bus Sync
        Operation are not satisfied."               ["A controls reset is required because one or more critical settings
        have changed."               g"A temperature sensor is reporting a value outside the bounds of a
        properly operating sensor."               �"The current on one input phase is much greater or lower than the
         average current of all the phases. This may indicate improper operation
         of the rectifier or input filter."               9"The system has detected an alarm with one of the pumps."               @"The system has detected a loss of flow with one or more pumps."               5"The system has detected a loss of flow with pump 1."               5"The system has detected a loss of flow with pump 2."               �"The system has detected a short cycling of the pumps.  One or more
            of the pumps has been turned on and off a number of times within a
            specified time period."              !"The system has detected a short cycling of one or more pump
            inverters and has temporarily locked out further pump operation
            to protect from thermal overload.  A short cycle is defined as
            powering on and off a number of times over a set time period."              *"The system has detected a short cycling of the inverter for
                pump 1 and has temporarily locked out further pump operation
                to protect from thermal overload.  A short cycle is defined as
                powering on and off a number of times over a set time period."              *"The system has detected a short cycling of the inverter for
                pump 2 and has temporarily locked out further pump operation
                to protect from thermal overload.  A short cycle is defined as
                powering on and off a number of times over a set time period."               :"The system has detected an alarm with one of the valves."               �"The system has detected a problem with the chilled water valve
            position.  The position of the chilled water control valve does not
            match an expected value."               '"The system has detected condensation."               p"The system has detected a maintenance condition.  This group
        contains various maintenance conditions."                "System is due for maintenance."               ,"The system maintenance has been completed."               �"This group contains various conditions signalled by external inputs.
        Each event is deactivated when the signal is inactive."               :"Fire detected, as indicated by an external input signal."               E"Loss of flow is detected, as indicated by an external input signal."               E"The reheater is shut down and disabled by an external input signal."               b"A temperature has exceeded its threshold, as indicated by an
            external input signal."               G"The compressor is shut down and disabled by an external input signal."               G"The humidifier is shut down and disabled by an external input signal."               Z"This group contains conditions signaling shutdown of various system
        components."               b"An event has occurred requiring some system components to be
            shutdown and disabled."               4"Supply to high power components has been shutdown."               +"This group contains condenser conditions."               <"Condenser 1 is not operating within its normal parameters."               �"The system has detected a humidity reading that remained outside of
        the proportional control band for an extended period of time."               %"This group contains remote sensors."               �"Remote sensor is disconnected or the signal is out of range.  The
             event is deactivated when sensor signal is re-established."               �"Remote sensor is disconnected or the signal is out of range.  The
             event is deactivated when sensor signal is re-established."               �"Remote sensor is disconnected or the signal is out of range.  The
             event is deactivated when sensor signal is re-established."               �"Remote sensor is disconnected or the signal is out of range.  The
             event is deactivated when sensor signal is re-established."               �"Remote sensor is disconnected or the signal is out of range.  The
             event is deactivated when sensor signal is re-established."               �"Remote sensor is disconnected or the signal is out of range.  The
             event is deactivated when sensor signal is re-established."               �"Remote sensor is disconnected or the signal is out of range.  The
             event is deactivated when sensor signal is re-established."               �"Remote sensor is disconnected or the signal is out of range.  The
             event is deactivated when sensor signal is re-established."               �"Remote sensor is disconnected or the signal is out of range.  The
             event is deactivated when sensor signal is re-established."               �"Remote sensor is disconnected or the signal is out of range.  The
             event is deactivated when sensor signal is re-established."               6"The Neutral Snubber board has stopped communicating."               #"The redundant charger has failed."               &"Board input contactor power failure."               '"Board1 input contactor power failure."               '"Board2 input contactor power failure."               ]"The number of sensors installed on the device has exceeded the
	     pre-determined limit."               !"An open door has been detected."               $"An open circuit has been detected."               %"A closed circuit has been detected."              �"The number of sensors that can be displayed (monitored) on the
        device has exceeded the pre-determined limit.  Note this condition
        differs from the lgpConditionTooManySensors in that the system may
        currently have less than the maximum of installed sensors present but
        one or more of those sensors can not be displayed because the display
        order table (lgpPduAuxMeasOrderTable) contains entries for sensors
        that are not currently installed.  This condition effectively
        prevents one or more installed sensors from being presented in the
        lgpPduAuxMeasTable.  It is possible for both this condition and the
        lgpConditionTooManySensors condition to be active at the same time."               D"The present number of conditions (rows) in the lgpConditionsTable."                      �"A list of condition table entries.  The table contains zero, one,
         or many rows at any moment, depending upon the number of conditions
         in effect.  The number of rows in the table is given by
         (lgpConditionsPresent).  The table is initially empty at agent startup.
         The agent creates a row in the table each time a condition is detected
         and deletes that row subject to the following rules:

         Rows are removed from the table based on the following rules:
         1. If a condition does not require acknowledgement
            (see 'lgpConditionAckReq') the condition is removed as soon as
            the issue clears (see 'lgpConditionCurrentState').
         2. If a condition requires acknowledgement (see 'lgpConditionAckReq')
            the condition is removed as soon as the issue clears
            (see 'lgpConditionCurrentState') AND the condition is acknowledged
            (see 'lgpConditionAcknowledged').
         3. If the columns 'lgpConditionCurrentState' and
            'lgpConditionAcknowledged' are not present for the condition
            then the condition will be removed as soon as the issue causing
            the condition clears.

         The agent creates the first row with lgpConditionId equal to 1,
         and increments the value of 'lgpConditionId' each time a new row is
         created, wrapping to the first free value greater than or equal to 1
         when the maximum value of lgpConditionId would otherwise be exceeded.
         The number of rows in the table at any given time is reflected by
         the value of 'lgpConditionsPresent'.
        "                       �"This entry defines the contents of the rows for the table
            'lgpConditionsTable'.  A row in this table cannot be created
            or deleted by SNMP operations on columns of the table."                       �"A unique identifier for a condition. This value must remain
            constant between agent initializations.  This OID is used as
            an index to identify a row in the table 'lgpConditionsTable'."                       �"A reference to a condition description object. The object
            referenced should not be accessible, but rather be used to provide
            a unique description."                       E"The value of sysUpTime when the condition occurred (became active)."                      �"This object will be included as a varbind in some
             rows of the table.  It is a reference to a table object in
             the MIB.  The value of this object will be the OID of a table
             that the object that the condition applies to is defined.
             The table row corresponding to this object will also contain
             a varbind 'lgpConditionTableRowRef' that will specify which
             instance (row) in the referenced table the object is defined in.

             Example:
               TABLE ROW:
                lgpConditionId              5
                lgpConditionDescr           lgpConditionRcpBranchBreakerOpen
                lgpConditionTime            393884848
                lgpConditionTableRef        lgpPduRbTable
                lgpConditionTableRowRef     lgpPduRbEntryId.1.4
                lgpConditionType            alarm
                lgpConditionCurrentState    active
                lgpConditionSeverity        major
                lgpConditionAcknowledged    acknowledged
                lgpConditionAckReq          required

             In the above example the breaker opened for a Receptacle branch.
             The specific receptacle branch is specified by the additional
             varbind (lgpEventParmTableRowRef).  In this case the notification
             is for the 4th receptacle branch on the 1st PDU in the cluster.
            "                      �"This is a reference to the (cell) in the table specified by the
             companion varbind (lgpConditionTableRef) in this condition.
             The row in the table where this cell exists represents the object
             that this condition applies to.

             Example:
               TABLE ROW:
                lgpConditionId              5
                lgpConditionDescr           lgpConditionRcpBranchBreakerOpen
                lgpConditionTime            393884848
                lgpConditionTableRef        lgpPduRbTable
                lgpConditionTableRowRef     lgpPduRbEntryId.1.4
                lgpConditionType
                lgpConditionCurrentState    active
                lgpConditionSeverity        major
                lgpConditionAcknowledged    acknowledged
                lgpConditionAckReq          required

             The table containing the definition of the receptacle branch
             (lgpPduRbTable) is given by the varbind (lgpConditionTableRef)

             The specific receptacle branch (instance) is specified by the
             varbind (lgpConditionTableRowRef).  In this case the condition
             is for the 4th receptacle branch on the 1st PDU in the PDU cluster.

             If one wanted to retrieve the serial number for this
             receptacle branch the OID would be: lgpPduRbEntrySerialNum.1.4.
            "                       1"The type of condition in this row in the table."                      r"Indication of the current state of the event.  If the state
             is 'active' then the condition currently exists.  If the
             state is 'inactive' then the condition no longer exists (i.e.
             the situation causing the condition has cleared or been
             resolved).  The behavior of some devices is to remove
             the condition from this table when the condition clears.
             The behavior of other devices is to leave the condition
             entry in the table until the condition is acknowledged (
             see lgpConditionAcknowledged and lgpConditionAckReq)."                       9"This represents the relative severity of the condition."                      �"This indicates if the condition has been acknowledged.
             If the value is 'notAcknowledged' then the condition has
             not been acknowledged.  If the value is 'acknowledged'
             then the condition has been acknowledged.  Writing a value
             of 'acknowledged' to this object acknowledges the condition
             and the value will be changed to 'acknowledged'.

             If the current state of the condition is 'active'
             (see lgpConditionCurrentState) the condition will, for all
             devices remain in the table regardless of the state of the
             'lgpConditionAcknowledged' object.

             If the 'lgpConditionAckReq' is 'notRequired' or this column
             does not exist for the row then this object has no affect on
             the duration the condition stays in the lgpConditionsTable.

             If the 'lgpConditionAckReq' is 'required' then the condition
             will remain in the condition table until both the
             'lgpConditionCurrentState' is 'inactive' AND
             'lgpConditionAcknowledged' is 'acknowledged'.
            "                      e"This indicates if the corresponding condition does or does not
             require user acknowledgement.  Conditions that require
             user acknowledgement will have a value of 'required'.  Those
             conditions that do not require user acknowledgement will have
             a value of 'notRequired' or in some devices the column may
             not be present at all.

             If a condition requires acknowledgement it will remain in the
             table until both the 'lgpConditionCurrentState' and
             'lgpConditionAcknowledged' are 'inactive' and 'acknowledged'
             respectively (see lgpConditionAcknowledged).

             If a condition does not require acknowledgement it will
             be removed from the table as soon as its
             'lgpConditionCurrentState' is 'inactive'.
            "                         �-- STATUS      current
-- DESCRIPTION
--    "Items under this sub-tree allow the user to control actions
--     associated with conditions."
�"Event Reset Command.  This command will reset all of the
            device's events.  On some units, when an event is activated, a
            'set' field is also marked and maintained even when the event has
            become inactive.  The 'set' field is only cleared when the user
            clears it and the event is no longer active.  This item will clear
            the 'set' field for all events that are not active."                       d"Event Acknowledge Command.  This command will acknowledge all of the
            device's events."                      l"A list of condition control table entries.  The table contains zero, one,
         or many rows at any moment, depending upon the number of conditions that
         are controllable by the unit.  This table does not necessarily contain all
         conditions supported by the unit.  This table only contains conditions that
         are end-user modifiable."                       �"This entry defines the contents of the rows for the table
            'lgpConditionControlTable'.  A row in this table cannot be created
            or deleted by user initiated SNMP operations on columns of the table."                       <"This is the index indicating the nth element of the table."                      y"A reference to an Object Identifier (OID) representing a unique
            condition. The referenced OID is used solely for identification
            purposes.

            The object identifier referenced here will be the same object
            identifier referenced in the lgpConditionsTable (column:
            lgpConditionDescr) when the condition is activated."                      b"The value in this column determines if the device is currently
            capable of generating this event. If the value is 'enabled' then
            the event will be generated if the condition indicated by
            lgpConditionControlDescr becomes active. If the value is
            'disabled' the device will never generate the event. This value is
            stored on the managed device.
            Some devices do not allow write access to some entries in this
            column. The 'lgpConditionControlEnableCapability' column indicates
            whether this entry can be written."                       "The 'type' assigned or configured for this condition. The value
            assigned to the condition here is displayed in the
            lgpConditionsTable (column: lgpConditionType). For some units this
            is user configurable. This value is stored on the managed device."                       �"Some devices do not allow write access to some entries in the
            'lgpConditionControlEnableStatus' column. This column indicates
            whether the 'lgpConditionControlEnableStatus' entry for this row
            can be written."                       /"The ASCII text description for the condition."                      �"The network name in a node.domain.com like format.  This object is
        intended to be used as a varbind object by other notifications that
        have a context of a network address.  As an example the
        lgpAgentDnsLookupFailure trap which describes a network name that
        is failing or has failed to be resolved from a Domain Name Service (DNS)
        lookup.

        Refer to RFC 952 for further information."                        -- STATUS      current
-- DESCRIPTION
--    "Liebert well known Flexible conditions are defined by OIDs that reside
--    in this sub-tree.  These OIDs can be found in the
--    LIEBERT-GP-FLEXIBLE-CONDITIONS-MIB which is located in the file
--    LIEBERT_GP_FLEXIBLE_COND.MIB."
