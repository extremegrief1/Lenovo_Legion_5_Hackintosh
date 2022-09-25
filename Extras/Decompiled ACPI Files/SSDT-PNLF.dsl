DefinitionBlock ("", "SSDT", 2, "CORP", "PNLF", 0x00000000)
{
    External (\_SB.PCI0.GFX0, DeviceObj)

    If (_OSI ("Darwin"))
    {
        Device (\_SB.PCI0.GFX0.PNLF)
        {
            Name (_HID, EisaId ("APP0002"))  // _HID: Hardware ID
            Name (_CID, "backlight")  // _CID: Compatible ID
            Name (_UID, 0x63)  // _UID: Unique ID
            Name (_STA, 0x0B)  // _STA: Status
        }
    }
}