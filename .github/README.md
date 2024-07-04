# Nirb's V24 Backup
Backup of Klipper config of my
Voron 2.4 350mm 

discord: nirb_agga

## Features and Mods

### Current Features/Mods
- [Voron TAP](https://github.com/VoronDesign/Voron-Tap)
- [Canbus - EBB](https://github.com/bigtreetech/EBB)
- [Git backup](https://github.com/th33xitus/kiauh/wiki/How-to-autocommit-config-changes-to-github%3F) 
- [Nozzle Scrubber](https://github.com/tronfu/Voron-Mods/tree/main/Servo_Nozzle_Brush)
- [Input Shaping and Resonance](https://github.com/Frix-x/klippain-shaketune)
- [Stealthburner with Clockwork 2](https://vorondesign.com/voron_stealthburner)
- [Phaetus Dragon UHF](https://www.phaetus.com/products/dragon-hotend-%C2%AE-uhf)
- [Adaptive Bed Mesh](https://www.klipper3d.org/Bed_Mesh.html#adaptive-meshes)  
- [Spoolman](https://github.com/Donkie/Spoolman) with [moonraker's spoolman integration](https://moonraker.readthedocs.io/en/latest/configuration/#spoolman)
- [X Handle]()
- [Logitech Cam Mount]()
- [Voron Rollback]()
- [Chamber Thermistor Mount]()
- [Nevermore V5 Duo]()
- [TFT50 Display Mount]() using this [45 Degree Mount]()
- [LED Effects]()
- [Disco Led]()
- [Z-Chain Relocate]()

### Planned Features/Mods
- [GE5C](https://github.com/VoronDesign/VoronUsers/tree/master/printer_mods/hartk1213/Voron2.4_GE5C)
- [WLED](https://kno.wled.ge/) macros making use of [moonraker wled component](https://moonraker.readthedocs.io/en/latest/configuration/#wled)
- [Probe Accuracy Tests](https://github.com/sporkus/probe_accuracy_tests) - have to be run from command line
- [Klipper Estimator](https://github.com/Annex-Engineering/klipper_estimator)
- [Voron Klipper Extensions](https://github.com/voidtrance/voron-klipper-extensions)
- [ERCFv2](https://github.com/Enraged-Rabbit-Community/ERCF_v2)
- [ERCF-Software "Happy Hare"](https://github.com/moggieuk/Happy-Hare)
- [Pins Mod]()
- [The Filter]()
- [Nevermore Stealthmax]()
- [BFI]()
- [BZI]()
### Previous Features/Mods

## Links

### Main mod repos
- [Voron User Mods](https://github.com/VoronDesign/VoronUsers/tree/master/printer_mods)  
- [https://voronregistry.com/mods](https://voronregistry.com/mods)  
- [https://vorondesign.com/](https://vorondesign.com/)  

### References/Documentaion
- [Klipper](https://www.klipper3d.org/)
- [KlipperScreen](https://klipperscreen.readthedocs.io/en/latest/)
- [Moonraker](https://moonraker.readthedocs.io/en/latest/)
- [Mainsail](https://docs.mainsail.xyz/)
- [Esoterical CanBus Guide](https://canbus.esoterical.online/Getting_Started.html)
- [Voron Design](https://docs.vorondesign.com/)

### ERCF
- [Mods including Quiver and Top Handle extrusion mount](https://github.com/SkiBikePrint/ERCF_Mods)
- [Upsidedown buffer array and other mods](https://github.com/geoffrey-young/3D-Printing/tree/main/models/voron/ercf)
- [Metal Buffer](https://github.com/sloscotty/Metal-Buffer)
- [Top gimbal mount and other mods](https://github.com/DeBau/VoronMods)

## Other klipper backups/macros I've found useful
- [https://github.com/AndrewEllis93/v2.247_backup_klipper_config](https://github.com/AndrewEllis93/v2.247_backup_klipper_config)
- [https://github.com/pushc6/VoronConfig](https://github.com/pushc6/VoronConfig)
- [https://github.com/kageurufu/3dp-voron2/tree/master/printer](https://github.com/kageurufu/3dp-voron2/tree/master/printer)
- [https://github.com/wile-e1/klipper_config](https://github.com/wile-e1/klipper_config)
- [https://github.com/th33xitus/klipper_config](https://github.com/th33xitus/klipper_config)
- [https://github.com/jktightwad/Klipper24Config](https://github.com/jktightwad/Klipper24Config)
- [https://github.com/mjoconr/Voron2.4-Config](https://github.com/mjoconr/Voron2.4-Config)
- [https://github.com/zellneralex/klipper_config](https://github.com/zellneralex/klipper_config)
- [https://github.com/Frix-x/klippain](https://github.com/Frix-x/klippain)
- [https://github.com/richardjm/voronpi-klipper-backup](https://github.com/richardjm/voronpi-klipper-backup) 
- [https://github.com/rkolbi/voron2.4](https://github.com/rkolbi/voron2.4)
- [https://github.com/3DPrintDemon/Demon_Klipper_Essentials_Unified](https://github.com/3DPrintDemon/Demon_Klipper_Essentials_Unified)
- [https://github.com/Mordenkainen/Voron24_Backup](https://github.com/Mordenkainen/Voron24_Backup)
- [https://github.com/jschuh/klipper-macros](https://github.com/jschuh/klipper-macros)
- [EricZimmerman repos](https://github.com/EricZimmerman?tab=repositories)
- [Ellis' Print Tuning Guide](https://ellis3dp.com/Print-Tuning-Guide/)
- [hartk1213 repos](https://github.com/hartk1213)
- [https://github.com/Frix-x/klippain](https://github.com/Frix-x/klippain)

## Pi CM4 Configs

/etc/network/interfaces.d/can0
```
allow-hotplug can0
iface can0 can static
    bitrate 1000000
    up ifconfig $IFACE txqueuelen 1024
    pre-up ip link set can0 type can bitrate 1000000
    pre-up ip link set can0 txqueuelen 1024
```

/boot/firmware/config.txt
```
# For more options and information see
# http://rptl.io/configtxt
# Some settings may impact device functionality. See link above for details
#oscillator=8000000
#tmp wifi off
dtoverlay=disable-wifi
# Uncomment some or all of these to enable the optional hardware interfaces
#dtparam=i2c_arm=on
#dtparam=i2s=on
dtparam=spi=on
# Enable USB
#dtoverlay=dwc2,dr_mode=host
# Enable audio (loads snd_bcm2835)
#dtparam=audio=on

# Additional overlays and parameters are documented
# /boot/firmware/overlays/README

# Automatically load overlays for detected cameras
camera_auto_detect=1

# Automatically load overlays for detected DSI displays
#display_auto_detect=1

# Automatically load initramfs files, if found
auto_initramfs=1

# Enable DRM VC4 V3D driver
dtoverlay=vc4-fkms-v3d
#max_framebuffers=2

# Don't have the firmware create an initial video= setting in cmdline.txt.
# Use the kernel's default instead.
disable_fw_kms_setup=1

# Run in 64-bit mode
arm_64bit=1

# Disable compensation for displays with overscan
disable_overscan=1

# Run as fast as firmware / board allows
arm_boost=1

[cm4]
# Enable host mode on the 2711 built-in XHCI USB controller.
# This line should be removed if the legacy DWC2 controller is required
# (e.g. for USB device mode) or if USB support is not required.
otg_mode=1

[all]

```

