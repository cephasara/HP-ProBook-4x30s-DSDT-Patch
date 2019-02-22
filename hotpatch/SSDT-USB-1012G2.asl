// USBInjectAll configuration/override for Elite X2 1012 G2 (Kabylake)
//
// Based on information provided from Peter's KabyLake Elite X2 1012 G2

//DefinitionBlock("", "SSDT", 2, "hack", "usb4x0g4", 0)
//{
//
// Override for USBInjectAll.kext
//
    Device(UIAC)
    {
        Name(_HID, "UIA00000")
        Name(RMCF, Package()
        {
            // XHC overrides
            "8086_9d2f", Package()
            {
                "port-count", Buffer() { 18, 0, 0, 0 },
                "ports", Package()
                {
                    // USB type-A port
                    "HS01", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                    // "HS02", Package()
                    // {
                    //     "UsbConnector", 3,
                    //     "port", Buffer() { 2, 0, 0, 0 },
                    // },
                    // Keyboard/Trackpad
                    "HS03", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 3, 0, 0, 0 },
                    },
                    // "HS04", Package()
                    // {
                    //     "UsbConnector", 3,
                    //     "port", Buffer() { 4, 0, 0, 0 },
                    // },
                    // GPS
                    "HS05", Package()
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 5, 0, 0, 0 },
                    },
                    // Unknown
                    "HS06", Package()
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 6, 0, 0, 0 },
                    },
                    // "HS07", Package()
                    // {
                    //     "UsbConnector", 3,
                    //     "port", Buffer() { 7, 0, 0, 0 },
                    // },
                    // "HS08", Package()
                    // {
                    //     "UsbConnector", 3,
                    //     "port", Buffer() { 8, 0, 0, 0 },
                    // },
                    // Wifi/Bluetooth
                    "HS09", Package()
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 9, 0, 0, 0 },
                    },
                    // "HS10", Package()
                    // {
                    //     "UsbConnector", 3,
                    //     "port", Buffer() { 10, 0, 0, 0 },
                    // },
                    // USB type-A port
                    "SS01", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 13, 0, 0, 0 },
                    },
                    // "SS02", Package()
                    // {
                    //     "UsbConnector", 3,
                    //     "port", Buffer() { 14, 0, 0, 0 },
                    // },
                    // "SS03", Package()
                    // {
                    //     "UsbConnector", 3,
                    //     "port", Buffer() { 15, 0, 0, 0 },
                    // },
                    // "SS04", Package()
                    // {
                    //     "UsbConnector", 3,
                    //     "port", Buffer() { 16, 0, 0, 0 },
                    // },
                    // "SS05", Package()
                    // {
                    //     "UsbConnector", 3,
                    //     "port", Buffer() { 17, 0, 0, 0 },
                    // },
                    // "SS06", Package()
                    // {
                    //     "UsbConnector", 3,
                    //     "port", Buffer() { 18, 0, 0, 0 },
                    // },
                    // "USR1", Package()
                    // {
                    //     "UsbConnector", 3,
                    //     "port", Buffer() { 11, 0, 0, 0 },
                    // },
                    // "USR2", Package()
                    // {
                    //     "UsbConnector", 3,
                    //     "port", Buffer() { 12, 0, 0, 0 },
                    // }
                }
            },

        })
    }
//}

//EOF
