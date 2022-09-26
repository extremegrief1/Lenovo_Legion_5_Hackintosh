DefinitionBlock ("", "SSDT", 2, "CORP", "SSDTRHUB", 0x00001000)
{
    External (_SB_.PCI0.GP17, DeviceObj)
    External (_SB_.PCI0.GP17.XHC0.RHUB, DeviceObj)
    External (_SB_.PCI0.GP17.XHC1, DeviceObj)

    Scope (\_SB.PCI0.GP17.XHC0.RHUB)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (Zero)
            }
            Else
            {
                Return (0x0F)
            }
        }
    }

    Scope (\_SB.PCI0.GP17.XHC1)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (Zero)
            }
            Else
            {
                Return (0x0F)
            }
        }
    }

    Scope (\_SB.PCI0.GP17)
    {
        Device (XHC2)
        {
            Name (_ADR, 0x04)  // _ADR: Address
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

