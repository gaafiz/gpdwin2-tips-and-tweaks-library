# Intel Modded Graphics Drivers - Experimental

I've applied the drivers changes used by [iGPU AutoMod](https://github.com/BenNottelling/iGPU-AutoMod) to the [latest Intel driver out now (igfx_win10_100.7985)](https://downloadcenter.intel.com/download/29465/Intel-Graphics-Windows-10-DCH-Drivers?product=80939).
I saw some performance improvements (around 90 more point in the heaven benckmark depending on the TDP tested) but they may be accidental or influenced by other factors and that's why of the `Experimental` label.

> **IMPORTANT:** If you see any improvements with these drivers, plese let me a know

#### How to apply

There are some strings replacements to be applied in 2 `.inf` files of the newest intel driver. Currently, I don't have a up-to-date script to apply those changes but I'll provide you the `.inf` files with the changes applied.

1. Download these [**Intel Graphics Drivers (igfx_win10_100.7985)**](https://downloadmirror.intel.com/29465/a08/igfx_win10_100.7985.zip) as a zip and extract them in a folder.
2. Download these [modded `.inf` files](/drivers/modded-inf_intel-graphics-igfx_win10_100.7985.zip).
3. Copy the modded `.inf` files (`iigd_dch.inf` and `cui_dch.inf`) in `igfx_win10_100.798 -> Graphics`
4. Modded drivers will not be trusted by Windows, so **you need to disable the `driver signatures enforcement`** feature. See how [here](https://windowsreport.com/driver-signature-enforcement-windows-10/)
5. Run the `igxpin.exe` as normal
6. After the installation, the GPU will be listed as `Intel UHD 617`

#### What Changes are applied

The same as per [here](https://github.com/BenNottelling/iGPU-AutoMod/blob/master/automod.ps1) but applied manually.

- `iigd_dch.inf`:
	- `MaximumDeviceMemoryConfiguration` from 512 to 1024
	- `ForcePLLDisableEnableForFreqChange` enabled
	- `Display1_PipeOptimizationEnable` enabled
	- `AdaptiveVsyncEnable` disabled
	- `Disable_OverlayDSQualityEnhancement` enabled
	- device ID string changed from `Intel UHD Graphics 615` to `Intel UHD Graphics 617`
- `cui_dch.inf`:
	- `ShowOptimalBalloon` disabled
	- `ShowPromotions` disabled