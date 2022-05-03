/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20220331 (64-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ./SSDT-AWAC-DISABLE.aml, Mon May  2 13:47:24 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000004E (78)
 *     Revision         0x02
 *     Checksum         0x87
 *     OEM ID           "ACDT"
 *     OEM Table ID     "NOAWAC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20220331 (539099953)
 */
DefinitionBlock ("", "SSDT", 2, "ACDT", "NOAWAC", 0x00000000)
{
    External (STAS, IntObj)

    Scope (\)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (_OSI ("Darwin"))
            {
                STAS = One
            }
        }
    }
}

