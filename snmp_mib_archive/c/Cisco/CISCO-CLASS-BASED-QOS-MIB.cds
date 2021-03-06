#-- *****************************************************************
-- Cisco Class-Based QoS Configuration and Statistics MIB
--
-- Copyright (c) 2008-2009 by cisco Systems, Inc.
--   
-- All rights reserved.
--   
-- ***************************************************************
   7"Enums to indicate drop types for C3PL Account action."              b"A value that represents an unit type of queue
        size.

        packets(1)   Represents the UNITS of 'packets' for
                     queue size.

        cells(2)     Represents the UNITS of 'cells' for 
                     queue size.

        bytes(3)     Represents the UNITS of 'bytes' for 
                     queue size.

        ms(4)        Represents the UNITS of 'milli-seconds' for
                     queue size

        us(5)        Represents the UNITS of 'micro-seconds' for
                     queue size

        To support future extensions, the CbQosQueueUnitType 
        textual convention SHOULD NOT be sub-typed in object
        type definitions.

        It MAY be sub-typed in compliance statements in order to
        require only a subset of these queue size types for a 
        compliant implementation.

        Implementations must ensure that CbQosQueueUnitType 
        objects and any dependent object (e.g. CbQosQueueDepth) 
        are consistent. An inconsistentValue error must be 
        generated if an attempt to change an CbQosQueueUnitType 
        object would lead to an undefined CbQosQueueDepth value.
        In particular, CbQoSQueueUnitType/CbQosQueueDepth pairs 
        must be changed together if the CbQosQueueUnitType
        type changes (e.g. from packets(1) to cells(2))."              �"This denotes which mechanism is used with RED.

        precedence      Based on IP precedence
        dscp            Based on DSCP values
        discardClass    Based on discard class
        l2Cos           Based on L2-COS class
        atmClp          Based on ATM-CLP class
        mplsExp         Based on MPLS Experimental values
        redDefault      Default RED profile
        redUserDefault  User specified Default RED profile"               d"Enums to indicate whether the MatchStatement is matching
        on negated criteria (Match Not)."               �"A value that indicates the type of bandwidth
        estimate algorithm.
        typeNone         no algorithm is selected
        typeCorvil         algorithm based on Corvil
                         bandwidth calculation."               P"Enums to indicate whether the Classmap is for
        Match All or Match Any."               �"Enums to indicate the type of IP header compression.
        rtp(1)         UDP/RTP compression.
        tcp(2)         TCP compression.
        bothRtpTcp(3)  Both UDP/RTP and TCP compression."              b"This denotes which mechanism is used with QueueLimit.

        precedence      Based on IP precedence
        dscp            Based on DSCP values
        discardClass    Based on discard class
        qosGroup        Based on qosgroup class
        atmClp          Based on atm-clp class
        mplsExp         Based on MPLS Experimental class"               �"The limit used by the traffic-shaping feature.
        This value may be 'average' or 'peak',
        which indicates whether it is shaping by average
        rate or peak rate."              <"Enums to indicate the type of logical interface to which
        a particular service policy is attached.
        Main Interface   - Service policy is attached on the main 
                      interface.
        Sub Interface    - Service policy is attached on the sub 
                      interface.
        Frame Relay DLCI - Service policy is attached on the a 
                      Frame Relay DLCI.
        ATM VC           - Service policy is attached on the an ATM 
                      Virtual Circuit.
        Control Plane    - Service policy is attached to the control
                      plane of the device.
        Vlan Port        - Service policy is attached to a particular
                      vlan of a layer 2 interface that can carry
                      traffic on multiple vlans."               �"The available packet marking types which can use
        tablemap to establish to-from relationship for
        enhanced packeting marking."               3"A CTD (Corvil Traffic Descriptor) specific value."               T"Enums to indicate whether the Policymap is for
        Input or Output direction."              "Bit-wise representation of packet marking feature available
        today.  For historical reason, both packet marking and SET
        terms have been used across Cisco Class-Based QOS, but they
        have the same meaning.  This feature is used to mark/set
        appropriate fields(e.g, dscp, precedence, mpls-experimental
        -topmost,l2CosInner) for applicable packets.
          ipDscp             Packet set/mark with DSCP bit
          ipPrecedence       Packet set/mark with Precedence bit
          qosGroupNumber     Packet set/mark with QosGroup bit
          frDeBit            Packet set/mark with FR-DE  bit
          l2Cos              Packet set/mark with COS bit
          mplsExp            Packet set/mark with MPLS Experimental bit
          discardClass       Packet set/mark with discard class bit
          mplsExpTopMost     Packet set/mark with MPLS Experimental   
                             topmost bit             
          srpPriority        Packet set/mark with srp priority bit
          frFecnBecn         Packet set/mark with FECN bit
          ipDscpTunnel       Packet set/mark with DSCP tunnel bit
          ipPrecedenceTunnel Packet set/mark with Precedence tunnel bit
          l2CosInner         Packet set/mark with COS inner bit"              �"The units of the bandwidth, used to allocate
        bandwidth. Bandwidth can be either an absolute kbps 
        number, or be expressed as a percentage of the 
        available bandwidth.  

        kbps                Allocated bandwidth in Kilo bits Per Second

        percentage          Allocated bandwidth as percentage of 
                            reference  bandwidth.

        percentageRemaining Percentage of unallocated bandwidth
                            reserved for this class.

        ratioRemaining       Ratio of unallocated bandwidth reserved 
                             for this class (in relation to other 
                             classes)."              j"Denotes a generic Queue depth value.

        An CbQoSQueueDepth value is always interpreted within 
        the context of an CbQosQueueUnitType value. Every usage 
        of the CbQosQueueDepth textual convention is required to
        specify the CbQosQueueUnitType object which provides 
        the context. It is suggested that the 
        CbQoSQueueUnitType object is logically registered 
        before the object(s) which use the CbQosQueueDepth 
        textual convention if they appear in the same logical
        row. The value of an CbQosQueueDepth object must always
        be consistent with the value of the associated
        CbQosQueueUnitType object. Attempts to set an
        CbQosQueueDepth object to a value which is inconsistent 
        with the associated CbQosQueueUnitType must fail with 
        an inconsistentValue error."              �"Enums to indicate different QoS objects .
        policymap      - The object in query is a PolicyMap, being
                         attached on a logical interface.
        classmap       - The object in query is a ClassMap, being
                         used by it's parent PolicyMap.
        matchStatement - The object in query is a Match Statement,
                         being used by it's parent ClassMap.
        queueing       - The object in query is a queueing feature being
                         applied on the parent ClassMap.
        randomDetect   - The object in query is a Random Detect feature 
                         being applied on the parent ClassMap.
        trafficShaping - The object in query is a traffic-shaping 
                         feature being applied on the parent ClassMap.
        police         - The object in query is a Police feature being 
                         applied on the parent ClassMap.
        set            - The object in query is a Packet Marking 
                         feature being applied on the parent ClassMap.
        compression    - The object in query is a IP header compression
                         feature being applied on the parent ClassMap.
        ipslaMeasure   - The object in query is Measure IPSLAs feature  
                         being applied on the parent ClassMap.
        account        - The object in query is C3Pl_Account feature being
                         applied on the parent ClassMap."              f"The available actions taken on packets upon
        conforming, exceeding or violating the configured 
        police rate.

        Transmit - Transmit the packet if the packet conforms 
                   or exceeds the configured police rate.
        Set IP DSCP - Set the IP DSCP value if the packet
                      conforms or exceeds the configured police
                      rate.
        Set IP Precedence - Set the IP precedence value if
                            the packet conforms or exceeds 
                            the configured police rate.
        Set Qos Group - Set the QoS Group value if
                        the packet conforms or exceeds 
                        the configured police rate.
        Set MPLS Exp - Set the MPLS Experimental Imposition
                       vaule for the applicable action.
        Set ATM CLP  - Set the ATM CLP bit for the
                       applicable action.
        Set FR DE    - Set the FR DE bit for the
                       applicable action.
        Set L2 COS   - Set the 802.1p priority field in 802.1Q 
                       VLAN tag for the applicable action.
        Set Discard Class - Set the Discard Class value for the
                       applicable action.              
        Drop - Drop the packet if the packet conforms or 
               exceeds the configured police rate.
        Set MPLS Exp TopMost - Set the MPLS Experimental 
               TopMost vaule for the applicable action.
        Set IP DSCP Tunnel - Set the IP DSCP Tunnel
               value for the applicable action.
        Set IP Precedence Tunnel - Set the IP Precedence
               Tunnel value for the applicable action.
        Set Inner L2 COS   - Set the 802.1p priority field in inner 
                       802.1q VLAN tag (QinQ) for the applicable
        action."              1"The type of rate.  Rate type can be either an
        absolute bps number, or be expressed as a percentage 
        of the available interface bandwidth, or an absolute
        cps number.

        bps             Bits Per Second
        percentage      %
        cps             Cells Per Second"                                                A�"Cisco Class-Based QoS MIB

        **********************************
                    Overview
        **********************************
        This MIB provides read access to Quality of Service (QoS) 
        configuration and statistics information for Cisco 
        platforms that support the Modular Quality of Service 
        Command-line Interface (Modular QoS CLI).  We recommend 
        users of this MIB to review the user documentation of 
        MQC based QoS features.

        Configuration information available through this MIB includes
        all ClassMap, PolicyMap, Match Statements, and Feature 
        Actions configuration parameters. The definitions of each
        objects mentioned above are explained in the QoS objects
        section.

        Statistics available through this MIB include summary
        counts/rates by traffic class before and after any configured
        QoS policies are enforced.  In addition, detailed
        feature-specific statistics are available for select
        PolicyMap features.

        Contact your Cisco representative to determine on which
        platforms the MIB is currently supported.

        **********************************
                   QoS  Acronyms
        **********************************
        BECN: Frame Relay Backward Explicit Congestion Notification
        CIR : Committed Information Rate
        DSCP: Differentiated Service Code Point
        EB  : Estimate Bandwidth
        ECN : Explicite Congestion Notification
        FECN: Frame Relay Forward Explicit Congestion Notification
        IPHC: Internet Protocol Header Compression 
        IPSLAs: IP Service Level Agreement Technologies
        PIR : Peak Information Rate
        PREC: Precedence
        QoS : Quality Of Services
        RED : Random Early Detect
        SRP : Spatial Reuse Protocol
        WRED: Weighted Random Early Detect
        C3PL: Cisco Common Classification Programming Language

        **********************************
                    MIB Objects
        **********************************
        This MIB consists of the following object groups:
        1 :  cbQosServicePolicy
        2 :  cbQosInterfacePolicy
        3 :  cbQosFrameRelayVCPolicy
        4 :  cbQosATMPVCPolicy
        5 :  cbQosObjects
        6 :  cbQosPolicyMapCfg
        7 :  cbQosClassMapCfg
        8 :  cbQosMatchStmtCfg
        9 :  cbQosQueueingCfg
        10:  cbQosREDCfg
        11:  cbQosREDClassCfg
        12:  cbQosPoliceCfg
        13:  cbQosTSCfg
        14:  cbQosSetCfg
        15:  cbQosClassMapStats
        16:  cbQosMatchStmtStats
        17:  cbQosPoliceStats
        18:  cbQosQueueingStats
        19:  cbQosTSStats
        20:  cbQosREDClassStats
        21:  cbQosPoliceActionCfg
        22:  cbQosIPHCCfg
        23:  cbQosIPHCStats
        24:  cbQosSetStats
        25:  cbQosPoliceColorStats
        26:  cbQosTableMapCfg
        27:  cbQosTableMapValueCfg
        28:  cbQosTableMapSetCfg
        29:  cbQosEBCfg
        30:  cbQosEBStats
        31:  cbQosMeasureIPSLACfg
        32:  cbQosC3plAccountCfg
        33:  cbQosC3plAccountStats

        **********************************
                  Definitions
        **********************************
        A logical interface in the context of this MIB is either
        a main-interface, a sub-interface, a Frame Relay DLCI,
        an ATM virtual circuit or the control-plane on the router.

        The (aggregate) control-plane on the router is defined as 
        a collection of processes running at process level on the
        platform (route) processor. This includes the functions 
        related to networking control capabilities such as routing,
        signaling, provisioning, as well as resource and service 
        discovery. Also includes process switched traffic on the
        device. 

        The term distributed control plane, in the context of 
        this mib, represents the control-plane functionality at
        the level of individual linecards. This is only
        applicable for the case of distributed platforms.

        **********************************
                   QoS Objects
        **********************************
        To understand Class-Based QoS features and how to navigate 
        the MIB tables above, the key element is to comprehend the 
        relationships among the different QoS objects. QoS objects 
        consist of ClassMaps, Match Statements and PolicyMaps, 
        and each Feature Actions. 

        Match Statement - The specific match criteria to identify
        packets for classification purposes.

        ClassMap - A user-defined traffic class that contains
        one or many match statements used to classify packets into
        different categories.

        Feature Action - An action is a QoS feature. Features 
        include police, traffic-shaping, queueing, random detect 
        and packet marking(set). After the traffic is being 
        classified, based on the traffic classification, we can 
        apply these action to each traffic class.

        PolicyMap - A user-defined policy that associates each QoS 
        action to the user-defined traffic class (ClassMap).

        Service Policy - Service policy is a policymap
        that is being attached to a logical interface. Because a
        policymap can also be a part of the hierarchical structure 
        (inside a classmap), only a policymap that is directly 
        attached to a logical interface is considered a service 
        policy.  Each service policy is uniquely identified by an 
        index called cbQosPolicyIndex. This number is usually 
        identical to its cbQosObjectsIndex as a policymap.

        *****************************************
        Runtime Instance vs Configuration objects
        *****************************************

        Each QoS objects have 2 sets of behaviours : 
        1: A configuration instance
        - Each QoS objects has it's configuration portion of
          information attached to it. This information does
          not change whether this object is attached on multiple
          logical interfaces and used multiple times. We
          uniquely identify each QoS object with identical
          configuration with the same index - cbQosConfigIndex.
          This index is used in all configuration related
          tables. 

        2: A runtime instance
        - Each QoS objects has it's statistical portion of
          information attached to it. This information changes
          when this object is attached on multiple logical 
          interfaces and used in various different places. We
          uniquely identify each QoS runtime object instance 
          with an index that is unique across multiple 
          instances of the identical object - cbQosObjectsIndex.
          This index is used in all statistical related tables. 

        In summary, a QoS object has 2 indexes associated with it:
        cbQosConfigIndex is used to identify it's configuration, 
        which does not change regardless of number of times and
        where it is being used; and cbQosObjectsIndex is used 
        to identify it's runtime statistics, depending on which
        logical interface and where in a given PolicyMap hierarchy
        this object is used, it may have multiple unique 
        identifiers to distinguish each unique usage (instance) of
        the same object.

        **********************************
                    Navigation
        **********************************
        The recommended method of navigating through all of the MIB 
        tables is to start by learning the cbQosServicePolicyTable 
        and cbQosObjectsTable MIB tables. In particular, Cisco 
        Systems recommends understanding the cbQosObjectsIndex and 
        cbQosParentObjectsIndex of each QoS feature.

        The cbQosPolicyIndex and cbQosObjectsIndex are 
        system-assigned numbers that identify each unique instance 
        of a QoS feature. These indexes are never reused between 
        router reboots, even when changes are made to the QoS 
        configuration. The cbQosPolicyIndex is designed to identify 
        the service policies attached to logical interfaces, while 
        the cbQosObjectsIndex is designed to identify each QoS 
        feature on a specified device.

        The cbQosParentObjectsIndex is designed to show the 
        hierarchical relationship of each QoS feature. 

        **********************************
                cbQosServicePolicyTable
        **********************************
        Accessing cbQosServicePolicyTable requires 
        cbQosPolicyIndex. This index is a system-assigned number 
        to uniquely identify each service policy hanging off of
        each logical interface. Given cbQosPolicyIndex the tables
        provide the type of logical interface/media type on which
        this policy is applied, the direction in which this policy
        is enforced, and the SNMP interface index and/or the entity
        index of the underlying interface/entity. In the case of a
        policy being applied on a Frame Relay DLCI, the cbQosFrDLCI
        gives you the Frame Relay DLCI number to which this policy
        is attached. In the case of policy being attached to an ATM
        VC, cbQosAtmVPI and cbQosAtmVCI display the VPI and VCI of 
        the ATM interface respectively.

        **********************************
                cbQosObjectsTable
        **********************************
        Accessing cbQosObjectsTable requires two indexes, 
        cbQosPolicyIndex and cbQosObjectsIndex. 

        Given a particular service policy on a given logical 
        interface, there could be PolicyMaps, ClassMaps, Match 
        Statements and Feature Actions being used. Each instance 
        of these objects is uniquely identified by
        cbQosObjectsIndex.

        Users need to decide which QoS object is interesting 
        and use the cbQosPolicyIndex and cbQosObjectsIndex to
        locate the right element of interest. This tables provides 
        cbQosObjectsType, cbQosConfigIndex, and 
        cbQosParentObjectsIndex. 

        To understand the relationship of cbQosObjectsIndex, 
        cbQosParentObjectsIndex and the hierarchical relationship 
        of the QoS objects, consider the following QoS 
        configuration example:

        Interface ethernet 0/1
        Input Service Policy cntlWebTraffic
                ClassMap http
                        match ip http
                        set ip precedence 5

        Output Service Policy cntlSNMP_Telnet
                ClassMap snmp
                        match ip snmp
                        shape average 8000 32 32
                ClassMap Telnet
                        match ip telnet
                        shape average 10000 32 32

        Interface ethernet 0/2
        Input Service Policy cntlWebTraffic
                ClassMap http
                        match ip http
                        set ip precedence 5

        Output Service Policy cntlSNMP_Telnet
                ClassMap snmp
                        match ip snmp
                        shape average 8000 32 32
                ClassMap Telnet
                        match ip telnet
                        shape average 10000 32 32

        *** In Ethernet 0/1 ***
        Assume the router assigned a cbQosConfigIndex=1024 and 
        cbQosObjectsIndex=1084 to Policy cntlWebTraffic. 
        Because it is attached to an interface, it has no parent 
        QoS object, and thus cbQosParentObjectsIndex=0. 
        In addition, because cntlWebTraffic is also the service 
        policy of the interface, it has a unique cbQosPolicyIndex 
        assigned to it. In most cases, it would be the same as 
        the cbQosObjectsIndex, which is 1084 in this case. 
        Therefore, the indexes are:
        cbQosPolicyIndex = 1084
        cbQosObjectsIndex = 1084
        cbQosConfigIndex = 1024

        Assuming the router assigned a cbQosObjectsIndex=1085 
        and cbQosConfigIndex=1025 to ClassMap http, it is 
        directly being used by Policy cntlWebTraffic, and therefore
        the cbQosParentObjectsIndex of ClassMap http will be 1084. 

        Assuming the router assigned a cbQosConfigIndex=1026 and
        cbQosObjectsIndex=1086 to match ip http, it is directly 
        used by ClassMap http, therefore the 
        cbQosParentObjectsIndex of match ip http will be 1085.

        Assuming the router assigned a cbQosConfigIndex=1027 and
        cbQosObjectsIndex=1087 to set ip precedence 5, it is 
        directly used by ClassMap http, therefore the 
        cbQosParentObjectsIndex of match ip http will be 1085.

        Assuming the router assigned a cbQosConfigIndex=1028 and 
        cbQosObjectsIndex=1088 to Policy cntlSNMP_Telnet. 
        Because it is attached to an interface, it has no parent 
        QoS object, and thus cbQosParentObjectsIndex=0. 
        In addition, because cntlSNMP_Telnet is also the service 
        policy of the interface, it has a unique cbQosPolicyIndex 
        assigned to it. In most cases, it would be the same as 
        the cbQosObjectsIndex, which is 1088 in this case.

        Assuming the router assigned a cbQosConfigIndex=1029 and
        cbQosObjectsIndex=1089 to ClassMap snmp, it is 
        directly being used by Policy cntlSNMP_Telnet, and 
        therefore the cbQosParentObjectsIndex of ClassMap snmp 
        will be 1088. 

        Assuming the router assigned a cbQosConfigIndex=1030 and
        cbQosObjectsIndex=1090 to match ip snmp, it is directly 
        used by ClassMap snmp, and therefore the 
        cbQosParentObjectsIndex of match ip snmp will be 1089.

        Assuming the router assigned a cbQosConfigIndex=1031 and
        cbQosObjectsIndex=1091 to shape average 8000 32 32, 
        it is directly used by ClassMap snmp, therefore the 
        cbQosParentObjectsIndex of match ip snmp will be 1089.

        Assuming the router assigned a cbQosConfigIndex=1032 and
        cbQosObjectsIndex=1092 to ClassMap Telnet, it is 
        directly being used by Policy cntlSNMP_Telnet, and 
        therefore the cbQosParentObjectsIndex of 
        ClassMap Telnet will be 1088. 

        Assuming the router assigned a cbQosConfigIndex=1033 and
        cbQosObjectsIndex=1093 to match ip telnet, it is 
        directly used by ClassMap Telnet, and therefore the 
        cbQosParentObjectsIndex of match ip telnet will be 1092.

        Assuming the router assigned a cbQosConfigIndex=1034 and
        cbQosObjectsIndex=1094 to shape 10000 32 32, it is 
        directly used by ClassMap telnet, therefore the 
        cbQosParentObjectsIndex of match ip telnet will be 1092.

        *** In Ethernet 0/2 ***
        Every objects will have a new and unique cbQosPolicyIndex 
        and cbQosObjectsIndex, but cbQosConfigIndex will be 
        shared across the same objects that are applied in 
        different places.

        **********************************
                 All Config Tables
        **********************************
        Accessing config related tables requires the same index 
        - cbQosConfigIndex.  (Per precedence based tables requires 
        a second index, which is IP precedence value) Users 
        should have already gone through the cbQosObjectsTable 
        at this point and understood each cbQosConfigIndex and the 
        corresponding QoS objects.  Users can uniquely identify 
        each QoS object defined on the router and query the 
        entries in each stats table on a per QoS object basis.  

        **********************************
                 All Stats Tables
        **********************************
        Accessing all stats related tables requires the same 
        2 indexes. They are cbQosPolicyIndex and cbQosObjectsIndex.
        (Per precedence based tables requires a third index, which 
        is IP precedence value) Users should have already gone 
        through the cbQosObjectsTable at this point and understood 
        the relationship of each cbQosPolicyIndex and 
        cbQosObjectsIndex pair and the corresponding QoS objects. 
        Users can uniquely identify each QoS object defined on the 
        router and query the entries in each stats table on a per 
        QoS object basis." �"Cisco Systems
            Customer Service

            Postal: 170 W. Tasman Drive
            San Jose, CA  95134-1706
            USA

            Tel: +1 800 553-NETS

            E-mail: cs-qos@cisco.com" "200901260000Z" "200806170000Z" "200710090000Z" "200708300000Z" "200707100000Z" "200409200000Z" "200404120000Z" "200307240000Z" "200306090000Z" "200301210000Z" "200212030000Z" "200207240000Z" "200103140000Z" "200012080000Z" "200007130000Z" @"Added cbQosC3plAccountCfgGroup and cbQosC3plAccountStatsGroup."�"-Added ratioRemaining in QueueingBandwidthUnits
        -Added l2CosInner in SetFeatureType 
        -Added cbQosQueueingCfgPriorityLevel in cbQosQueueingCfgTable
        -Added cbQosSetCfgL2CosInnerValue in cbQosSetCfgTable
        -Added in  cbQosREDClassCfgTable
                   cbQosREDClassCfgMaxThresholdUnit,
                   cbQosREDClassCfgMinThresholdUnit  
        -Added cbQosQueueingClassCfgTable
        - Added following OBJECT-GROUPs 
             cbQosQueueingCfgGroupRev2 
             cbQosSetCfgL2Group 
             cbQosQueueingClassCfgGroup
             cbQosPoliceCfgGroupRev3
        - Added MODULE-COMPLIANCE cisco
        cbQosMIBComplianceRev6"B"1. Added cbQosTSCfgRate64 to cbQosTSCfgTable
        to support shaping rates greater than that fit in
        the range defined for cbQosTSCfgRate.
        2. Created cbQosTSCfgExtGroup.    
        3. Created  new compliance module ciscocbQosMIBComplianceRev5
        which deprecates ciscocbQosMIBComplianceRev4." 1"Added 'setL2CosInner' value to PoliceAction TC." q"Added following enumerations to RedMechanism TC:
        mplsExp 
        redDefault 
        redUserDefault" \"1. Added vlan-port as a new InterfaceType.
        2. Created cbQosServicePolicyExtGroup.""Added support for Estimate Bandwidth and its Corvil
        implementation. Corvil's algorithm generates the 
        estimated bandwidth for a class of traffic from 
        knowledge of the QoS targets such as delay and drop, 
        and the observed traffic behavior."�"Added setIpDscpTunnel, setIpPrecedenceTunnel
        to the PoliceAction TC. 
        Added srpPriority, frFecnBecn, ipDscpTunnel,
        ipPrecedenceTunnel to the SetFeatureType TC. 
        Added l2Cos, atmClp to the REDMechanism TC. 
        Added cps to the CbQosRateType TC. 
        Added CbQosTMSetType TC. 
        Added cbQosQueueingCfgAggrQLimitTime
        to the cbQosQueueingCfgTable.
        Added cbQosREDClassCfgMinThresholdTime,
        cbQosREDClassCfgMaxThresholdTime
        to the cbQosREDClassCfgTable.
        Added cbQosPoliceCfgCellRate,
        cbQosPoliceCfgCellPir,
        cbQosPoliceCfgBurstCell,
        cbQosPoliceCfgExtBurstCell,
        cbQosPoliceCfgBurstTime,
        cbQosPoliceCfgExtBurstTime,
        cbQosPoliceCfgCdvt,
        cbQosPoliceCfgConformColor,
        cbQosPoliceCfgExceedColor 
        to the cbQosPoliceCfgTable.
        Added cbQosTSCfgBurstTime, cbQosTSCfgExtBurstTime 
        to the cbQosTSCfgTable.
        Added cbQosSetCfgSrpPriority, cbQosSetCfgFrFecnBecn 
        to the cbQosSetCfgTable.
        Added cbQosSetStatsTable.
        Added cbQosPoliceColorStatsTable.
        Added cbQosTableMapCfgTable.
        Added cbQosTableMapValueCfgTable.
        Added cbQosTableMapSetCfgTable." m"Added controlPlane to the InterfaceType TC.
        Added cbQosEntityIndex to the cbQosServicePolicyTable."�"Added compression(9) in QosObjectType TC for IPHC;
        Added setMplsExpTopMost(11) in PoliceAction TC for 
              POLICE;
        Added mplsExpTopMost(8) in SetFeatureType TC for SET;
        Added discardClass(13) in REDMechanism TC for WRED;
        Added CbQosRateType TC for POLICE and SHAPE;
        Added IPHCOption TC for IPHC;
        Added cbQosPoliceCfgRateType, 
              cbQosPoliceCfgPercentRateValue,
              cbQosPoliceCfgPercentPirValue for POLICE;
        Added cbQosTSCfgRateType,
              cbQosTSCfgPercentRateValue for SHAPE;
        Added cbQosSetCfgMplsExpTopMostValue for SET;
        Added cbQosIPHCCfg and cbQosIPHCStats tables for IPHC." �"Added new cbQosPoliceCfgRate64 to cbQosPoliceCfgEntry
        table to support policing rates greater than fit in
        the range defined for cbQosPoliceCfgRate"�"Added support for ECN; Pir policing; multiple
        police actions; added MPLS-EXP/ATM-CLP/DR-DE/
        L2Cos/DiscardClass marking in police action;
        added MPLS-EXP and DiscardClass marking; 
        modified ATM-CLP and FR-DE marking.
        Added objects to handle queue depth unit type and 
        queue depth pair related objects (e.g.,
        cbQosQueueingCfgQLimitUnits and 
        cbQosQueueingCfgAggregateQLimit pair) to support
        queue depth in different units." d"Added support for FR DE, ATM CLP and L2 marking.
        Added Bandwidth remaining percent option" K"Added support for Police Violate counters and
        DSCP WRED counters" Z"Initial version of Class-based QoS configuration and
        statistical parameters MIB"                       m"This table describes the logical interfaces/media types
        and the policymap that are attached to it."                      "Each entry in this table describes to which a logical
        interface a given policymap is attached.  Depending on 
        the logical interface/media type, some fields may have
        meaningful values, and some may not.  Please see each
        individual descriptions."                       �"An arbitrary (system-assigned) index for all
        service policies (PolicyMap that has been attached
        to a given logical interface)."                       d"This describes the logical interface/media type to
        which this service policy is attached."                       \"This indicates the direction of traffic for which
        this service policy is applied."                      "ifIndex for the interface to which this service
        is attached. This field makes sense only if the
        logical interface has a snmp ifIndex. For e.g. the
        value of this field is meaningless when the
        cbQosIfType is controlPlane."                       �"DLCI for the FRVC to which this service is attached.
        This field only make sense if the service policy is
        attached to a Frame Relay DLCI."                       �"VPI for the ATMVC to which this service is attached.
        This field only make sense if the service policy is
        attached to a ATM VC."                       �"VCI for the ATMVC to which this service is attached.
        This field only make sense if the service policy is
        attached to a ATM VC."                      r"In cases where the policy is attached to an entity
        e.g. control-plane, this object represents the
        entity physical index of the entity to which the
        policy has been attached. A value zero may be 
        returned if the policy is not attached to a physical
        entity or the entPhysicalTable is not supported on 
        the SNMP agent."                       �"If the service policy is attached to a particular
        vlan on a trunk or multi-vlan access port, then this
        object specifies the corresponding VLAN. In all other
        cases the value of this object is '0'."                           a"This table describes the service polices that are
        attached to main and sub interfaces."                       �"Using ifIndex and Direction, each unique index pair
        translates to a service policy that is attached to a 
        main/sub interface, for particular traffic direction."                       |"An arbitrary (system-assigned) index for all
        Service Policies. 

        This is identical to cbQosPolicyIndex."                           ["This table describes the service polices that are
        attached to Frame Relay DLCIs."                       �"Using ifIndex, FR DLCI, and Direction, each unique
        index combination translates to a service policy that 
        is attached to a FR DLCI, for particular traffic direction."                       {"An arbitrary (system-assigned) index for all
        Service Policies.

        This is identical to cbQosPolicyIndex."                           L"This table describes the policies that are attached to a
        ATM PVC."                       �"Using ifIndex, VPI, VCI, and Direction, each unique
        index combination translates to a service policy that 
        is attached to a ATM VC, for particular traffic direction."                       {"An arbitrary (system-assigned) index for all
        Service Policies.

        This is identical to cbQosPolicyIndex."                          ."This table specifies QoS objects (classmap, policymap,
        match statements, and actions) hierarchy. This table also 
        provide relationship between each PolicyIndex/ObjectsIndex 
        pair and the ConfigIndex. ConfigIndex is essential for 
        querying any configuration tables."                      ("A QoS object entry. Objects covered in this table are
        PolicyMap, ClassMap, Match Statements, and Actions.
        Each entry is indexed by system-generated cbQosPolicyIndex,
        and cbQosObjectsIndex, which represents a runtime instance 
        of a QoS object. In conjunction with the 
        cbQosParentObjectsIndex, a management station can 
        determine the hierarchical relationship of those QoS 
        objects. Given that classmaps and service policies can 
        be nested entites, each entry in this table represents a 
        unique instance of such object. Each runtime object 
        instance has a corresponding config object, which contains
        the configuration information of such QoS object. The
        config object is indexed by cbQosConfigIndex."                       X"An arbitrary (system-assigned) instance specific
        index for cbQosObjectsEntry."                       �"An arbitrary (system-assigned) config (instance
        independent) index for each Object. Each objects having
        the same configuration share the same config index."                       "The type of the QoS object."                      �"The parent instance index of a QoS object.

        For a ClassMap, the parent index would be the index of 
        the attached PolicyMap.

        For a Match Statement, the parent index would be the 
        index of the ClassMap that uses this Match Statement.

        For an action, the parent index would be the 
        index of the ClassMap that applies such Action.

        For a non-hierarchical PolicyMap, the parent would be 
        the logical interface to which the policy is attached,
        thus the parent index would be 0.

        For a hierarchical PolicyMap, the parent index would 
        be the index of the ClassMap to which the nested 
        policy is attached."                           :"This table specifies Policymap configuration information"                      G"Each entry in this table describes configuration information
        about a policymap. The information includes: Name, and it's
        description. This table contains configuration information 
        only, no statistics associated with it. Therefore, it is 
        indexed by the cbQosConfigIndex of each PolicyMap."                       "Name of the Policymap."                       "Description of the PolicyMap."                           9"This table specifies ClassMap configuration information"                      }"Each entry in this table describes configuration information
        about a classmap. The information includes: Name, and it's
        description and whether it is a Match-All or Match-Any
        class. This table contains configuration information only,
        no statistics associated with it. Therefore, it is indexed
        by the cbQosConfigIndex of each ClassMap."                       "Name of the Classmap."                       "Description of the Classmap."                       *"Match all vs Match any in a given class."                           9"This table specifies ClassMap configuration information"                      w"Each entry in this table describes configuration information
        about a MatchStatement. The information includes: Name, 
        and whether it is a Match or Match-Not
        statement. This table contains configuration information 
        only, no statistics associated with it. Therefore, it is 
        indexed by the cbQosConfigIndex of each MatchStatement."                       "Name of the Match Statement."                       &"Match vs Match Not in a given class."                           I"This table specifies Queueing Action configuration
        information"                      �"Each entry in this table describes configuration
        information about a queueing action. The information 
        includes: Bandwidth, Units, Flow Enabled, Priority Enabled, 
        and Q size.

        This table contains configuration information only,
        no statistics associated with it. Therefore, it is indexed
        by the cbQosConfigIndex of each Queueing Action."                      a"The type of bandwidth configuration value represented by this
        object is indicated by the value of
        cbQosQueueingCfgBandwidthUnits for this entry. 

        If the cbQosQueueingCfgBandwidthUnits value is 'kbps(1)' or 
        'percentage(2)', this object represents the configured  
        bandwidth allocated to this traffic class.In the case of a  
        bandwidth policy, this value represents a minimum bandwidth  
        guarantee for the traffic class. In the case of a priority  
        policy, this value represents the maximum rate at which  
        priority service is guaranteed. 

        If the cbQosQueueingCfgBandwidthUnits value is  
        'percentageRemaining(3)', this object represents the  
        the percentage of the unallocated bandwidth to allocate to 
        this class.  If the cbQosQueueingCfgBandwidthUnits value is  
        'ratioRemaining(4)', this object represents the ratio value, 
        relative to other class' configured ratio values, used to  
        determine the portion of the unallocated bandwidth to apply to 
        this class."                       H"Units of the accompanying cbQosQueueingCfgbandwidth
        parameter"                       R"Boolean to indicate if flow-based fair-queue is
        enabled for this class."                       \"Boolean to indicate if low latency queueing
        (priority) is enabled for this class."                       �"Maximum number of packets that can be held in all the
        individual queues associated with this class
        before packets are dropped. This object is deprecated
        by cbQosQueueingCfgAggregateQLimit."                      +"Maximum number of packets that can be held in an
        individual Flow-based fair-queue associated with this 
        class before it drops packets (once the AggregateQSize
        has been reached).

        This field only makes sense in the context of 
        Flow-based fair-queueing."                       S"Number of dynamic queues supported when
        flow-based fair-queue is in use."                       �"In the priority queue, this is the number of bytes
        allowed in a single burst. 
        This parameter only makes sense if Priority is enabled"                       N"Represents the unit type of
        cbQosQueueingCfgAggregateQLimit object."                       �"Maximum allowed queue size for all the individual
        queues associated with this class. When the queue size
        exceed this value, the packets will be dropped."                       �"Maximum allowed queue size in milli-seconds for all
        individual queues associated with this class.  It
        is internally converted to bytes by using the
        bandwidth that is available for the class."                       �"The priority level of the queue into which packets matching
        this  class are queued into. A larger priority level indicates
        higher  priority."                           E"This table specifies WRED Action configuration
        information"                      �"Each entry in this table describes configuration
        information about a WRED Action.  The table holds global 
        (per traffic class) configuration like: Expon Weight
        and Mean Q size.

        This table contains configuration information only,
        no statistics associated with it. Therefore, it is indexed
        by the cbQosConfigIndex of each WRED Action."                       �"The decay factor for the queue average calculation.
        The decay factor is equal to raising 2 to the power 
        of N, where N could be up to 16. 
        The smaller the number, the faster it decays."                       t"The average queue size, computed and used by the WRED
        algorithm. This is deprecated by cbQosREDMeanQsize."                       *"The Classification mechanism used by RED"                       Z"Boolean to indicate if explicit congestion notification
        enabled for this class."                           c"This table specifies WRED Action configuration
        information on a per IP precedence basis."                      �"Each entry in this table describes configuration information
        about a WRED Action.  The table holds the per IP precedence
        based WRED configuration parameters. 

        This table contains configuration information only,
        no statistics associated with it. Therefore, it is indexed
        by the cbQosConfigIndex and cbQosREDValue 
        of each WRED Action."                       -"The IP precedence or IP DSCP of this entry."                       �"Minimum threshold in number of packets. When the
        average queue length reaches this number, WRED begins 
        to drop packets with the specified IP precedence.
        This is deprecated by cbQosREDClassCfgMinThreshold."                       �"Maximum threshold in number of packets. When the
        average queue length exceeds this number, WRED drops 
        all packets with the specified IP precedence.
        This is deprecated by cbQosREDClassCfgMaxThreshold."                      "Denominator for the fraction of packets dropped when
        the average queue depth is MaxDepthThreshold. For 
        example, if the denominator is 10, one out of every 10
        packets is dropped when the average queue is at the 
        MaxDepthThreshold."                       �"Represents the unit type to measure the RED thresholds.
        The objects covered are cbQosREDClassCfgMinThreshold
        and cbQosREDClassCfgMaxThreshold"                       �"The minimum WRED threshold value. When the average
        queue length reaches this number, WRED begins to 
        drop packets according to REDMechanism specificed
        in cbQosREDCfgDscpPrec."                       �"The maximum WRED threshold value. When the average
        queue length exceeds this number, WRED drops all 
        packets according to REDMechanism specificed
        in cbQosREDCfgDscpPrec."                       �"The minimum WRED threshold value specified in
        milli-seconds.  The milli-second value is internally
        converted to bytes by using the bandwidth that
        is available for the class."                       �"The maximum WRED threshold value specified in
        milli-seconds.  The milli-second value is internally
        converted to bytes by using the bandwidth that
        is available for the class."                       ~"Represents the unit type to measure the RED Maximum thresholds.
        The objects covered is cbQosREDClassCfgMaxThreshold"                       ~"Represents the unit type to measure the RED Minimum thresholds.
        The objects covered is cbQosREDClassCfgMinThreshold"                           H"This table specifies Police Action configuration
        information."                      �"Each entry in this table describes configuration information
        about a Police Action.  The table holds Policy 
        configuration parameters, such as rate, burst size, and 
        actions based on traffic rates.

        This table contains configuration information only,
        no statistics associated with it. Therefore, it is indexed
        by the cbQosConfigIndex."                      	"The committed policing rate. This is the sustained
        rate permitted by policing.

        If a committed policing rate greater than 2000000000
        is configurable on the system, then the configured
        rate is available in cbQosPoliceCfgRate64."                       �"The amount of traffic, in bytes, in excess of the
        committed policing rate that will be permitted by 
        the policing feature."                      "The amount of traffic, in bytes, in excess of the
        burst limit, which may be conditionally permitted 
        by the policing feature. The probability that the 
        traffic is not permitted increases as the received 
        burst size increases."                       �"Action to be taken when the traffic is within the
        configured rate, that is, the traffic rate is 
        conforming.
        This object is deprecated and defined in 
        cbQosPoliceActionCfgTable."                       �"New packet attribute values for each packets that
        conforms to the configured Police rate.
        This object is deprecated and defined in 
        cbQosPoliceActionCfgTable."                       �"Action to be taken when the traffic exceeds the
        configured rate, that is, the traffic is 
        non-conforming.
        This object is deprecated and defined in 
        cbQosPoliceActionCfgTable."                       �"New packet attribute values for each packets that
        conforms to the configured Police rate.
        This object is deprecated and defined in 
        cbQosPoliceActionCfgTable."                       �"Action to be taken when the traffic exceeds the
        conform and exceed token buckets.
        This object is deprecated and defined in 
        cbQosPoliceActionCfgTable."                      �"New packet attribute values for each packets that
        conforms to the Police violate action. The packet
        attibute values depend on the action that is taken
        for the particular packet. For example, if the 
        action was to set the dscp value, this entry describes
        the value it is set to. 
        This object is deprecated and defined in 
        cbQosPoliceActionCfgTable."                       ]"The committed policing rate. This is the peak
        rate permitted by two rate policing."                       Y"The committed policing rate. This is the sustained
        rate permitted by policing."                       �"The rate type that configured for CIR & PIR.
        1 means rates are configured in bps.
        2 means rates are configured in percentage.
        3 means rates are configured in cps."                       w"The committed policing rate in percentage.  Its value
        is valid only when cbQosPoliceCfgRateType equals to 2."                       q"The peak policing rate in percentage. Its value is
        valid only when cbQosPoliceCfgRateType equals to 2."                       y"The committed policing rate in cells/second.  Its value
        is valid only when cbQosPoliceCfgRateType equals to 3."                       t"The peak policing rate in cells/second.  Its value is
        valid only when cbQosPoliceCfgRateType equals to 3."                       �"The amount of traffic, in cells, in excess of the
        committed policing rate that will be permitted by
        the policing feature."                      "The amount of traffic, in cells, in excess of the
        burst limit, which may be conditionally permitted
        by the policing feature. The probability that the
        traffic is not permitted increases as the received
        burst size increases."                      "The amount of traffic time, in ms, in excess of the
        committed policing rate that will be permitted by
        the policing feature.  The milli-second value is
        internally converted to bytes by using the bandwidth
        that is available for the class."                      �"The amount of traffic time, in ms, in excess of the
        burst limit, which may be conditionally permitted
        by the policing feature. The probability that the
        traffic is not permitted increases as the received
        burst size increases.  The milli-second value is 
        internally converted to bytes by using the bandwidth
        that is available for the class."                       /"The ATM Cell Delay Variation Tolerance value."                      �"The Classmap name used in AF color-aware mode to
        specify the conform-color for the incoming packets
        which was marked by the previous node.

        At least conform-color must be specified.  If only 
        conform-color is specified, all other packets are
        assumed to be marked exceed.

        See RFC 2697, A Single Rate Three Color Marker.
        See RFC 2698, A Two Rate Three Color Marker."                      O"The Classmap name used in AF color-aware mode to
        specify the exceed-color for the incoming packets
        which was marked by the previous node.

        If both conform-color and exceed-color are specified,
        all other packets are assumed to be marked violate.
        Violate-color configuration is not needed."                       f"This object is use to depict weather police is configured
        as a conditioniler policer or not"                           Q"This table specifies traffic-shaping Action configuration
        information."                      �"Each entry in this table describes configuration information
        about a traffic-shaping Action.  The table holds Traffic
        Shaping configuration parameters, such as rate, burst size, 
        and Shaping types.

        This table contains configuration information only,
        no statistics associated with it. Therefore, it is indexed
        by the cbQosConfigIndex."                       l"The committed traffic-shaping rate.  This is the
        sustained rate permitted by the traffic-shaping."                       �"The amount of traffic, in bits, in excess of the
        committed traffic-shaping rate that will be
        instantaneously permitted by this feature."                       �"The amount of traffic, in bits, in excess of the
        burst limit, which may be conditionally permitted
        by traffic-shaping feature."                       N"This object indicates is adaptive traffic-shaping
        has been enabled."                       L"This object represents the current adaptive traffic
        shaping rate."                       s"This object indicates if traffic-shaping is limiting
        traffic based on the peak rate or the average rate."                       �"The rate type that configured for traffic-shaping.
        1 means rate is configured in bps.
        2 means rate is configured in percentage."                       �"The committed traffic-shaping rate in percentage.
        Its value is valid only when cbQosTSCfgRateType 
        equals to 2."                      #"The amount of traffic, in ms, in excess of the
        committed traffic-shaping rate that will be
        instantaneously permitted by this feature.
        The milli-second value is internally converted to
        bits by using the bandwidth that is available for
        the class."                      "The amount of traffic, in ms, in excess of the
        burst limit, which may be conditionnally permitted
        by traffic-shaping feature.
        The milli-second value is internally converted to
        bits by using the bandwidth that is available for
        the class."                       �"The committed shape rate. This is the sustained
        rate permitted by shaping. This object represents 
        the 64 bit value of object cbQosTSCfgRate"                           P"This table specifies Packet Marking Action configuration
        information."                      �"Each entry in this table describes configuration information
        about a Packet Marking Action.  The table holds Packet
        Marking configuration parameters, such as type of packet
        marking and values being set to.

        This table contains configuration information only,
        no statistics associated with it. Therefore, it is indexed
        by the cbQosConfigIndex."                       7"The bit-wise position of each packet marking feature."                       \"The IP DSCP value at which the packet is being set
        by the packet marking feature."                       b"The IP precedence value at which the packet is being
        set by the packet marking feature."                       _"The QoS Group number at which the packet is being
        set by the packet marking feature."                       `"The Layer 2 Cos value at which the packet is being
        set by the packet marking feature."                       f"The MPLS experimental value at which the packet
        is being set by the packet marking feature."                       b"The Discard Class value at which the packet
        is being set by the packet marking feature."                       �"The MPLS experimental value on the topmost label
        at which the packet is being set by the packet marking
        feature."                       �"The SRP Priority value at which the packet is being set
        by the packet marking feature.  The higher the value the
        higher the priority.  SRP is a Cisco developed protocol.
        RFC 2892: The Cisco SRP MAC Layer Protocol."                      "This is a configurable parameter in percentage of the
        queue size.  When the current queue size out of the
        queue limit is greater than this parameter, both 
        Frame Relay FECN and BECN bits will be set for
        Frame Relay congestion notification mechanism."                       �"The value to be set in the 802.1p priority field in the inner
        802.1q VLAN tag (QinQ).  This object is applicable when
        cbQosSetCfgFeature has the 'l2CosInner' bit set."                           I"This table specifies ClassMap related Statistical
        information."                      �"Each entry in this table describes the statistical
        information about ClassMap. ClassMap specific information
        you can find in this table are : pre/post policy pkt/byte
        counts, bit rates, drop pkt/bytes and no buffer drops.

        This table contains statistical information only,
        no configuration information associated with it. Therefore, 
        it is indexed by the instance specific IDs, such as 
        cbQosPolicyIndex and cbQosObjectsIndex."                       Z"The upper 32 bits count of inbound packets prior to
        executing any QoS policies."                       Z"The lower 32 bits count of inbound packets prior to
        executing any QoS policies."                       T"The 64 bits count of inbound packets prior to executing
        any QoS policies."                       Y"The upper 32 bits count of inbound octets prior to
        executing any QoS policies."                       Y"The lower 32 bits count of inbound octets prior to
        executing any QoS policies."                       S"The 64 bits count of inbound octets prior to executing
        any QoS policies."                       K"The bit rate of the traffic prior to executing any QoS
        policies."                       S"The upper 32 bits count of outbound octets after executing
        QoS policies."                       S"The lower 32 bits count of outbound octets after executing
        QoS policies."                       M"The 64 bits count of outbound octets after executing
        QoS policies."                       D"The bit rate of the traffic after executing QoS
        policies."                       �"The upper 32 bits counter of dropped pkts per class
        as the result of all features that can produce drops 
        (e.g., police, random detect, etc.)."                       �"The lower 32 bits counter of dropped pkts per class
        as the result of all features that can produce drops 
        (e.g., police, random detect, etc.)."                       �"The 64 bits counter of dropped pkts per class as
        the result of all features that can produce drops 
         (e.g., police, random detect, etc.)."                       �"The upper 32 bits counter of dropped bytes per class
        as the result of all features that can produce drops 
        (e.g., police, random detect, etc.)."                       �"The lower 32 bits counter of dropped bytes per class
        as the result of all features that can produce drops 
        (e.g., police, random detect, etc.)."                       �"The 64 bits counter of dropped bytes per class as the
        result of all features that can produce drops 
         (e.g., police, random detect, etc.)."                       �"The bit rate of the drops per class as the result of
        all features that can produce drops 
        (e.g., police, random detect, etc.)."                       �"The upper 32 bits drop packet count which occured
        due to a lack of SRAM buffers during output processing 
        on an interface."                       �"The lower 32 bits drop packet count which occured due
        to a lack of SRAM buffers during output processing on 
        an interface."                       �"The 64 bits drop packet count which occured due to a
        lack of SRAM buffers during output processing on an 
        interface."                           P"This table specifies Match Statement related statistical
        information."                      �"Each entry in this table describes the statistical
        information about Match Statement. Match Statement specific 
        information you can find in this table are : 
        Pre policy pkt/byte counters, and bit rates.

        This table contains statistical information only,
        no configuration information associated with it. Therefore, 
        it is indexed by the instance specific IDs, such as 
        cbQosPolicyIndex and cbQosObjectsIndex."                       Z"The upper 32 bits count of inbound packets prior to
        executing any QoS policies."                       Z"The lower 32 bits count of inbound packets prior to
        executing any QoS policies."                       T"The 64 bits count of inbound packets prior to executing
        any QoS policies."                       Y"The upper 32 bits count of inbound octets prior to
        executing any QoS policies."                       Y"The lower 32 bits count of inbound octets prior to
        executing any QoS policies."                       S"The 64 bits count of inbound octets prior to executing
        any QoS policies."                       K"The bit rate of the traffic prior to executing any QoS
        policies."                           N"This table specifies Police Action related Statistical
        information."                      �"Each entry in this table describes the statistical
        information about Police Action. Police Action specific 
        information you can find in this table are : 
        Conformed/Exceeded pkt/byte counters,  bit rates.

        This table contains statistical information only,
        no configuration information associated with it. 
        Therefore, it is indexed by the instance specific IDs, 
        such as cbQosPolicyIndex and cbQosObjectsIndex."                       \"The upper 32 bits count of packets treated as
        conforming by the policing feature."                       \"The lower 32 bits count of packets treated as
        conforming by the policing feature."                       V"The 64 bits count of packets treated as conforming
        by the policing feature."                       ["The upper 32 bits count of octets treated as
        conforming by the policing feature."                       ["The lower 32 bits count of octets treated as
        conforming by the policing feature."                       U"The 64 bits count of octets treated as conforming
        by the policing feature."                       %"The bit rate of conforming traffic."                       `"The upper 32 bits count of packets treated as
        non-conforming by the policing feature."                       Z"The 32 bits count of packets treated as
        non-conforming by the policing feature."                       Z"The 64 bits count of packets treated as
        non-conforming by the policing feature."                       _"The upper 32 bits count of octets treated as
        non-conforming by the policing feature."                       _"The lower 32 bits count of octets treated as
        non-conforming by the policing feature."                       Y"The 64 bits count of octets treated as
        non-conforming by the policing feature."                       -"The bit rate of the non-conforming traffic."                       Z"The upper 32 bits count of packets treated as
        violated by the policing feature."                       T"The 32 bits count of packets treated as
        violated by the policing feature."                       T"The 64 bits count of packets treated as
        violated by the policing feature."                       Y"The upper 32 bits count of octets treated as
        violated by the policing feature."                       Y"The lower 32 bits count of octets treated as
        violated by the policing feature."                       S"The 64 bits count of octets treated as
        violated by the policing feature."                       ("The bit rate of the violating traffic."                           P"This table specifies Queueing Action related Statistical
        information."                      �"Each entry in this table describes the statistical
        information about queueing action. Queueing action specific 
        information you can find in this table are : 
        various Q depth, and discard pkt/byte counters.

        This table contains statistical information only,
        no configuration information associated with it. 
        Therefore, it is indexed by the instance specific IDs, 
        such as cbQosPolicyIndex and cbQosObjectsIndex."                       !"The current depth of the queue."                       !"The maximum depth of the queue."                       g"The upper 32 bit count of octets, associated with
        this class, that were dropped by queueing."                       h"The lower 32 bits count of octets, associated with
        this class, that were dropped by queueing."                       Z"The count of octets, associated with this class,
        that were dropped by queueing."                       i"The upper 32 bits count of packets, associated with
        this class, that were dropped by queueing."                       \"The number of packets, associated with this class,
        that were dropped by queueing."                       \"The number of packets, associated with this class,
        that were dropped by queueing."                           W"This table specifies traffic-shaping Action related
        Statistical information."                      "Each entry in this table describes the statistical
        information about traffic-shaping Action. Traffic-shaping 
        Action specific information you can find in this table are : 
        various delay/drop pkt/byte counters, state of feature,
        and Q size.

        This table contains statistical information only,
        no configuration information associated with it. 
        Therefore, it is indexed by the instance specific IDs, 
        such as cbQosPolicyIndex and cbQosObjectsIndex."                       ]"This object represents the upper 32 bits counter of
        octets that have been delayed."                       ]"This object represents the lower 32 bits counter of
        octets that have been delayed."                       W"This object represents the 64 bits counter of
        octets that have been delayed."                       ^"This object represents the upper 32 bits counter of
        packets that have been delayed."                       ^"This object represents the lower 32 bits counter of
        packets that have been delayed."                       X"This object represents the 64 bits counter of
        packets that have been delayed."                       l"This object represents the upper 32 bits counter of
        octets that have been dropped during shaping."                       l"This object represents the lower 32 bits counter of
        octets that have been dropped during shaping."                       f"This object represents the 64 bits counter of
        octets that have been dropped during shaping."                       m"This object represents the upper 32 bits counter of
        packets that have been dropped during shaping."                       m"This object represents the lower 32 bits counter of
        packets that have been dropped during shaping."                       g"This object represents the 64 bits counter of
        packets that have been dropped during shaping."                       "This object indicates the current traffic-shaping
        state. When traffic-shaping is enabled and the traffic 
        rate exceeds the shape rate, traffic-shaping
        is considered to be active.  Otherwise, it is 
        considered inactive."                       T"This object indicates the current traffic-shaping
        queue depth in packets."                           ["This table specifies per Precedence WRED Action related
        Statistical information."                      T"Each entry in this table describes the statistical
        information about per Precedence WRED Action. per Precedence
        WRED Action specific information you can find in this table 
        are : Random pkt/byte counters, and Tail drop pkt/byte 
        counters.

        This table contains per Precedence/dscp based statistical 
        information only, no configuration information associated 
        with it.  Therefore, it is indexed by the instance specific 
        IDs, and a per Precedence identifier: 
        cbQosPolicyIndex, cbQosObjectsIndex and cbQosREDValue."                       �"The upper 32 bits count of packets dropped when the
        number of packets in the associated queue was greater
        than the minimum threshold and less than the
        maximum threshold."                       �"The lower 32 bits count of packets dropped when
        the number of packets in the associated queue was 
        greater than the minimum threshold and less than the
        maximum threshold."                       �"The 64 bits count of packets dropped when the number
        of packets in the associated queue was greater 
        than the minimum threshold and less than the
        maximum threshold."                       �"The upper 32 bits count of bytes dropped when the
        number of packets in the associated queue was greater
        than the minimum threshold and less than the
        maximum threshold."                       �"The lower 32 bits count of bytes dropped when
        the number of packets in the associated queue was 
        greater than the minimum threshold and less than the
        maximum threshold."                       �"The 64 bits count of bytes dropped when the number of
        packets in the associated queue was greater
        than the minimum threshold and less than the
        maximum threshold."                       �"The upper 32 bits count of packets dropped when the
        number of packets in the associated queue was greater
        than the maximum threshold."                       �"The lower 32 bits count of packets dropped when the
        number of packets in the associated queue was greater
        than the maximum threshold."                       �"The 64 bits count of packets dropped when the number
        of packets in the associated queue was greater
        than the maximum threshold."                       �"The upper 32 bits count of bytes dropped when the
        number of packets in the associated queue was greater
        than the maximum threshold."                       �"The lower 32 bits count of bytes dropped when the
        number of packets in the associated queue was greater
        than the maximum threshold."                       �"The 64 bits count of bytes dropped when the number of
        packets in the associated queue was greater
        than the maximum threshold."                       /"The upper 32 bits count of bytes transmitted."                       ."The lower 32 bits count of bytes trasmitted."                       +"The 64 bits count of packets transmitted."                       0"The upper 32 bits count of octets transmitted."                       /"The lower 32 bits count of octets trasmitted."                       *"The 64 bits count of octets transmitted."                       �"The upper 32 bits count of packets ecn marked when the
        number of packets in the associated queue was greater
        than the minimum threshold and less than the
        maximum threshold."                       �"The lower 32 bits count of packets ecn marked when
        the number of packets in the associated queue was 
        greater than the minimum threshold and less than the
        maximum threshold."                       �"The 64 bits count of packets ecn marked when the
        number of packets in the associated queue was 
        greater than the minimum threshold and less than 
        the maximum threshold."                       �"The upper 32 bits count of bytes ecn marked when
        the number of packets in the associated queue was 
        greater than the minimum threshold and less than the
        maximum threshold."                       �"The lower 32 bits count of bytes ecn marked when
        the number of packets in the associated queue was 
        greater than the minimum threshold and less than the
        maximum threshold."                       �"The 64 bits count of bytes ecn marked when the
        number of packets in the associated queue was 
        greater than the minimum threshold and less than the
        maximum threshold."                       @"Represents the unit type of cbQosREDMeanQSize
        object."                       J"The average queue size computed and used by the
        WRED algorithm."                           H"This table specifies Police Action configuration
        information."                      T"Each entry in this table describes configuration information
        about Actions for one Police.  The table holds Police 
        action specific configuration parameters.
        This table is a sub-table for cbQosPoliceCfgTable. There is
        a 1-to-1 association between one entry here and one entry in 
        cbQosPoliceCfgTable. 
        This table contains configuration information only,
        no statistics associated with it. 
        This table has two indices. The first is cbQosConfigIndex 
        which is drived directly from cbQosPoliceCfgTable to keep the
        1-to-1 mapping nature between two tables. 
        The second is cbQosPoliceActionCfgIndex used to reference 
        the actual actions configured. The maximum number of actions
        supported is determined by the system, which is 5 currently."                       n"An arbitrary (system-assigned) index for police
        actions that are defined by a police configuration."                       \"Action to be taken when the traffic exceeds the
        conform and exceed token buckets."                      #"New packet attribute values for each packet set by
        police action defined in cbQosPoliceActionCfgConform.
        This object will be set to zero if the corresponding
        police action does not require a set value, such as 
        no action, drop action or transmit action."                       \"Action to be taken when the traffic exceeds the
        conform and exceed token buckets."                      ""New packet attribute values for each packet set by
        police action defined in cbQosPoliceActionCfgExceed.
        This object will be set to zero if the corresponding
        police action does not require a set value, such as 
        no action, drop action or transmit action."                       \"Action to be taken when the traffic exceeds the
        conform and exceed token buckets."                      #"New packet attribute values for each packet set by
        police action defined in cbQosPoliceActionCfgViolate.
        This object will be set to zero if the corresponding
        police action does not require a set value, such as 
        no action, drop action or transmit action."                           P"This table specifies IP Header Compression
        configuration information."                      c"Each entry in this table describes configuration
        information about IP Header compression. This
        includes the compression option of UDP/RTP header,
        TCP header or both.

        This table contains configuration information only,
        no statistics associated with it. Therefore, it is
        indexed by cbQosConfigIndex."                       ["The configured IP header compression option.
        The value is defined by IPHCOption."                           N"This table specifies IP Header Compression
        statistical information."                      Q"Each entry in this table describes statistical
        information about IP Header compression.

        This table contains statistical information only,
        no configuration information associated with it.
        Therefore, it is indexed by the instance specific IDs,
        namely cbQosPolicyIndex and cbQosObjectsIndex."                       6"The upper 32 bits count of outbound UDP/RTP packets."                       6"The lower 32 bits count of outbound UDP/RTP packets."                       0"The 64 bits count of outbound UDP/RTP packets."                       J"The upper 32 bits count of outbound compressed
        UDP/RTP packets."                       J"The lower 32 bits count of outbound compressed
        UDP/RTP packets."                       D"The 64 bits count of outbound compressed
        UDP/RTP packets."                       K"The upper 32 bits count of UDP/RTP bytes that
        saved due to IPHC."                       K"The lower 32 bits count of UDP/RTP bytes that
        saved due to IPHC."                       E"The 64 bits count of UDP/RTP bytes that saved
        due to IPHC."                       ="The upper 32 bits count of outbound UDP/RTP
        bytes."                       ="The lower 32 bits count of outbound UDP/RTP
        bytes."                       ."The 64 bits count of outbound UDP/RTP bytes."                       2"The 32 bits count of outbound UDP/RTP byte rate."                       2"The upper 32 bits count of outbound TCP packets."                       2"The lower 32 bits count of outbound TCP packets."                       ,"The 64 bits count of outbound TCP packets."                       F"The upper 32 bits count of outbound compressed
        TCP packets."                       F"The lower 32 bits count of outbound compressed
        TCP packets."                       @"The 64 bits count of outbound compressed TCP
        packets."                       G"The upper 32 bits count of TCP bytes that saved
        due to IPHC."                       G"The lower 32 bits count of TCP bytes that saved
        due to IPHC."                       A"The 64 bits count of TCP bytes that saved due
        to IPHC."                       0"The upper 32 bits count of outbound TCP bytes."                       0"The lower 32 bits count of outbound TCP bytes."                       *"The 64 bits count of outbound TCP bytes."                       ."The 32 bits count of outbound TCP byte rate."                           G"This table specifies packet marking statistical
        information."                      J"Each entry in this table describes the packets that
        marked by each marking type.

        This table contains statistical information only,
        no configuration information associated with it.
        Therefore, it is indexed by the instance specific
        IDs, namely cbQosPolicyIndex and cbQosObjectsIndex."                       R"The 64 bits count of packets whose DSCP field is
        marked by Set feature."                       X"The 64 bits count of packets whose Precedence field is
        marked by Set feature."                       W"The 64 bits count of packets whose Qos Group field is
        marked by Set feature."                       Z"The 64 bits count of packets whose Frame Relay DE Bit
        is marked by Set feature."                       S"The 64 bits count of packets whose ATM CLP Bit is
        marked by Set feature."                       Y"The 64 bits count of packets whose Layer 2 Cos field is
        marked by Set feature."                       j"The 64 bits count of packets whose MPLS Experimental
        Imposition field is marked by Set feature."                       ["The 64 bits count of packets whose Discard Class field
        is marked by Set feature."                       g"The 64 bits count of packets whose MPLS Experimental
        TopMost field is marked by Set feature."                       Z"The 64 bits count of packets whose SRP Priority field
        is marked by Set feature."                       c"The 64 bits count of packets whose Frame Relay FECN
        BECN field is marked by Set feature."                       Y"The 64 bits count of packets whose DSCP Tunnel field is
        marked by Set feature."                       _"The 64 bits count of packets whose Precedence Tunnel
        field is marked by Set feature."                           n"This table specifies Police Action related Statistical
        information for two rate color aware marker."                      w"Each entry in this table describes the statistical
        information about Police Action for Two Rate Color
        Aware Marker.

        This table contains statistical information only,
        no configuration information associated with it.
        Therefore, it is indexed by the instance specific IDs,
        such as cbQosPolicyIndex and cbQosObjectsIndex."                       �"The 64 bits count of packets which are marked as
        Conform-Color by previous node and treated as
        conforming by the policing feature on this node."                       �"The 64 bits count of bytes which are marked as
        Conform-Color by previous node and treated as
        conforming by the policing feature on this node."                       �"The 64 bits count of packets which are marked as
        Conform-Color by previous node and treated as
        exceeding by the policing feature on this node."                       �"The 64 bits count of bytes which are marked as
        Conform-Color by previous node and treated as
        exceeding by the policing feature on this node."                       �"The 64 bits count of packets which are marked as
        Conform-Color by previous node and treated as
        violating by the policing feature on this node."                       �"The 64 bits count of bytes which are marked as
        Conform-Color by previous node and treated as
        violating by the policing feature on this node."                       �"The 64 bits count of packets which are marked as
        Exceed-Color by previous node and treated as
        exceeding by the policing feature on this node."                       �"The 64 bits count of bytes which are marked as
        Exceed-Color by previous node and treated as
        exceeding by the policing feature on this node."                       �"The 64 bits count of packets which are marked as
        Exceed-Color by previous node and treated as
        violating by the policing feature on this node."                       �"The 64 bits count of bytes which are marked as
        Exceed-Color by previous node and treated as
        violating by the policing feature on this node."                       �"The 64 bits count of packets which are marked as
        Violate-Color by previous node and treated as
        violating by the policing feature on this node."                       �"The 64 bits count of bytes which are marked as
        Violate-Color by previous node and treated as
        violating by the policing feature on this node."                           J"This table specifies Table Map basic configuration
        information."                      ,"Each entry in this table describes configuration
        information about a tablemap name, behavior and default
        value.  Each cbQosTableMapCfgName is a unique character
        string in QOS.  This table contains configuration
        information only, no statistics associated with it."                       4"An arbitrary (system-assigned) index for tablemap."                       "Name of the tablemap."                      �"The behavior of a tablemap.
        value(1)    Always set to-value to be a configurable
                    default value <0-99> which is defined in
                    cbQosTableMapCfgDftValue.

        copy(2)     Always copy from-value to to-value in case
                    the from-value is not found in the tablemap.
                    This is the default behavior for a tablemap.

        ignore(3)   Ignore to set to-value when from-value
                    is not found in the tablemap."                       Y"The configurable default value used when
        cbQosTableMapCfgBehavior is value(1)."                           ["This table specifies the from-value to to-value
        conversion pairs for a tablemap."                       �"Each entry in this table specifies a from-value to
        to-value conversion pair for a given tablemap.
        This table contains configuration information only,
        no statistics associated with it."                      �"This is the from-value in the tablemap.  If
        cbQosTableMapCfgBehavior equals to either copy(2) or
        ignore(3), when the content in the from-type(e.g.,
        cbQosTMSetIpDscpFromType) equals to this value, the
        value in the to-type(e.g., IpDscp) will be set to
        cbQosTableMapValueCfgTo.  Each tablemap can configure
        multiple from-value/to-value pairs."                       f"This is the to-value in the tablemap.  Its usage is
        described in cbQosTableMapValueCfgFrom."                           c"This table specifies enhanced packet marking
        configuration using a pre-defined tablemap."                      m"Each entry in this table describes configuration
        information for an Enhanced Packet Marking Action.
        The enhanced packet marking action uses a pre-configured
        table-map to do the from-value to to-value conversion.
        The packet marking to-type and from-type relationship
        can be established by using the table-map.
        Following is an example:
        cbQosTMSetIpDscpFromType == qosGroup(3)
        cbQosTMSetIpDscpMapName == 'MyTableMap',
        it means that table-map 'MyTableMap' will be used to
        convert the QosGroup value and the converted value will
        be used to set IpDSCP.

        cbQosConfigIndex is drived directly from
        cbQosSetCfgTable to keep the 1-to-1 mapping between
        two tables.  This table contains configuration
        information only, no statistics associated with it."                       �"The packet marking type whose value will be converted
        to a to-value based on a pre-configured table-map.  The
        to-value will then be used to set IpDSCP."                       W"The name of a pre-configured table-map used to convert
        and set IpDSCP value."                       �"The packet marking type whose value will be converted
        to a to-value based on a pre-configured table-map.  The
        to-value will then be used to set IpPrecedence."                       ]"The name of a pre-configured table-map used to convert
        and set IpPrecedence value."                       �"The packet marking type whose value will be converted
        to a to-value based on a pre-configured table-map.  The
        to-value will then be used to set QosGroup."                       Y"The name of a pre-configured table-map used to convert
        and set QosGroup value."                       �"The packet marking type whose value will be converted
        to a to-value based on a pre-configured table-map.  The
        to-value will then be used to set L2Cos."                       V"The name of a pre-configured table-map used to convert
        and set L2Cos value."                       �"The packet marking type whose value will be converted
        to a to-value based on a pre-configured table-map.  The
        to-value will then be used to set MplsExpImposition."                       b"The name of a pre-configured table-map used to convert
        and set MplsExpImposition value."                       �"The packet marking type whose value will be converted
        to a to-value based on a pre-configured table-map.  The
        to-value will then be used to set MplsExpTopMost."                       _"The name of a pre-configured table-map used to convert
        and set MplsExpTopMost value."                           U"This table specifies Estimate Bandwidth related
        configuration information."                      "Each entry in this table describes configuration
        information about Estimate Bandwidth. It includes: 
        drop target, delay target and delay threshold.

        This table contains configuration information only.
        It is indexed by the cbQosConfigIndex."                       $"Bandwidth estimate algorithm type."                       i"One-in-Number target indicating that no more than
        one packet in (this) number will be dropped."                       �"One-in-Number target indicating that no more than
        one packet in (this) number will exceed the delay 
        threshold specified by cbQosEBCfgDelayThreshold."                       3"The time in milliseconds for the delay threshold."                           S"This table specifies Estimate Bandwidth related
        statistical information."                       a"Each entry in this table describes Estimate Bandwidth
        related statistical information."                       ("The current Corvil EB bandwidth value."                       �"Boolean to indicate if Corvil EB is ready.
        true  - Bandwidth estimate is available.
        false - Bandwidth estimate is not available."                       -"The Corvil CTD value defined by CbQosEBCtd."                          �"This table specifies configuration information for measure type
        IPSLA action. The measure action relates the policy class to a
        specific IPSLAs auto group. Configuration of measure action of
        type IPSLA results in automatic generation of IPSLAs synthetic
        test operations when the policy is attached to interface. The
        operations are created according to the characteristics
        specified and to the destinations specified in IPSLA auto group.
        The IPSLAs sythentic test operations measure network statistics
        such as latency, packet loss and jitter.
        This table is to be used only for retrieving the measure
        action configuration information."                       �"Each entry describes configuration information about
        one instance of IPSLAs measure action in the policy map.
        The table is indexed by the cbQosConfigIndex and
        cbQosMeasureIPSLACfgGroupIndex."                      �"An arbitrary (system-assigned) index for each
        instance of IPSLAs measure action. The index is unique
        for each instance for a particular class in particular
        policy-map. For example consider following configuration:
             policy-map p1
                class c1
                  measure type ip-sla group g1
                  measure type ip-sla group g2
                class c2
                  measure type ip-sla group g3

        In this case the cbQosMeasureIPSLACfgGroupIndex value
        for first measure action instance under class c1 will be 1,
        for second instance it will be 1, and so on. The value
        for the index will start over again from 1 for class c2."                      E"IPSLAs auto group name. Group is an aggregation of
        operations sharing the same type, for example udp-jitter
        type, with common characteristics like frequency,
        interval etc.  Groups are formed by policies dictated
        either by customer, or by service level or any other
        requirements."                           v"This table specifies the configuration information for weighted
        queue limit action per IP precedence basis."                      f"Each entry in this table describes configuration
        information about a weighted queueing action. The information
        includes: Threshold value, Units and wieght Type
        (ip,dscp,mplsExp)

        This table contains configuration information only,
        no statistics associated with it. Therefore, it is indexed
        by the cbQosConfigIndex(which refers to cbQosConfigIndex of
        cbQosQueueingCfgEntry) and cbQosQueueingClassConfigIndex
        cbQosQlimitWeightValue  
        i.e(prec,dscp,discard-class,qos-group,atm-clp,
        mplsExp) of each Weighted Queueing Action."                       U"This objects depict the config index for Weighted  Queue limit
        configured."                       �"This object depict the weight value configured for
        weighted Queue-limit.
        The Weight value is IP precedence or IP DSCP of this entry."                       Z"This object is used to depict the Threshold value for the
        Weighted Queue Limit."                       X"This object is used to depict the Threshold Unit for the
        Weighted Queue Limit"                       �"This objects depict the weight value for Weighted Queue limit
        configured
        i.e(precedence,dscp,qos-group,atm-clp,discard-class,mplsExp)    

        ."                           M"This table specifies C3pl Account Action configuration
        information"                      V"Each entry in this table describes configuration
        information about a c3pl account action. The information
        includes: feature type.

        This table contains configuration information only,
        no statistics associated with it. Therefore, it is indexed
        by the cbQosConfigIndex of each C3pl Account Action."                       K"The feature type is used to indicated different drop
        statistics."                           S"This table specifies C3pl Account Action related
        statistics information."                      3"Each entry in this table describes the statistical
        information about C3pl Account Action. Account action
        specific information you can find in this table are :
        queueing drop pkt/byte counters, wred drop pkt/byte
        counters, police pkt/byte counters.

        This table contains statistical information only,
        no configuration information associated with it.
        Therefore, it is indexed by the instance specific IDs,
        such as cbQosPolicyIndex, cbQosObjectsIndex, and
        cbQosC3plAccountFeatureType."                       �"The upper 32 bits count of packets dropped when the
        number of packets in the associated queue was greater
        than the minimum threshold and less than the
        maximum threshold."                       �"The lower 32 bits count of packets dropped when
        the number of packets in the associated queue was
        greater than the minimum threshold and less than the
        maximum threshold."                       �"The 64 bits count of packets dropped when the number
        of packets in the associated queue was greater
        than the minimum threshold and less than the
        maximum threshold."                       �"The upper 32 bits count of bytes dropped when the
        number of packets in the associated queue was greater
        than the minimum threshold and less than the
        maximum threshold."                       �"The lower 32 bits count of bytes dropped when
        the number of packets in the associated queue was
        greater than the minimum threshold and less than the
        maximum threshold."                       �"The 64 bits count of bytes dropped when the number of
        packets in the associated queue was greater
        than the minimum threshold and less than the
        maximum threshold."                       �"The upper 32 bits count of packets dropped when the
        number of packets in the associated queue was greater
        than the maximum threshold."                       �"The lower 32 bits count of packets dropped when the
        number of packets in the associated queue was greater
        than the maximum threshold."                       �"The 64 bits count of packets dropped when the number
        of packets in the associated queue was greater
        than the maximum threshold."                       �"The upper 32 bits count of bytes dropped when the
        number of packets in the associated queue was greater
        than the maximum threshold."                       �"The lower 32 bits count of bytes dropped when the
        number of packets in the associated queue was greater
        than the maximum threshold."                       �"The 64 bits count of bytes dropped when the number of
        packets in the associated queue was greater
        than the maximum threshold."                               b"The compliance statement for entities that implement
        class-based QoS on a Cisco router."   )"This is a optional group of information" )"This is a optional group of information" )"This is a optional group of information" N"This group is only available for code running on the
        7500 platform." \"This group is only available for code running on the
        7200 and/or lower platforms." \"This group is only available for code running on the
        7200 and/or lower platforms."             �"The compliance statement for entities that implement
        class-based QoS on a Cisco router. This compliance module
        deprecates ciscocbQosMIBCompliance."   )"This is a optional group of information" )"This is a optional group of information" )"This is a optional group of information" N"This group is only available for code running on the
        7500 platform." \"This group is only available for code running on the
        7200 and/or lower platforms." \"This group is only available for code running on the
        7200 and/or lower platforms."             �"The compliance statement for entities that implement
        class-based QoS on a Cisco router. This compliance module
        deprecates ciscocbQosMIBComplianceRev1."   )"This is a optional group of information" )"This is a optional group of information" )"This is a optional group of information" N"This group is only available for code running on the
        7500 platform." \"This group is only available for code running on the
        7200 and/or lower platforms." Y"This group is only available on platforms that
        supporting WRED transmit stats." \"This group is only available on platforms that
        supporting WRED ECN configuration." T"This group is only available on platforms that
        supporting WRED ECN stats." a"This group is only available on platforms that
        supporting POLICE violate action stats." ^"This group is only available on platforms that
        supporting police PIR configuration." W"This group is only available for code running on the
        Catalyst 4000 platform." l"This group is only available on platforms that
        supporting multiple POLICE conform/exceed actions." e"This group is only available on platforms that
        supporting multiple POLICE violate actions." b"This group is only available on platforms that
        supporting police CIR/PIR in percentage." \"This group is only available for code running on the
        7200 and/or lower platforms." j"This group is only available on platforms that
        supporting committed shaping rate in percentage." W"This group is only available on platforms that
        supporting SET L2 Cos config." m"This group is only available on platforms that
        supporting SET MPLS Experimental Imposition config." ^"This group is only available on platforms that
        supporting SET Discard Class config." k"This group is only available on platforms that
        supporting SET MPLS Experimental Top Most config." X"This group is only available on platforms that
        supporting IPHC configuration." P"This group is only available on platforms that
        supporting IPHC stats."             �"The compliance statement for entities that implement
        class-based QoS on a Cisco router. This compliance module
        deprecates ciscocbQosMIBComplianceRev2."   )"This is a optional group of information" )"This is a optional group of information" )"This is a optional group of information" N"This group is only available for code running on the
        7500 platform." \"This group is only available for code running on the
        7200 and/or lower platforms." Y"This group is only available on platforms that
        supporting WRED transmit stats." \"This group is only available on platforms that
        supporting WRED ECN configuration." T"This group is only available on platforms that
        supporting WRED ECN stats." a"This group is only available on platforms that
        supporting POLICE violate action stats." ^"This group is only available on platforms that
        supporting police PIR configuration." W"This group is only available for code running on the
        Catalyst 4000 platform." l"This group is only available on platforms that
        supporting multiple POLICE conform/exceed actions." e"This group is only available on platforms that
        supporting multiple POLICE violate actions." b"This group is only available on platforms that
        supporting police CIR/PIR in percentage." \"This group is only available for code running on the
        7200 and/or lower platforms." j"This group is only available on platforms that
        supporting committed shaping rate in percentage." W"This group is only available on platforms that
        supporting SET L2 Cos config." m"This group is only available on platforms that
        supporting SET MPLS Experimental Imposition config." ^"This group is only available on platforms that
        supporting SET Discard Class config." k"This group is only available on platforms that
        supporting SET MPLS Experimental Top Most config." X"This group is only available on platforms that
        supporting IPHC configuration." P"This group is only available on platforms that
        supporting IPHC stats." j"This group is only available on platforms that
        supporting time-based Queue limit configuration." l"This group is only available on platforms that
        supporting time-based RED threshold configuration." "This group is only available on platforms that
        supporting cell-based Policing Rate and Burst
        configuration." m"This group is only available on platforms that
        supporting time-based Policing Burst configuration." e"This group is only available on platforms that
        supporting Policing ATM CDVT configuration." h"This group is only available on platforms that
        supporting Policing Color Aware configuration." l"This group is only available on platforms that
        supporting time-based Shaping Burst configuration." d"This group is only available on platforms that
        supporting SRP Priority SET configuration." m"This group is only available on platforms that
        supporting Frame Relay FECN BECN SET configuration." O"This group is only available on platforms that
        supporting SET stats." `"This group is only available on platforms that
        supporting Policing Color Aware stats." ]"This group is only available on platforms that
        supporting Enhanced Packet Marking." S"This group is only available on platforms
        supporting Estimate Bandwidth." Y"This group is only available on platforms
        supporting Estimate Bandwidth stats."             �"The compliance statement for entities that implement
        class-based QoS on a Cisco router. This compliance module
        deprecates ciscocbQosMIBComplianceRev2."   )"This is a optional group of information" )"This is a optional group of information" )"This is a optional group of information" N"This group is only available for code running on the
        7500 platform." \"This group is only available for code running on the
        7200 and/or lower platforms." Y"This group is only available on platforms that
        supporting WRED transmit stats." \"This group is only available on platforms that
        supporting WRED ECN configuration." T"This group is only available on platforms that
        supporting WRED ECN stats." a"This group is only available on platforms that
        supporting POLICE violate action stats." ^"This group is only available on platforms that
        supporting police PIR configuration." W"This group is only available for code running on the
        Catalyst 4000 platform." l"This group is only available on platforms that
        supporting multiple POLICE conform/exceed actions." e"This group is only available on platforms that
        supporting multiple POLICE violate actions." b"This group is only available on platforms that
        supporting police CIR/PIR in percentage." \"This group is only available for code running on the
        7200 and/or lower platforms." j"This group is only available on platforms that
        supporting committed shaping rate in percentage." W"This group is only available on platforms that
        supporting SET L2 Cos config." m"This group is only available on platforms that
        supporting SET MPLS Experimental Imposition config." ^"This group is only available on platforms that
        supporting SET Discard Class config." k"This group is only available on platforms that
        supporting SET MPLS Experimental Top Most config." X"This group is only available on platforms that
        supporting IPHC configuration." P"This group is only available on platforms that
        supporting IPHC stats." j"This group is only available on platforms that
        supporting time-based Queue limit configuration." l"This group is only available on platforms that
        supporting time-based RED threshold configuration." "This group is only available on platforms that
        supporting cell-based Policing Rate and Burst
        configuration." m"This group is only available on platforms that
        supporting time-based Policing Burst configuration." e"This group is only available on platforms that
        supporting Policing ATM CDVT configuration." h"This group is only available on platforms that
        supporting Policing Color Aware configuration." l"This group is only available on platforms that
        supporting time-based Shaping Burst configuration." d"This group is only available on platforms that
        supporting SRP Priority SET configuration." m"This group is only available on platforms that
        supporting Frame Relay FECN BECN SET configuration." O"This group is only available on platforms that
        supporting SET stats." `"This group is only available on platforms that
        supporting Policing Color Aware stats." ]"This group is only available on platforms that
        supporting Enhanced Packet Marking." S"This group is only available on platforms
        supporting Estimate Bandwidth." Y"This group is only available on platforms
        supporting Estimate Bandwidth stats." 5"Optional objects to configure IPSLA measure action."             �"The compliance statement for entities that implement
        class-based QoS on a Cisco router. This compliance module
        deprecates ciscocbQosMIBComplianceRev4."   )"This is a optional group of information" )"This is a optional group of information" )"This is a optional group of information" N"This group is only available for code running on the
        7500 platform." \"This group is only available for code running on the
        7200 and/or lower platforms." Y"This group is only available on platforms that
        supporting WRED transmit stats." \"This group is only available on platforms that
        supporting WRED ECN configuration." T"This group is only available on platforms that
        supporting WRED ECN stats." a"This group is only available on platforms that
        supporting POLICE violate action stats." ^"This group is only available on platforms that
        supporting police PIR configuration." W"This group is only available for code running on the
        Catalyst 4000 platform." l"This group is only available on platforms that
        supporting multiple POLICE conform/exceed actions." e"This group is only available on platforms that
        supporting multiple POLICE violate actions." b"This group is only available on platforms that
        supporting police CIR/PIR in percentage." \"This group is only available for code running on the
        7200 and/or lower platforms." j"This group is only available on platforms that
        supporting committed shaping rate in percentage." W"This group is only available on platforms that
        supporting SET L2 Cos config." m"This group is only available on platforms that
        supporting SET MPLS Experimental Imposition config." ^"This group is only available on platforms that
        supporting SET Discard Class config." k"This group is only available on platforms that
        supporting SET MPLS Experimental Top Most config." X"This group is only available on platforms that
        supporting IPHC configuration." P"This group is only available on platforms that
        supporting IPHC stats." j"This group is only available on platforms that
        supporting time-based Queue limit configuration." l"This group is only available on platforms that
        supporting time-based RED threshold configuration." "This group is only available on platforms that
        supporting cell-based Policing Rate and Burst
        configuration." m"This group is only available on platforms that
        supporting time-based Policing Burst configuration." e"This group is only available on platforms that
        supporting Policing ATM CDVT configuration." h"This group is only available on platforms that
        supporting Policing Color Aware configuration." l"This group is only available on platforms that
        supporting time-based Shaping Burst configuration." d"This group is only available on platforms that
        supporting SRP Priority SET configuration." m"This group is only available on platforms that
        supporting Frame Relay FECN BECN SET configuration." O"This group is only available on platforms that
        supporting SET stats." `"This group is only available on platforms that
        supporting Policing Color Aware stats." ]"This group is only available on platforms that
        supporting Enhanced Packet Marking." S"This group is only available on platforms
        supporting Estimate Bandwidth." Y"This group is only available on platforms
        supporting Estimate Bandwidth stats." 5"Optional objects to configure IPSLA measure action." �"This group is applicable for those platforms that
        support shape rate greater than maximum value 
        reportable by cbQosTSCfgRate."             �"The compliance statement for entities that implement
        class-based QoS on a Cisco router. This compliance module
        deprecates ciscocbQosMIBComplianceRev5."   )"This is a optional group of information" )"This is a optional group of information" )"This is a optional group of information" N"This group is only available for code running on the
        7500 platform." \"This group is only available for code running on the
        7200 and/or lower platforms." Y"This group is only available on platforms that
        supporting WRED transmit stats." \"This group is only available on platforms that
        supporting WRED ECN configuration." T"This group is only available on platforms that
        supporting WRED ECN stats." a"This group is only available on platforms that
        supporting POLICE violate action stats." ^"This group is only available on platforms that
        supporting police PIR configuration." W"This group is only available for code running on the
        Catalyst 4000 platform." l"This group is only available on platforms that
        supporting multiple POLICE conform/exceed actions." e"This group is only available on platforms that
        supporting multiple POLICE violate actions." b"This group is only available on platforms that
        supporting police CIR/PIR in percentage." \"This group is only available for code running on the
        7200 and/or lower platforms." j"This group is only available on platforms that
        supporting committed shaping rate in percentage." m"This group is only available on platforms that
        supporting SET MPLS Experimental Imposition config." ^"This group is only available on platforms that
        supporting SET Discard Class config." k"This group is only available on platforms that
        supporting SET MPLS Experimental Top Most config." X"This group is only available on platforms that
        supporting IPHC configuration." P"This group is only available on platforms that
        supporting IPHC stats." j"This group is only available on platforms that
        supporting time-based Queue limit configuration." l"This group is only available on platforms that
        supporting time-based RED threshold configuration." "This group is only available on platforms that
        supporting cell-based Policing Rate and Burst
        configuration." m"This group is only available on platforms that
        supporting time-based Policing Burst configuration." e"This group is only available on platforms that
        supporting Policing ATM CDVT configuration." h"This group is only available on platforms that
        supporting Policing Color Aware configuration." l"This group is only available on platforms that
        supporting time-based Shaping Burst configuration." d"This group is only available on platforms that
        supporting SRP Priority SET configuration." m"This group is only available on platforms that
        supporting Frame Relay FECN BECN SET configuration." O"This group is only available on platforms that
        supporting SET stats." `"This group is only available on platforms that
        supporting Policing Color Aware stats." ]"This group is only available on platforms that
        supporting Enhanced Packet Marking." S"This group is only available on platforms
        supporting Estimate Bandwidth." Y"This group is only available on platforms
        supporting Estimate Bandwidth stats." 5"Optional objects to configure IPSLA measure action." �"This group is applicable for those platforms that
        support shape rate greater than maximum value 
        reportable by cbQosTSCfgRate." k"This group is only available on platforms that
        supporting SET L2 Cos or SET L2 Cos Inner config." c"Optional objects to provide more information about a
        particular service policy instance."             �"The compliance statement for entities that implement
        class-based QoS on a Cisco router. This compliance module
        deprecates ciscocbQosMIBComplianceRev5."   )"This is a optional group of information" )"This is a optional group of information" )"This is a optional group of information" N"This group is only available for code running on the
        7500 platform." \"This group is only available for code running on the
        7200 and/or lower platforms." Y"This group is only available on platforms that
        supporting WRED transmit stats." \"This group is only available on platforms that
        supporting WRED ECN configuration." T"This group is only available on platforms that
        supporting WRED ECN stats." a"This group is only available on platforms that
        supporting POLICE violate action stats." ^"This group is only available on platforms that
        supporting police PIR configuration." W"This group is only available for code running on the
        Catalyst 4000 platform." l"This group is only available on platforms that
        supporting multiple POLICE conform/exceed actions." e"This group is only available on platforms that
        supporting multiple POLICE violate actions." b"This group is only available on platforms that
        supporting police CIR/PIR in percentage." \"This group is only available for code running on the
        7200 and/or lower platforms." j"This group is only available on platforms that
        supporting committed shaping rate in percentage." m"This group is only available on platforms that
        supporting SET MPLS Experimental Imposition config." ^"This group is only available on platforms that
        supporting SET Discard Class config." k"This group is only available on platforms that
        supporting SET MPLS Experimental Top Most config." X"This group is only available on platforms that
        supporting IPHC configuration." P"This group is only available on platforms that
        supporting IPHC stats." j"This group is only available on platforms that
        supporting time-based Queue limit configuration." l"This group is only available on platforms that
        supporting time-based RED threshold configuration." "This group is only available on platforms that
        supporting cell-based Policing Rate and Burst
        configuration." m"This group is only available on platforms that
        supporting time-based Policing Burst configuration." e"This group is only available on platforms that
        supporting Policing ATM CDVT configuration." h"This group is only available on platforms that
        supporting Policing Color Aware configuration." l"This group is only available on platforms that
        supporting time-based Shaping Burst configuration." d"This group is only available on platforms that
        supporting SRP Priority SET configuration." m"This group is only available on platforms that
        supporting Frame Relay FECN BECN SET configuration." O"This group is only available on platforms that
        supporting SET stats." `"This group is only available on platforms that
        supporting Policing Color Aware stats." ]"This group is only available on platforms that
        supporting Enhanced Packet Marking." S"This group is only available on platforms
        supporting Estimate Bandwidth." Y"This group is only available on platforms
        supporting Estimate Bandwidth stats." 5"Optional objects to configure IPSLA measure action." �"This group is applicable for those platforms that
        support shape rate greater than maximum value 
        reportable by cbQosTSCfgRate." k"This group is only available on platforms that
        supporting SET L2 Cos or SET L2 Cos Inner config." c"Optional objects to provide more information about a
        particular service policy instance." r"This group is only available on platform that supporting
        c3pl account action configuration information." r"This group is only available on platform that supporting
        c3pl account action configuration information."                 P"Required objects to provide CB QoS objects configuration
        information."                 P"Required objects to provide CB QoS objects configuration
        information."                 P"Required objects to provide CB QoS objects configuration
        information."                 P"Required objects to provide CB QoS objects configuration
        information."                 P"Required objects to provide CB QoS objects configuration
        information."                 P"Required objects to provide CB QoS objects configuration
        information."                 P"Required objects to provide CB QoS objects configuration
        information."                 P"Required objects to provide CB QoS objects configuration
        information."                 P"Required objects to provide CB QoS objects configuration
        information."                 P"Required objects to provide CB QoS objects configuration
        information."                 P"Required objects to provide CB QoS objects configuration
        information."                 P"Required objects to provide CB QoS objects configuration
        information."                 P"Required objects to provide CB QoS objects configuration
        information."                 P"Required objects to provide CB QoS objects configuration
        information."                 P"Required objects to provide CB QoS objects configuration
        information."                 8"Optional objects to provide CB QoS summary statistics."                 :"Optional objects to provide CB QoS Queueing information."                 J"Optional objects to provide CB QoS traffic-shaping
        information."                 P"Required objects to provide CB QoS objects configuration
        information."                 P"Required objects to provide CB QoS objects configuration
        information."                 P"Required objects to provide CB QoS objects configuration
        information."                 P"Required objects to provide CB QoS objects configuration
        information."                 P"Required objects to provide CB QoS objects configuration
        information."                 P"Optional objects to provide CB QoS objects configuration
        information."                 P"Optional objects to provide CB QoS objects configuration
        information."                 P"Optional objects to provide CB QoS objects configuration
        information."                 P"Required objects to provide CB QoS objects configuration
        information."                 P"Optional objects to provide CB QoS objects configuration
        information."                 P"Required objects to provide CB QoS objects configuration
        information."                 P"Required objects to provide CB QoS objects configuration
        information."                 P"Required objects to provide CB QoS objects configuration
        information."                 P"Required objects to provide CB QoS objects configuration
        information."                 P"Required objects to provide CB QoS objects configuration
        information."                 P"Optional objects to provide CB QoS objects configuration
        information."                 P"Optional objects to provide CB QoS objects configuration
        information."                 P"Optional objects to provide CB QoS objects configuration
        information."                 �"Optional objects to provide the information of the
        committed policing rate that is greater than the
        maximum value reportable by cbQosPoliceCfgRate."                 h"Required objects to provide CB QoS objects configuration
        information for SET/Marking feature."                 g"Optional object to provide CB QoS objects configuration
        information for SET/Marking feature."                 g"Optional object to provide CB QoS objects configuration
        information for SET/Marking feature."                 g"Optional object to provide CB QoS objects configuration
        information for SET/Marking feature."                 c"Required objects to provide CB QoS objects configuration
        information for POLICE feature."                 7"Optional objects to provide CB QoS policing PIR rate."                 W"Optional objects to provide CB QoS policing CIR and PIR
        rates in percentage."                 ["Optional objects to provide CB QoS committed
        traffic-shaping rate in percentage."                 ]"Optional object to provide CB QoS IP header compression
        configuration information."                 Z"Optional objects to provide CB QoS IP header compression
        statistic information."                 �"Required objects to provide CB QoS objects configuration
        information. This group deprecates 
        cbQosServicePolicyGroup."                 a"Optional object to provide Aggregate Queue time based
        Limit configuration information."                 a"Optional objects to provide WRED time based threshold
        Limit configuration information."                 a"Optional objects to provide CB QoS policing cell based
        rate configuration information."                 g"Optional objects to provide CB QoS policing time based
        burst size configuration information."                 Z"Optional objects to provide CB QoS policing ATM CDVT
        configuration information."                 ]"Optional objects to provide CB QoS policing color aware
        configuration information."                 n"Optional objects to provide CB QoS traffic-shaping
        time based burst size configuration information."                 X"Optional object to provide CB QoS SET SRP Priority
        configuration information."                 a"Optional object to provide CB QoS SET Frame Relay
        FECN BECN configuration information."                 J"Optional objects to provide CB QoS SET statistical
        information."                 n"Optional objects to provide CB QoS Assured Forwarding
        Policing Color Aware statistical information."                 `"Optional objects to provide CB QoS Enhanced Packet
        Marking configuration information."                 T"Optional objects to provide Estimate Bandwidth
        configuration information."                 M"Optional objects to provide Estimate Bandwidth
        status information."                 c"Optional objects to provide more information about a
        particular service policy instance."                 5"Optional objects to configure IPSLA measure action."                 �"Objects to provide the information of the
        committed shaping rate that is greater than the
        maximum value reportable by cbQosTSCfgRate."                 O"Required objects to provide CB QoS objects configuration
        information"                 O"Optional objects to provide CB QoS objects configuration
        information"                 P"Required objects to provide CB QoS objects configuration
        information."                 O"Required objects to provide CB QoS objects configuration
        information"                 b"Required objects to provide CB QoS objects configuration
        information for POLICE feature"                 k"Required objects to provide c3pl account action
        configuration information (provide drop types) ."                 R"Optional objects to provide c3pl account action
        statistics information."                                