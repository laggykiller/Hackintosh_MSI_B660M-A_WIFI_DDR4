/*
 * XCPM power management compatibility table with Darwin method
 * for Alder Lake CPUs and possibly others with CPU objects
 * declared as Device instead of Processor.
 *
 * Note 1: Just like Rocket Lake CPUs, Alder Lake CPUs require
 * custom CPU profile via CPUFriend.
 * REF: https://github.com/dortania/bugtracker/issues/190
 *
 * Note 2: PBlockAddress (0x00000510 here) can be corrected
 * to match MADT and may vary across the boards and vendors.
 * This field is ignored by macOS and read from MADT instead,
 * so it is purely cosmetic.
 */
DefinitionBlock ("", "SSDT", 2, "ACDT", "CpuPlugA", 0x00003000)
{
    External (_SB_, DeviceObj)

    Scope (\_SB)
    {
        Processor (PR00, 0x00, 0x00000510, 0x06)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
            Name (_UID, Zero)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DSM, 4, NotSerialized)
            {
                If (LEqual (Arg2, Zero)) {
                    Return (Buffer (One) { 0x03 })
                }

                Return (Package (0x02)
                {
                    "plugin-type",
                    One
                })
            }
        }

        Processor (PR01, 0x01, 0x00000510, 0x06)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)
            Name (_UID, 1)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Processor (PR02, 0x02, 0x00000510, 0x06)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)
            Name (_UID, 2)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Processor (PR03, 0x03, 0x00000510, 0x06)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)
            Name (_UID, 3)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Processor (PR04, 0x04, 0x00000510, 0x06)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)
            Name (_UID, 4)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Processor (PR05, 0x05, 0x00000510, 0x06)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)
            Name (_UID, 5)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Processor (PR06, 0x06, 0x00000510, 0x06)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)
            Name (_UID, 6)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Processor (PR07, 0x07, 0x00000510, 0x06)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)
            Name (_UID, 7)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Processor (PR08, 0x08, 0x00000510, 0x06)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)
            Name (_UID, 8)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Processor (PR09, 0x09, 0x00000510, 0x06)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)
            Name (_UID, 9)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Processor (PR10, 0x0A, 0x00000510, 0x06)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)
            Name (_UID, 10)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Processor (PR11, 0x0B, 0x00000510, 0x06)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)
            Name (_UID, 11)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Processor (PR12, 0x0C, 0x00000510, 0x06)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)
            Name (_UID, 12)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Processor (PR13, 0x0D, 0x00000510, 0x06)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)
            Name (_UID, 13)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Processor (PR14, 0x0E, 0x00000510, 0x06)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)
            Name (_UID, 14)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Processor (PR15, 0x0F, 0x00000510, 0x06)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)
            Name (_UID, 15)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Processor (PR16, 0x10, 0x00000510, 0x06)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)
            Name (_UID, 16)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Processor (PR17, 0x11, 0x00000510, 0x06)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)
            Name (_UID, 17)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Processor (PR18, 0x12, 0x00000510, 0x06)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)
            Name (_UID, 18)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Processor (PR19, 0x13, 0x00000510, 0x06)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)
            Name (_UID, 19)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }
}
