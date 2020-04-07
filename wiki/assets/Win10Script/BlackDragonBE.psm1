##########
# Win 10 / Server 2016 / Server 2019 Initial Setup Script - GPD WIN Tweak library
# Original Author: BlackDragonBE
# Source: https://github.com/BlackDragonBE/Win10-Initial-Setup-Script
#
# Editor: Giulian Fazio
# Edit Description: All the credits go to BlackDragonBE; I've just made a re-organized copy-paste
##########


##########
#region BlackDragonBE Tweaks
##########

Function DisableExtraServices {
	Write-Host "Disabling extra services (BlackDragonBE)..."

    $services = @(
        "diagnosticshub.standardcollector.service"	# Microsoft (R) Diagnostics Hub Standard Collector Service
        "MapsBroker"								# Downloaded Maps Manager
        "NetTcpPortSharing"                     	# Net.Tcp Port Sharing Service
        "TrkWks"                                   	# Distributed Link Tracking Client
        "WbioSrvc"                               	# Windows Biometric Service
        "AppVClient"
        "RemoteRegistry"
        "CDPSvc"
        "shpamsvc"
        "SCardSvr"
        "UevAgentService"
        "PeerDistSvc"
        "HvHost"
        "vmickvpexchange"
        "vmicguestinterface"
        "vmicshutdown"
        "vmicheartbeat"
        "vmicvmsession"
        "vmicrdv"
        "vmictimesync"
        "vmicvss"
        "SharedAccess"
        "SmsRouter"
        "CscService"
        "SEMgrSvc"
        "PhoneSvc"
        "RpcLocator"
        "RetailDemo"
        "SensorDataService"
        "SensrSvc"
        "SensorService"
        "ScDeviceEnum"
        "SCPolicySvc"
        "SNMPTRAP"
        "FrameServer"
        "wisvc"
        "icssvc"
        "WwanSvc"
    )

    foreach ($service in $services) {
        if (Get-Service $service -ErrorAction SilentlyContinue)
        {
            Write-Host "Stopping and disabling $service"
            Stop-Service -Name $service
            Get-Service -Name $service | Set-Service -StartupType Disabled
        } else {
            Write-Host "Skipping $service (does not exist)"
        }
    }
}


# Delete Temp Files
Function DeleteTempFiles {
    Write-Host "Cleaning up temporary files..."
    $tempfolders = @("C:\Windows\Temp\*", "C:\Windows\Prefetch\*", "C:\Documents and Settings\*\Local Settings\temp\*", "C:\Users\*\Appdata\Local\Temp\*")
    Remove-Item $tempfolders -force -recurse 2>&1 | Out-Null
}

# Clean WinSXS folder (WARNING: this takes a while!)
Function CleanWinSXS {
    Write-Host "Cleaning WinSXS folder, this may take a long time. You can stop the cleaning mid-progress by pressing CTRL+C."
    Dism.exe /online /Cleanup-Image /StartComponentCleanup
}

# Remove startup delay (use with SSD)
Function DisableStartupDelay {
    Write-Host "Removing startup delay..."
	if(!(Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize")) {
		New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" -Force | Out-Null
	}
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" -Name "StartupDelayInMSec" -Type DWord -Value 0
}

# Enable startup delay
Function EnableStartupDelay {
    Write-Host "Enabling startup delay..."
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" -Name StartupDelayInMSec 
}


# Disable Modern Standby aka Connected Standby (CSEnabled)
Function DisableConnectedStandby {
    Write-Host "Disabling Connected Standby..."
    Set-ItemProperty -Path "HKLM:\SYSTEM\\CurrentControlSet\Control\Power" -Name "CSEnabled" -Type DWord -Value 0
}

# Enable Modern Standby aka Connected Standby (CSEnabled)
Function EnableConnectedStandby {
    Write-Host "Enabling Connected Standby..."
    Set-ItemProperty -Path "HKLM:\SYSTEM\\CurrentControlSet\Control\Power" -Name "CSEnabled" -Type DWord -Value 1
}

# Disables several unnecessary components
Function RemoveUnneededComponents {
    $components = @(
    'MediaPlayback',
    'WCF-Services45',
    'MSRDC-Infrastructure',
    'Internet-Explorer-Optional-amd64'
    )

    foreach ($component in $components) {
        Write-Host "Removing component: $component"
        disable-windowsoptionalfeature -online -featureName $component -NoRestart 
    }
}

# Extra strict service disabling to squeeze out the most RAM & CPU out of the Win
Function DisableGPDWinServices {
	Write-Host "Disabling extra services (GPD Win)..."

    $services = @(
        #"Spooler"                                   # Print Spooler
		"TabletInputService" 						# Touch Keyboard & Handwriting Panel Service: fixes RetroArch crashes
		"TabletInputService" 						# Touch Keyboard & Handwriting Panel Service: fixes RetroArch crashes
    )

    foreach ($service in $services) {
        if (Get-Service $service -ErrorAction SilentlyContinue)
        {
            Write-Host "Stopping and disabling $service"
            Stop-Service -Name $service
            Get-Service -Name $service | Set-Service -StartupType Disabled
        } else {
            Write-Host "Skipping $service (does not exist)"
        }
    }
}

##########
#endregion BlackDragonBE Tweaks
##########

