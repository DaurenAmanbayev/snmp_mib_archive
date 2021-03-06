                       ="This is the number of entries in the lgpFlexibleBasicTable."                      n"This table contains data points supported by the managed device. The 
         data in this table is formatted in string form. This data is also 
         available in numerical form in the augmented 
         lgpFlexibleExtendedTable.

         In this table, the row indexing is not necessarily sequential and 
         leads to a sparsely populated table."                       ^"This entry defines the columns to be populated in the
             'lgpFlexibleBasicTable'."                       �"This is the index which defines a specific row in the 
             lgpFlexibleBasicTable.  Each row index is associated with a unique
             data point ID which fixes the data point to its permanent location
             in the table."                       7"A short description of the data reported in this row."                      �"A string representation of any data available.  This is the
             preferred method of data access, since this will give fully
             scaled data for both integer and floating point data, in addition
             to textual data.  If this string column cannot be used, then 
             columns in the lgpFlexibleExtendedTable must be used in order 
             to get a fully scaled version of integer data."                       �"The unit of measure that the value will be presented in.  This is
             not populated when the data does not have a unit of measure
             associated with it."                      1"This table contains data points supported by the managed device.  This
         table augments the lgpFlexibleBasicTable, providing additional
         information that may be relevant to advanced users.  Values presented 
         in string format in the lgpFlexibleBasicTable table are also available in 
         numeric form in this table.

         Since the lgpFlexibleBasicTable and this table are both indexed by 
         lgpFlexibleEntryIndex, data applicable to a specific data point can be 
         found in both tables at the same index."                       a"This entry defines the columns to be populated in the
             'lgpFlexibleExtendedTable'."                      ]"This is the data point value formatted as a signed integer. This 
             column is populated only for numerical data points whose type 
             requires a signed value.

             To convert this value to the units indicated in the units of 
             measure columns (lgpFlexibleEntryUnitsOfMeasure or 
             lgpFlexibleEntryUnitsOfMeasureEnum), divide this value 
             by 10^n, where n is the value from the 
             lgpFlexibleEntryDecimalPosition column.

             For data points that are writable (as designated by the
             lgpFlexibleEntryAccessibility column), the inverse
             calculation must done.  The desired value must be multiplied by
             10^n before it is written to this column, where n is the value 
             from the lgpFlexibleEntryDecimalPosition column."                      h"This is the data point value formatted as an unsigned integer. This 
             column is populated only for numerical data points whose type 
             does not require a signed value.

             To convert this value to the units indicated in the units of 
             measure columns (lgpFlexibleEntryUnitsOfMeasure or 
             lgpFlexibleEntryUnitsOfMeasureEnum), divide this value 
             by 10^n, where n is the value from the 
             lgpFlexibleEntryDecimalPosition column.

             For data points that are writable (as designated by the
             lgpFlexibleEntryAccessibility column), the inverse
             calculation must done.  The desired value must be multiplied by
             10^n before it is written to this column, where n is the value 
             from the lgpFlexibleEntryDecimalPosition column."                      �"This is a power of ten divider needed to convert values from the 
             signed and unsigned integer columns 
             (lgpFlexibleEntryIntegerValue or 
             lgpFlexibleEntryUnsignedIntegerValue) to floating 
             point values. This essentially tells how many positions to move 
             the decimal point to the left.

             To convert the integer values to the units indicated in the units 
             of measure columns (lgpFlexibleEntryUnitsOfMeasure or 
             lgpFlexibleEntryUnitsOfMeasureEnum), divide the 
             integer value by 10^n, where n is the value from this column.

             For data points that are writable (as designated by the
             lgpFlexibleEntryAccessibility column), the inverse
             calculation must done. The desired value must be multiplied by
             10^n before it is written to the signed or unsigned integer 
             columns."                      ~"The format that the data will appear as.  This can be used to
             determine which field the numerical data will appear in.  Data of 
             type int16 and int32 will appear in the column
             lgpFlexibleEntryIntegerValue.  Data of type uint16, 
             uint32, and enum, will appear in the column
             lgpFlexibleEntryUnsignedIntegerValue."                       `"This describes the read/write access that is available for the 
             data in the row."                       4"The unit of measurement that the value will be in."                       �"A description of the data reported in this row.  This is generally 
             longer and more thorough than the simple label described by 
             lgpFlexibleEntryDataLabel."                                      �"The MIB module used to register Liebert Flexible related SNMP OIDs.

      Copyright 2013 Liebert Corporation. All rights reserved.
      Reproduction of this document is authorized on the condition
      that the forgoing copyright notice is included.

      This Specification is supplied 'AS IS' and Liebert Corporation
      makes no warranty, either express or implied, as to the use,
      operation, condition, or performance of the Specification.","Contact:   Technical Support

      Postal:
      Liebert Corporation
      1050 Dearborn Drive
      P.O. Box 29186
      Columbus OH, 43229
      US

      Tel: +1 (800) 222-5877

      E-mail: liebert.monitoring@emerson.com
      Web:    www.liebert.com

      Author:  Phil Ulrich" "201305140000Z" "Initial Version"              