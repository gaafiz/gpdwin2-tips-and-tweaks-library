# Windows Initial Setup Script Project

[**Win10-Initial-Setup-Script**](https://github.com/Disassembler0/Win10-Initial-Setup-Script) it is the most gorgeous project I ever found on the "Windows Optimization" Topic.

It is an alive and **on-going project with a straordinary collection of up-to-date Windows tweaks**. So far, Tweaks have been tested and adapted whenever a new major version of Windows got released.

In the [README](https://github.com/Disassembler0/Win10-Initial-Setup-Script) of the project everything should be explained clearly and I warmly suggest you to have a read there.
However, I will guide you through the main "getting started" steps

> **IMPORTANT:**
> Be sure to read the ["**When Should I run the script?**"](#win10script-when) section before actually applying the tweaks



## <a name="win10script-getting-started"></a> Getting started

**Download the [latest release of the script](https://github.com/Disassembler0/Win10-Initial-Setup-Script/releases)** or the current on-going [master as a zip](https://github.com/Disassembler0/Win10-Initial-Setup-Script/archive/master.zip).

Unzip the archive in a folder (say `Win10Script` folder) and you will get these set of files:
* `Win10.ps1`: Contains the main wrapping logic of the the script. You don't need to edit or open this file at all
* `Win10.psm1`: Collection of tweaks with their implementations (mostly of them "simply" change registry values). You don't need to edit this file, but you can have a look to check tweaks implementations or (sometimes) explanatory comments.
* `Default.preset`: Contains a plain list of tweaks you want to activate. You WANT to modify this list to your own liking. In the average case, this is the only file you want to edit
* `Default.cmd`: Runnable file for the script. Nothing to change just run it as administrator when you are ready to apply the tweaks.

### **Important to know**:
* Each tweak has is own "counterpart" to **Restore the original situation/configuration** (e.g. if`DisableCortana` is the tweak, `EnableCortana` would be the restoring option).
* [Here is a very nice wiki](http://checkthebenchmarks.com/2019/09/11/win10-initial-setup-script/) that **describe the functionality of every tweak in the collection**, to help you deciding which ones you want to apply.

### How to customize and run the script - Easy way:
1. Backup the `Default.preset` file with another name; perhaps `Default_bkp.preset
2. Open the original `Default.preset` and un-comment (remove the hashtag) all the tweaks you want to apply and comment (add an hashtag) those you don't want.
3. If a Tweak is not clear. Check the relative comment in `Win10.psm1`, this [line by line wiki](http://checkthebenchmarks.com/2019/09/11/win10-initial-setup-script/) or simply google the tweak.
4. Once you finish custromizing your `Default.preset`, run `Defualt.cmd` as administrator to run the script.
5. Make the PC reboot and that's it



## Windows Initial Setup Script - BlackDragonBE additions

The github user **BlackDragonDE** - inspired by the original Windows Initial Setup Script Project - added additional tweaks tailored for GPD WIN/WIN2 systems. [**Here you can find his forked project**](https://github.com/BlackDragonBE/Win10-Initial-Setup-Script). Unfortunately is project is not anymore on-going but I've extracted his relevant tweaks that are still up-to date in [this library file (`BlackDragonBE.psm1`)](assets/Win10Script/BlackDragonBE.psm1).

### Automatic apps installation as a tweak

**One of BlackDragonBE tweaks, allows to run Ninite for installing or updating all your favorite apps at once**. Very useful on fresh Windows installations! Ninite is a software installer that install and update silently all your programs silently.

To do so: add the tweak `DoNiniteInstall` in your preset and create a `NiniteApps.txt` file [like this](assets/Win10Script/NiniteApps.txt?raw=true) to list all apps you want to install.


### <a name="bdtweaks-how-to-apply"></a> How to apply BlackDragonBE tweaks

If you want to make use of his additional tweaks, Follows these steps:
1. Go back the `Win10Script` folder you unzipped in the previous chapter
2. Move the new library file `BlackDragonBE.psm1` in that folder
3. Edit the `Defauult.preset` file and add the BlackDragonBE tweaks you likes (check their names in `BlackDragonBE.psm1`).
4. (Optional) create a `NiniteApps.txt` file, if you chose to apply the `DoNiniteInstall` tweak.
5. Edit `Default.cmd`:
	From this:
	```bash
    @powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0Win10.ps1" -include "%~dp0Win10.psm1" -preset "%~dpn0.preset"
    ```
    to this
	```bash
    @powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0Win10.ps1" -include "%~dp0Win10.psm1" -include  "%~dp0BlackDragonBE.psm1" -preset "%~dpn0.preset"

    ```



## Pre-Made Tweaks preset for the GPD WIN 2

[**Here is a ready-to-go GPD WIN 2 tweaks preset**](assets/GPD_WIN_2.preset) I made.

#### Goal of the pre-made preset:

* This preset can help those people - geeks and not - that don't want check and select each tweaks one by one.
* Provide a safe starting point even for those who wants to further customize a preset

#### Important to know

* The preset was done having in mind a GPD WIN 2 sytem (e.g. it removes fingerprint features given that the GPD WIN doesn't have a fingerprint sensor). I you want to apply the preset to another pc, be sure to tune the preset for that specific system.
* I made this preset staying on the "safe side" in most cases and thinking about what the avarage user would need. In fact, for me it is a bit "too safe" and I personally use a more e restricted version of this script. The tweaks marked with `**` are the ones that I use differently for myself
* I'm working on adding a comment for each tweak in case you want to further customize the preset.

### How to apply GPD WIN 2 pre-made preset

* Download and unzip the original **Win10-Initial-Setup-Script** as described [here](#win10script-getting-started)
* Include BlackDragonBE tweaks library as described [here](bdtweaks-how-to-apply)
* Download the [GPD WIN 2 preset](). Rename it in `Default.preset` and replace the original `Default.preset`
* Run `Default.cmd` as administrator


## <a name="win10script-when"></a> IMPORTANT: When Should I run the script?

The best is to **run the script on a fresh Windows installation after Windows Updates get all the missing drivers/updates**.

In addition, you may want to **run the script everytime you update to a new major version of Windows** (it happens circa every 6 months) because these kinds of versions may reset/force some Windows configurations to their default values.

