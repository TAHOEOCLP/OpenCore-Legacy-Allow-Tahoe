# OpenCore-Legacy-Tahoe_Root_Patcher
[![CI - Build wxPython](https://github.com/chris1111/OpenCore-Legacy-Tahoe_Patchset/actions/workflows/build-app-wxpython.yml/badge.svg)](https://github.com/chris1111/OpenCore-Legacy-Tahoe_Patchset/actions/workflows/build-app-wxpython.yml)

<div align="left">
<img src="docs/images/OC-Patcher.png" alt="OpenCore Patcher Logo" width="256" />
<h3>this is a Package for fixing (Broadcom Wifi/Bluetooth) and AppleHDA in macOS Tahoe 26</h3>
<h4>Important: Do not attempt to solve (Tahoe Intel Graphics or Kepler problems) with this program; it will not work!</h4>
<h4>While waiting for the official version of OCLP 3.0.0, [lzhoang2801] managed to get Broadcom Wi-Fi working in Tahoe 26. I take no oh hi guys i am the reddit repositery that i created the running macos tahoe on a unsupported mac: https://www.reddit.com/r/OpenCoreLegacyPatcher/comments/1pfqwuw/macbookpro92_13_inch_2012_running_macos_tahoe/ credit for the patch he provided.</h4> 
</div>

 -----------------------------------------------------------------------------------------------------------
 This is a Fork of (lzhoang2801 and chris1111/OpenCore-Legacy-Patcher)

A Python-based project revolving around [Acidanthera's OpenCorePkg](https://github.com/acidanthera/OpenCorePkg) and [Lilu](https://github.com/acidanthera/Lilu) for both running and unlocking features in macOS on supported and unsupported Macs.

Our project's main goal is to breathe new life into Macs no longer supported by Apple.

#### Configuration minimal: ➤ [Enable Wifi on Tahoe 26](./Configuration.md)

#### Running from source: To run the project from source, see here: ➤ [Build and run from source](./Build.md)

#### Download ➥ Release 3.0.0: [OpenCore-Legacy-Tahoe-Patchset](https://github.com/chris1111/OpenCore-Legacy-Tahoe_Patchset/releases/tag/V-3.0.0)

#### Download ➥ From Actions Build: [Artifacts](https://github.com/chris1111/OpenCore-Legacy-Tahoe_Patchset/actions)

----------


## Credits

* [Acidanthera](https://github.com/Acidanthera)
  * OpenCorePkg, as well as many of the core kexts and tools
* [DhinakG](https://github.com/DhinakG)
  * Main co-author
* [Khronokernel](https://github.com/Khronokernel)
  * Main co-author
* [Ausdauersportler](https://github.com/Ausdauersportler)
  * iMacs Metal GPUs Upgrade Patch set and documentation
  * Great amounts of help with debugging, and code suggestions
* [vit9696](https://github.com/vit9696)
  * Endless amount of help troubleshooting, determining fixes and writing patches
* [EduCovas](https://github.com/covasedu)
  * [non-Metal patch set](https://github.com/moraea/non-metal-frameworks) for nVidia Tesla/Fermi/Maxwell/Pascal, AMD TeraScale 1/2, and Intel Core 1st/2nd Generation GPUs
  * [3802 Metal patch set](https://github.com/moraea/misc-patches/tree/main/3802-Metal-15) and [MetallibSupportPkg](https://github.com/dortania/MetallibSupportPkg) for nVidia Kepler and Intel Core 3rd/4th Generation GPUs
  * Metal bundle patches and shims for [nVidia Kepler](https://github.com/moraea/misc-patches/tree/main/Kepler%2013%2B), [AMD GCN 1 - 4](https://github.com/moraea/misc-patches/tree/main/GCN%2013%2B), and [AMD GCN 5 (Vega)](https://github.com/moraea/misc-patches/tree/main/vega%2013%2B)
  * [IOSurface offset patches](https://github.com/moraea/misc-patches/tree/main/Sonoma%2014.4%20IOSurface) for nVidia Kepler, AMD GCN 1 - 5, and Intel Core 3rd - 6th Generation GPUs
  * [legacy Wi-Fi patch set](https://github.com/moraea/unsupported-wifi-patches) restores functionality for Wi-Fi cards in all 2007 - 2017 models
  * [T1 patch set](https://github.com/moraea/misc-patches/tree/main/T1-Patch) restores Touch ID, Apple Pay, and other secure functionality in 2016 - 2017 models
  * AppleGVA downgrade for accelerated video decoding on 2012 - 2016 models
  * OpenCL and OpenGL downgrade for AMD GCN
  * [USB 1 patch](https://github.com/moraea/misc-patches/tree/main/IOUSBHostFamily-14.4)
* [ASentientHedgehog](https://github.com/moosethegoose2213)
  * [non-Metal patch set](https://github.com/moraea/non-metal-frameworks) for nVidia Tesla/Fermi/Maxwell/Pascal, AMD TeraScale 1/2, and Intel Core 1st/2nd Generation GPUs
* [ASentientBot](https://github.com/ASentientBot)
  * [non-Metal patch set](https://github.com/moraea/non-metal-frameworks) for nVidia Tesla/Fermi/Maxwell/Pascal, AMD TeraScale 1/2, and Intel Core 1st/2nd Generation GPUs
  * [Metal bundle interposer](https://github.com/moraea/misc-patches/tree/main/sequoia%2031001%20interposer) for AMD GCN 1 - 5 and Intel Core 5th/6th Generation GPUs
  * [dsce](https://github.com/moraea/dsce) and [shared code](https://github.com/moraea/moraea-common) used by some other patches
* [cdf](https://github.com/cdf)
  * Mac Pro on OpenCore Patch set and documentation
  * [Innie](https://github.com/cdf/Innie) and [NightShiftEnabler](https://github.com/cdf/NightShiftEnabler)
* [Syncretic](https://forums.macrumors.com/members/syncretic.1173816/)
  * [AAAMouSSE](https://forums.macrumors.com/threads/mp3-1-others-sse-4-2-emulation-to-enable-amd-metal-driver.2206682/), [telemetrap](https://forums.macrumors.com/threads/mp3-1-others-sse-4-2-emulation-to-enable-amd-metal-driver.2206682/post-28447707) and [SurPlus](https://github.com/reenigneorcim/SurPlus)
* [dosdude1](https://github.com/dosdude1)
  * Main author of the [original GUI](https://github.com/dortania/OCLP-GUI)
  * Development of previous patchers, laying out much of what needs to be patched
* [parrotgeek1](https://github.com/parrotgeek1)
  * [VMM Patch Set](https://github.com/dortania/OpenCore-Legacy-Patcher/blob/4a8f61a01da72b38a4b2250386cc4b497a31a839/payloads/Config/config.plist#L1222-L1281)
* [BarryKN](https://github.com/BarryKN)
  * Development of previous patchers, laying out much of what needs to be patched
* [mario_bros_tech](https://github.com/mariobrostech) and the rest of the Unsupported Mac Discord
  * Catalyst that started OpenCore Legacy Patcher
* [arter97](https://github.com/arter97/)
  * [SimpleMSR](https://github.com/arter97/SimpleMSR/) to disable firmware throttling in Nehalem+ MacBooks without batteries
* [Mr.Macintosh](https://mrmacintosh.com)
  * Endless hours helping architect and troubleshoot many portions of the project
* [flagers](https://github.com/flagersgit)
  * Aid with Nvidia Web Driver research and development
  * [non-Metal patch set](https://github.com/moraea/non-metal-frameworks) for nVidia Tesla/Fermi/Maxwell/Pascal, AMD TeraScale 1/2, and Intel Core 1st/2nd Generation GPUs
  * [Metal bundle interposer](https://github.com/moraea/misc-patches/tree/main/sequoia%2031001%20interposer) for AMD GCN 1 - 5 and Intel Core 5th/6th Generation GPUs
  * LegacyRVPL, SnapshotIsKill, etc. to aid in rapid testing and development
* [joevt](https://github.com/joevt)
  * [FixPCIeLinkrate](https://github.com/joevt/joevtApps)
* [Jazzzny](https://github.com/Jazzzny)
  * Research and various contributions to the project
  * UEFI Legacy XHCI research and development
  * NVIDIA OpenCL research and development
  * `MacBook5,2` research and development
    * LegacyKeyboardInjector
  * Pre-Ivy Bridge Aquantia Ethernet Patch
  * Non-Metal Photo Booth Patch for Monterey+
  * GUI and Backend Development
    * Updater UI
    * macOS Downloader UI
    * Downloader UI
    * USB Top Case probing
    * Developer root patching
  * Vaulting implementation
  * macOS 15 3802 Helios Research
  * UEFI bootx64.efi research
  * universal2 build research
  * Various documentation contributions
* Amazing users who've graciously donate hardware:
  * [JohnD](https://forums.macrumors.com/members/johnd.53633/) - 2013 Mac Pro
  * [SpiGAndromeda](https://github.com/SpiGAndromeda) - AMD Vega 64
  * [turbomacs](https://github.com/turbomacs) - 2014 5k iMac
  * [vinaypundith](https://forums.macrumors.com/members/vinaypundith.1212357/) - MacBook7,1
   * [ThatStella7922](https://github.com/ThatStella7922) - 2017 13" MacBook Pro (A1708)
  * zephar - 2008 Mac Pro
  * jazo97 - 2011 15" MacBook Pro
  * And others (reach out if we forgot you!)
* MacRumors and Unsupported Mac Communities
  * Endless testing and reporting issues
* Apple
  * for macOS and many of the kexts, frameworks and other binaries we reimplemented into newer OSes
