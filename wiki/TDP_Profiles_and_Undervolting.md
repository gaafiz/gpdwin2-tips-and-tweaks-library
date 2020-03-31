## TDP profiles and Undervolting

**TDP profiles and Undervolting** are fundamental step **for** fine **tuning performance, battery life, and heating** of th GPD WIN 2.

### Intel XTU

`Intel XTU (Extreme Tuning Utility)`is the core software  that will allow us **to play with TPD profiles and Undervolt options**.

- [Download the latest version from intel download center](https://downloadcenter.intel.com/download/24075/Intel-Extreme-Tuning-Utility-Intel-XTU) (new version comes without a command line interface)
- Or download an **earlier version that supports commmand line operations** if you wish to use `GPDWin2XTU` or automated `.bat` scripts.
  You can find [the suggested Intel XTU version (6.4.1.25) in the GPDWin2XTU repo](https://github.com/BlackDragonBE/GPDWin2XTUManager/blob/master/XTU_Installer/XTU-Setup-6.4.1.25.exe?raw=true)


### TDP profiles

The GPD WIN 2 can regulate its performace - and consequentially the battery draining - on the CPU & GPU side by limiting the maximum TDP (Maximum Wattage) "usable" by the pair CPU + GPU.
Indirectly, the TDP used, will determine the maximum frequency of the CPU and the GPU.

> **NOTE**
> Setting a limit of 7W for example, will not allow us to decide that 2W goes for the CPU and 5W for the GPU. It will be automatically handled

What I need to know:

* Youn can set **Turbo Boost Power Max** (Base TDP Limit) and **Turbo Boost Short Power Max** (Spike TDP Limit). the 1st one is the base limit for the performances, the 2nd is a higher limit enabled for a few second from time to time to fight a temporary high load on the machine.

* If you want to avoid this TDP spikes, you can set **Turbo Boost Power Max** and **Turbo Boost Short Power Max** to the same value.

* The **maximum TDP phisically usable** by the GPD WIN 2 8100Y **is 15W.**. Setting a **Power limit greater than 15W will have no effect**. Often, the GPD WIN 2 will not reach its 15W limit because will hit first the CPU/GPU max frequency limit. Undervolting, for example, lowers the necessary power to reach the max frequency limit and you GPD WIN 2 hardly will use more than 12/13W.

* Different limits should be set for game/app basis, to optimize the battery life when the load is low and push the GPD WIN 2 performances when the load is high.

- How to set TDP/Power limits:
	0. Open Intel XTU and Navigate to `Advanced Tuning -> All Controls`.
	1. Go to the slides **Turbo Boost Power Max** and **Turbo Boost Short Power Max** and set the desirable values; then click on `Apply`
	![](assets/Intel_XTU-Power_Limits.png)


# WORK IN PROGRESS



