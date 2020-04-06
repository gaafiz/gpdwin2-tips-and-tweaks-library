# TODO list and Notes

## Windows Optimization
* Shutup10
* SSD: https://www.reddit.com/r/gigabyte/comments/9of8wp/aero_15x_transcend_nvme_drive_write_speeds/
* Additional configuration tweaks:
    - Game bar -> Open with controller -> Disable
* Sound Control Panel -> Speakers -> Advanced -> Decrease Quality (+ disable audio enhancements)
* Sound Control Panel -> Mich -> Advanced -> Decrease Quality


## Graphic Optimizations
* From quality to performance
* [Change Display Resolution with a Tray Icon](https://www.reddit.com/r/gpdwin/comments/5qtqs8/a_little_list_of_custom_widescreen_resolutions/dd41c33/)
* [Intel modded drivers Tensor](https://imo32.weebly.com/)
* [Best Intel Driver Version](https://www.reddit.com/r/gpdwin/comments/bto93y/gpd_win_2_best_intel_driver/)


## Software
* [Low Spec Experience](https://ragnos1997.com/lowspecsexperience/): Auto-optimize your favorite games for maximum possible performance. [Video Guide](https://www.youtube.com/watch?v=IGfBM6FE9Js)
* [JetClean](http://www.bluesprig.com/jetclean.html): Pc cleaning
* [BES](http://mion.faireal.net/BES/): Gives CPU Priorities to the processes of your like
* [CPUCore](https://store.steampowered.com/app/384300/CPUCores__Maximize_Your_FPS/)


## Games and Software Configurations/Optimization
* Steam:
	* [Starting Steam in Offline as default](https://www.reddit.com/r/gpdwin/comments/6qxfnm/steam_wont_launch_offlineairplane_mode/dl1wpeh/)
	* Due to limited IO, disable downloads during play
	* Disabling the steam overlay. Settings -> In-Game Settings -> Uncheck “Enable Steam Community In Game”
	* disable broadcast: Settings->Broadcasting->Broadcasting disabled.
* [Game configurations Archive](https://www.youtube.com/playlist?list=PLcpsy4OhS9AnvZS_8_UMe0idXmssHMuF2)
* [Emulator Settings for All Platforms (LaunchBox)](https://forums.launchbox-app.com/topic/28762-emulator-settings-for-all-platforms/)
* Dolphin:
	* https://www.youtube.com/watch?v=_Q4juq-wM58
	* https://www.youtube.com/watch?v=XIbC4L7tiGs


## Misc
* Create ideal Battery profiles. Consider:
    * intel GPU power profile (between performance and battery)
    * Winwows power plan
    * TDP
* Enable 4GB of RAM for 32-bit applications:  https://ntcore.com/?page_id=371
* Remote PS4 on GPD: https://www.reddit.com/r/gpdwin/comments/c43cul/updated_guide_2019_for_gpd_win_win_2_playing_ps4s/?utm_medium=android_app&utm_source=share


## Questions:
* Does sleeping or hibernate create issues with GPD WIN 2?
* Does dptf (Dynamic Power and Thermal Framework) needs to be disabled for GPD WIN 2? 8100Y>
    * If so, for what reason?
    * How to do it from windows?

## System Monitoring & Benchmarking
* MSI afterburner
* Riva Tuner
* Battery Care
* HWInfo
* Heaven

## Notes
* Big notes file: https://docs.google.com/document/d/17dfO7ww7mCN0TcX3FpK4udR_c9y-3iNE45NCNMvtf6k/edit#


## Useful links
* GPD discord channel: https://discordapp.com/channels/243411108940087297/444283526645284876/609501028043456514


## Probably not relevant
- Intel HD Card full MHz: https://www.ntlite.com/community/index.php?threads/intel-r-hd-graphics-4600-tweak-always-full-mhz.1084/
    - Set gpu frequency easier to 848Mhz. Useful?
- [GeDoSaTo](https://web.archive.org/web/20170424124847/http://blog.metaclassofnil.com/?page_id=582) downsampling of resolution
    - https://www.reddit.com/r/pcmasterrace/comments/8127op/cant_install_gedosato_anymore/
    - Probably useless for improving performance having already HiAlgoBoost
- Increase VRAM. It shouldn't effect performance except for games that checks how much VRAM a GPU got. [ref](https://www.makeuseof.com/tag/video-ram-windows-10/)
    - Does not work with new Intel drivers
- Intel PHDGD Driver now: https://youtu.be/BZG50Nm5sOM?t=192
    - they don't work on the current intel GPU gen


## Forcing custom Resolutions for games

Force custom resolution in Black Flag and Need for Speed 2015 (tested, potentially any game)

1. Set a custom resolution in intel graphics settings (such as 544x960 as screen is flipped)
2. Download the appropriate files here: http://www.mediafire.com/file/glw2av3jhb25ald/
3. Copy the files to the directory of the game you want to run at custom resolution
4. Right click the start.bat file and select edit
5. Change the directory listed in the .bat to the directory of the game you are setting custom resolution for (in both places)
6. Change the .exe to match the game you are launching (eg change AC4FSP.exe to NFS16.exe)
7. Change the two resolutions values. The first resolution is your desired resolution. The second resolution is the resolution the game is currently set to.
8. Change your desktop resolution to the custom resolution you made in step 1.
9. Launch the start.bat

The game should launch in the original resolution at first and then switch over to your custom resolution. Then you can just create a shortcut to the bat, rename it, set an icon, and good to go. Just remember to switch your desktop to the custom resolution before launching the game.
