## First Setup

You just got your new shiny GPD WIN 2 and you are wandering what are the first step you should go through.

Well let's see some of them!



### STEP 1: Bios Tweaking

Although previous GPD WIN 2 revisions (based on M3-7Y30) had an highly customizable Bios with a ton of guides on how to tweak it; GPD WIN 2 M3-8100Y is delivered with a completely locked bios and none of those guides apply to this revision.

Unfortunately, **at the moment of my writing, there are no mods or unlocked version of this Bios**.

So, this step can be skipped but I'll keep this paragraph for who wonders why their bios looks different from what's seen in the various guides online.



### STEP 2: Clean Windows Install

Some users on reddit and other sources reported that at least **few batches of GPD WIN 2 units were delivered with malwares** and/or malfunctioning Windows components. In my case, I couldn't use or reinstall Windows Defender and after some troubleshooting time, I fixed the issue reinstalling Windows.

Therefore, **a clean Windows installation is suggested**.

> **NOTE:**
>  No additional Windows Licence required. AFAIK, there is a license key stored at BIOS level and will be automatically detected by Windows during its installation.


To install Windows:

1. Download the `Windows 10 ISO` legally from [microsoft](https://www.microsoft.com/en-us/software-download/windows10).
   > **NOTE**:
   > **For a faster download; click on the link on a non-windows device** (e.g. an android phone) or if you know how to, simply use a different user agent from you browser.
   > On Windows, Microsoft forces you to use an intermediary downloader tool to get the ISO (spoiler: it. is. slow.).
   > On any other system, the ISO will be downloaded directly.

2. Make a bootable USB stick with the Windows 10 installation. Follow the instructions [here](https://www.windowscentral.com/how-create-windows-10-usb-bootable-media-uefi-support)

3. Inser the USB stick in the GPD WIN 2; Power it on and go through the Windows Installation wizard



### STEP 3: Get the necessary drivers

1. Run Windows Updates until there are no more updates and restart. Windows Update is able to fetch (almost) all the correct drivers for you.

2. Touch Screen Drivers: Install the [touchscreen drivers](/drivers/GW2-Driver-TouchScreen.zip?raw=true) separately; they will not be fetched by Windows update

3. Intel Video Drivers: Windows is able to install the latest drivers just fine. However, chances are you will get the new **Intel Graphic Command Center** that **may not allow you to set custom resolutions**.   If this is the case, follow [this guide](/wiki/Instal_Intel_Graphic_Control_Panel.md) to **install back** the old **Intel Graphic Control Panel**

