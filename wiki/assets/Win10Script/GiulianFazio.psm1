Function DoNiniteInstall {
    Write-Host "Downloading Ninite ..."
	
	$niniteAppsFile = $PSScriptRoot\NiniteApps.txt
	
	if (-not Test-Path niniteAppsFile) {
		Write-Host "NiniteApps.txt file not found in the script folder. Skipping Ninite installation step"
	} else {
		$niniteapps = @()
		$ofs = '-'

		Get-Content niniteAppsFile -ErrorAction Stop | ForEach-Object {
			$_ = $_.Trim()
			if( (-not [string]::IsNullOrEmpty($_)) -and (-not $_.StartsWith('#')))
			{
				$niniteapps += $_
			}
		}
		
		if ([string]::IsNullOrEmpty($niniteapps)) {
			Write-Host "No app selected for installation in NiniteApps.txt file. Skipping Ninite installation step"
		} else {
			$niniteurl = "https://ninite.com/" + $niniteapps + "/ninite.exe"
			$output = "C:\Ninite.exe"

			Invoke-WebRequest $niniteurl -OutFile $output
			& $output

			Write-Host
			Read-Host "Press ENTER when all applications have been installed by Ninite"
		}
	}    
}

Function InstallShutup10 {
    Write-Host "Installing O&O Shutup10 in C:\PortablePrograms..."
	
    $shutup10Url = "https://dl5.oo-software.com/files/ooshutup10/OOSU10.exe"
	$installFolder = "C:\PortablePrograms\Shutup10"
    $installLocation = "$installFolder\Shutup10.exe"
	$ShortcutLocation = "$Home\Desktop\Shutup10.lnk"  # Shortcut on desktop	

	# Download
	if (-not Test-Path $installFolder) {
		New-Item -Path $installFolder -ItemType Directory -Force | Out-Null
	}
    Invoke-WebRequest $shutup10Url -OutFile $installLocation

	# Create Shortcut
    $WScriptShell = New-Object -ComObject WScript.Shell
    $Shortcut = $WScriptShell.CreateShortcut($installLocation)
    $Shortcut.TargetPath = $SourceFileLocation
    $Shortcut.Save()
}

Function UninstallShutup10 {
	Write-Host "Uninstalling O&O Shutup10..."
	
	$installFolder = "C:\PortablePrograms\Shutup10"
	$ShortcutLocation = "$Home\Desktop\Shutup10.lnk"
	
	if (Test-Path $installFolder) {
		Remove-Item -Path $installFolder -Recurse -ErrorAction SilentlyContinue
	}
	
	if (Test-Path $ShortcutLocation) {
		Remove-Item -Path $ShortcutLocation -Recurse -ErrorAction SilentlyContinue
	}
}

Function ApplyShutupProfile {
	Write-Host "Applying Custom Shutup10 profile (ooshutup10.cfg)..."
	
	$installFolder = "C:\PortablePrograms\Shutup10"
	$installLocation = "$installFolder\Shutup10.exe"
	$profileLocation = "$PSScriptRoot\ooshutup10.cfg"
	
	if (-not Test-Path profileLocation) {
		Write-Host "No profile fil (ooshutup10.cfg) found in the script folder..."
	} else {
		& $installLocation $profileLocation /quiet
	}
}

Function RunWindows10Debloater {
	Write-Host "Running Windows10Debloater..."
	
	if (-not Test-Path "$PSScriptRoot\Windows10DebloaterGUI.ps1") {
		Write-Host "Windows10Debloater not found locally. Downloading it..."
		$DebloaterGuiLink = "https://raw.githubusercontent.com/Sycnex/Windows10Debloater/11d50e84bab2f85671eb6ded2d97cf3a05c7551c/Windows10DebloaterGUI.ps1"
	}
	
	& "$PSScriptRoot\Windows10DebloaterGUI.ps1"
	
	Write-Host
	Read-Host "Press ENTER when you finish debloating with Windows10Debloater"
}