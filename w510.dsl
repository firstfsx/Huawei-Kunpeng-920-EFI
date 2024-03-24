
DefinitionBlock ("", "SSDT", 2, "DIXYES", "W510    ", 0)
{
    External (_SB.I2C0.COM1, DeviceObj)
    External (_SB.SPI0.COM2, DeviceObj)
    External (_SB.WIFI, DeviceObj)
    
    // 缺少HID
    Scope (\_SB.I2C0.COM1)
    {
        Name (_HID, "DIXY0001")
    }

    // 缺少HID
    Scope (\_SB.SPI0.COM2)
    {
        Name (_HID, "DIXY0002")
    }

    // 我这块板子没出件
    Scope (\_SB.WIFI)
    {
        Name (_STA, Zero)
    }
}
