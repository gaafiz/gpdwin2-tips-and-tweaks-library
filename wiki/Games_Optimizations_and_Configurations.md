# Games Optimizations and Configurations


## Low Spec experience

[Low Spec experience](https://ragnos1997.com/lowspecsexperience) is an app able to load apply different configurations for a targetd game.
* (old version of) [Low Spec Experience in action](https://youtu.be/IGfBM6FE9Js?t=505)
* New version of [Low Spec Experience in action with Bragon Ball Z:Kakarot + Instructions](https://www.youtube.com/watch?v=qgmTGMIruTY&list=PLE9Hoc7J8icDuqymKb7ZwMcVuppHY8mhJ&index=20). 36FPS to 60FPS
* [Catalog of supported Games](https://ragnos1997.com/optimization-catalog/)


## Boost DirectX 9 Games (and apps)

For getting **extra FPS from DirectX9** games, install and use [`HiAlgo BOOST`](http://www.hialgo.com/TechnologyBOOST.html) or [`HiAlgo SWITCH`](http://www.hialgo.com/TechnologySWITCH.html).

 * See [**HiAlgo SWITCH in action**](https://www.youtube.com/watch?v=SH124_5ypsc) on a low end pc
 * See [**HiAlgo BOOST in action**](https://www.youtube.com/watch?v=bZTY-KttJkY) with Skyrim

If you have problem downloading the 2 applications:
    - Download HiAlgo BOOST [from here](/software/HIALGO_BOOST_V5_0.exe?raw=true)
    - Download HiAlgo SWITCH [from here](/software/HIALGO_SWITCH_V2_0.exe?raw=true)

HiAlgo was originally suggested [here](https://gpdwin.fandom.com/wiki/General_Tips_for_Windows_Gaming_on_the_GPDWin) for the first GPD WIN.


## Steam Laucher Optimizations

### Start Steam in Offiline mode as default

1. Go to your Steam directory. Usually `C:\Program Files (x86)\Steam`
2. navigate to `config` directory
3. Make a backup copy of the `loginuser.vdf` file and then open it with notepad
4. Change `WantsOfflineMode` from `0` to `1`; then change `SkipOfflineModeWarning` from `0` to `1`
5. Save the file and **set it as read-only**
	5a. Right-click on the file and select `Properties`
    5b. Check the `Read-Only` attribute and click **OK**
6. Now steam will always start offline without any warning
7. If you want to revert the situation restored the backed-up version of the `loginuser.vdf` file

### Disable Steam Overlay

If you don't use the steam overlay, disable it to get back some resources on playing.
* Navigate to `Settings -> In-Game Settings`
* Uncheck `Enable Steam Community In Game`

## Disable Steam Broadcasting

If you don't use the steam broadcasting feature, disable it

> Steam Broadcasting allows you to watch your friends play their favorite games. You can also set up Broadcasting to allow others to watch you play.

* Navigate to `Settings -> Broadcasting`
* Disable `Broadcasting`