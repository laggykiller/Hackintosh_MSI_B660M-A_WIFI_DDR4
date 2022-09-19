# NOTICE FOR BIOS UPDATE

Newer BIOS (e.g. 7D43v17) cause boot to fail at early stage if SetupVirtualMap is set to false

Hence, please set Booter -> Quirks -> SetupVirtualMap to true

For more information, refer to this github issue page: https://github.com/laggykiller/Hackintosh_MSI_B660M-A_WIFI_DDR4/issues/1

# Introduction

This is a repository of Hackintosh EFI for MSI PRO B660M-A WIFI DDR4 (https://www.msi.com/Motherboard/PRO-B660M-A-WIFI-DDR4)

**The bluetooth chip AX201 currently works thanks to updates to IntelBluetoothFirmware. Learn more from this github issue page: https://github.com/OpenIntelWireless/IntelBluetoothFirmware/issues/369**

I do not have thunderbolt device, so I cannot test for it.

I am using Monterey. I have not tried to use Ventura on this setup

Other than above, everything should work.

Please report problems you encountered in issues. Feel free to send pull requests.

Please note that you are expected to make some modification to this EFI in order for it to work, which the important steps are described below.

A write up for this build is available in this reddit thread: https://www.reddit.com/r/hackintosh/comments/uhlm8f/monterey_with_msi_pro_b660ma_ddr4_i712700f_rx580/

# Sample configuration
- Motherboard: MSI PRO B660M-A WIFI DDR4
- CPU: i7-12700F
- GPU: RX580
- RAM: DDR4 16GB x 2 (3600MHz)
- SSD: AGI 1TB NVMe (AGI1T0GIMAI218)
- WIFI: Intel Wi-Fi 6 AX201 160MHz
- Ethernet: Realtek RTL8125BG
- Audio: Realtek ALC897 codec
- MacOS version: Monterey 12.3
- OpenCore version: 0.8.0

# Guide for using this repository
## 0. Familiarize yourself by reading other guides
- Dortania OpenCore Install Guide (Following Comet Lake): https://dortania.github.io/OpenCore-Install-Guide/
- Reddit post on 12th gen intel hackintosh: https://www.reddit.com/r/hackintosh/comments/sp1zgv/opencore_alder_lake_12thgen_intel_hackintosh/

## 1. BIOS configuration
- Disable Secure Boot
- You may disable CFG lock, so that you can set AppleXcpmCfgLock to False in config.plist

## 2. Create installation USB
- Create installation USB: https://dortania.github.io/OpenCore-Install-Guide/installer-guide/
- Copy-paste the 'EFI' folder from this repository into EFI partition of USB installation disk

## 3. Modify EFI
- Kexts and Kernel -> Add (https://dortania.github.io/OpenCore-Install-Guide/ktext.html)
  - This repository assume you are installing Monterey or above. If not, remove BluetoolFixup.kext
  - This repository assume that you are using intel wifi card. If not, replace AirportItlwm.kext, BluetoolFixup.kext, IntelBluetoothFirmware.kext and IntelBTPatcher.kext with suitable one.
  - Adding AGPMInjector.kext is recommended, which improves power management on graphics card. The kext is different from card to card, so please generate it by yourself.
  - Since the motherboard USB ports exceeds apple's 15 ports limit, USBMap.kext will disable one of the USB3.2 Gen1 port at the back panel (Blue port). If you want to customize USB mapping, you can replace UTBMap.kext with your own.
    - Remember to include both USBToolBox.kext and UTBMap.kext
    - Do not use USBInjectAll.kext. It cause boot to freeze.
    - Some reported that the UTBMap.kext provided is not working. You may try this UTBMap.kext mentioned in this issue: https://github.com/laggykiller/Hackintosh_MSI_B660M-A_WIFI_DDR4/issues/1
- PlatformInfo (https://dortania.github.io/OpenCore-Install-Guide/config.plist/coffee-lake.html#platforminfo)
  - PlatformInfo -> Generic -> MLB
  - PlatformInfo -> Generic -> ROM
  - PlatformInfo -> Generic -> SystemSerialNumber
  - PlatformInfo -> Generic -> SystemUUID
- 12th gen intel iGPU is not supported. Please disable iGPU and other incompatible eGPU (https://dortania.github.io/OpenCore-Install-Guide/extras/spoof.html)
- Other SSDT, kexts, configuration changes related to your configuration

## 4. Boot the USB, install and copy EFI to hard drive

## 5. Post-install
- You may set SecureBootModel to j160 after all installation has completed. It was set to Disabled intentionally, as setting this before installation completes can cause boot to fail.

# Reddit discussions
https://www.reddit.com/r/hackintosh/comments/ufcg8m/12th_gen_hackintosh_stuck_at_registered/

https://www.reddit.com/r/hackintosh/comments/uhlm8f/monterey_with_msi_pro_b660ma_ddr4_i712700f_rx580/

# Credits
- Special thanks to reddit user u/tasco11 for making it boot, debugging SSDT and USB mapping
- https://www.reddit.com/r/hackintosh/comments/sp1zgv/opencore_alder_lake_12thgen_intel_hackintosh/
- https://dortania.github.io/OpenCore-Install-Guide/
- https://heipg.cn/tutorial/b660m-install-macos.html
- Opencore and most kexts from acidanthera: https://github.com/acidanthera
- CPUTopologyRebuild from b00t0x: https://github.com/b00t0x/CpuTopologyRebuild
- OpenIntelWireless for intel wifi card kexts: https://github.com/OpenIntelWireless
- LucyRTL8125Ethernet from Mieze: https://github.com/Mieze/LucyRTL8125Ethernet
- CPUFriendDataProvider.kext from vit9696: https://github.com/dortania/bugtracker/issues/190
