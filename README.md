<h1 align="center"> macOS on Lenovo Legion 5 </h1>

<p align="center">
  <img src="https://github.com/extremegrief1/Lenovo_Legion_5_Hackintosh/blob/main/Images/Desktop.png" alt="Desktop">
</p>

<p align="center">
<a href="https://www.apple.com/macos/monterey/">
  <img src="https://img.shields.io/badge/macOS-Monterey_v12.6-blue" width="215"/> </a>
<a href="https://github.com/acidanthera/OpenCorePkg/releases">
  <img src="https://img.shields.io/badge/OpenCore-0.8.4-9cf" width="155"/> </a>
</p>

## Table of Contents

- [Screenshots](https://github.com/extremegrief1/Lenovo_Legion_5_Hackintosh#screenshots)
- [Specifications](https://github.com/extremegrief1/Lenovo_Legion_5_Hackintosh#specifications)
- [macOS Compatibility](https://github.com/extremegrief1/Lenovo_Legion_5_Hackintosh#macos-update-history)
- [What's working](https://github.com/extremegrief1/Lenovo_Legion_5_Hackintosh#whats-working)
- [What's not working](https://github.com/extremegrief1/Lenovo_Legion_5_Hackintosh#whats-not-working)
- [Kexts used](https://github.com/extremegrief1/Lenovo_Legion_5_Hackintosh#Kexts-used)
- [SSDTs used](https://github.com/extremegrief1/Lenovo_Legion_5_Hackintosh#SSDTs-used)
- [Credits](https://github.com/extremegrief1/Lenovo_Legion_5_Hackintosh#credits)

## Screenshots

Coming soon.

## Specifications

Type | Spec | Status
:---------|:---------|:----------
Model Name      | Lenovo Legion 5 | ✅
CPU              | AMD Ryzen™ 7 5800H CPU | ✅
External Graphics Card | AMD Radeon™ RX 6600M | ✅
RAM           | 16 GB 3200 MHz DDR4 | ✅
Wi-Fi             | Intel® Wi-Fi 6E AX210 | ✅
Ethernet          | Realtek RTL8111 | ✅
Audio       | Realtek ALC287 | ✅

## macOS Update History

- ✅ macOS Monterey 12.6

## What's working

Type | Status
:---------|:----------
CPU | ✅  
AMD GPU | ✅  
Audio | ✅  
Ethernet | ✅  
Intel Wi-Fi | ✅  
USB periphials | ✅
Battery | ✅
Shutdown / Reboot |✅  

## What's not working

Type | Info | Status
:---------|:---------|:----------
USB storage | The XHCI controller is unsupported, so we have to use GenericUSBXHCI at the moment which doesn't fully support Monterey. | ❌
MediaTek Wi-Fi | MediaTek Wi-Fi doesn't work on macOS, note that Intel Wi-Fi will work. | ❌
iServices | Not set-up properly, will work soon | ❌

## Kexts used

Kext | Info
:---------|:---------
[AirportItlwm](https://github.com/OpenIntelWireless/itlwm) | Adds Intel Wi-Fi support. Disable for MediaTek Wi-Fi.
[AMDRyzenCPUPowerManagement](https://github.com/trulyspinach/SMCAMDProcessor) | Adds power management support for AMD CPUs.
[AmdTscSync](https://github.com/naveenkrdy/AmdTscSync) | Syncs TSC between cores for AMD CPUs.
[AppleALC](https://github.com/acidanthera/AppleALC) | Fixes audio.
[AppleMCEReporterDisabler](https://files.amd-osx.com/AppleMCEReporterDisabler.kext.zip) | Disables AppleIntelMCEReporter which causes panics on AMD CPUs.
[BlueToolFixup](https://github.com/acidanthera/BrcmPatchRAM) | Patches macOS Monterey+'s Bluetooth stack to allow non-Apple Bluetooth cards.
[ECEnabler](https://github.com/1Revenger1/ECEnabler) | Fixes EC issues.
[GenericUSBXHCI](https://github.com/RehabMan/OS-X-Generic-USB3) | Generic XHCI driver
[IntelBluetoothFirmware](https://github.com/OpenIntelWireless/IntelBluetoothFirmware) | Uploads Intel Wireless Bluetooth Firmware to provide native Bluetooth in macOS. Disable for MediaTek Wi-Fi.
[IntelBTPatcher](https://github.com/OpenIntelWireless/IntelBluetoothFirmware) | Fixes some Intel Bluetooth bugs. Disable for MediaTek Wi-Fi.
[Lilu](https://github.com/acidanthera/Lilu) | An open source kernel extension bringing a platform for arbitrary kext, library, and program patching throughout the system for macOS.
[NVMeFix](https://github.com/acidanthera/NVMeFix) | Patches the NVMe stack for native power management.
[RadeonSensor](https://github.com/aluveitie/RadeonSensor) | Adds temperature reading to AMD GPUs. Disable for NVIDIA GPUs.
[RealtekRTL8111](https://github.com/Mieze/RTL8111_driver_for_OS_X) | Open source macOS driver for the Realtek RTL8111 family NICs.
[RestrictEvents](https://github.com/acidanthera/RestrictEvents) | Blocks unwanted processes causing compatibility issues on different hardware and unlocking the support for certain features restricted to other hardware.
[SMCAMDProcessor](https://github.com/trulyspinach/SMCAMDProcessor) | Companion to AMDRyzenCPUPowerManagement.
[SMCBatteryManager](https://github.com/acidanthera/VirtualSMC) | Enables battery readings.
[SMCRadeonGPU](https://github.com/aluveitie/RadeonSensor) | Companion to RadeonSensor. Disable for NVIDIA GPUs.
[USBToolBox](https://github.com/USBToolBox/kext) | Useful USB ACPI renames and prerequisite for UTBMap
[UTBMap](https://github.com/USBToolBox/tool) | USB Map
[VirtualSMC](https://github.com/acidanthera/VirtualSMC) | Advanced Apple SMC emulator in the kernel. Requires Lilu for full functioning.
[VoodooPS2Controller](https://github.com/acidanthera/VoodooPS2) | Fixes keyboard.
[WhateverGreen](https://github.com/acidanthera/WhateverGreen) | Fixes AMD GPU.
  
## SSDTs Used
  
SSDT | Info
:---------|:---------
[SSDT-CPUR](/Extras/Decompiled%20ACPI%20Files/SSDT-CPUR.dsl) | Fixes CPU definitions.
[SSDT-EC](/Extras/Decompiled%20ACPI%20Files/SSDT-EC.dsl) | Adds a fake Embedded Controller device).
[SSDT-HPET](/Extras/Decompiled%20ACPI%20Files/SSDT-HPET.dsl) | Fixes IRQ conflicts.
[SSDT-PNLF](/Extras/Decompiled%20ACPI%20Files/SSDT-PNLF.dsl) | Fixes display backlight.
[SSDT-SBUS-MCHC](/Extras/Decompiled%20ACPI%20Files/SSDT-SBUS-MCHC.dsl) | Fixes AppleSMBus.
[SSDT-USBX](/Extras/Decompiled%20ACPI%20Files/SSDT-USBX.dsl) | Enables USB Power Management.
[SSDT-XOSI](/Extras/Decompiled%20ACPI%20Files/SSDT-XOSI.dsl) | Spoof macOS to Windows for some ACPI features.

## Credits

- [Dortania](https://dortania.github.io) for their awesome guides.
- [Apple](https://www.apple.com) for macOS.
- [Acidanthera](https://github.com/acidanthera) for OpenCore and most Kexts.
- [yusufklncc](https://github.com/yusufklncc) for README template.
- And anyone else that helped to develop and improve hackintoshing.
