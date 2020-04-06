# Remove Unwanted Start-up Programs

Windows has different places where start-up programs can be defined. Let's see all these places.
If you have trouble follow the next steps, check [this video guide](https://youtu.be/mWHiP9K8fQ0?t=371)

### Remove Start-up Programs from Task manager

1. Press `CTRL+SHIFT+ESC` then click on `More Details` if you didn't already.
2. Navigate to the `Start-up` tab and disable all the progrmas you don't want to run at start-up

### Remove Start-up Programs from start-up folders

* For all users programs:
	1. Press `WINDOWS_KEY+R`
	2. Write `shell:common startup` and click **OK**
	3. Remove all the Programs shortcut in this folder that you don't want to run at the start-up
* For your current user programs:
	* Follow the same steps as per **all user programs** but write `shell:startup` instead of `shell:common startup`

### Remove Start-up Programs from registry

* For all users programs:
	1. Press `WINDOWS_KEY+R`
	2. Write `regedit` and click **OK**
	3. Navigate to `HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrrentVersion\Run`
	4. On the right Panel, delete all programs you don't want to run at start-up
* For your current user programs:
	* Follow the same steps as per **all user programs** but navigate to `HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrrentVersion\Run` instead

### Remove Start-up Programs from Task Scheduler

* Open the `Windows Menu` and search for `Task Scheduler` then click on the result.
* Disable all the `on-startup` and `on-windows-log-on` tasks that you don't want to run
* Disable also unwanted periodic taks (e.g. crash reports)