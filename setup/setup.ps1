$Packages = @{
	# Work
	"Microsoft.VisualStudioCode" = "Visual Studio Code";
	"Microsoft.VisualStudio.$(Get-Date -Format yyyy).Professional" = "Visual Studio $(Get-Date -Format yyyy)";
	"Microsoft.WindowsTerminal" = "Windows Terminal";
	"Microsoft.Teams" = "Microsoft Teams";
	"Jetbrains.Toolbox" = "Jetbrains Toolbox";
	"Git.Git" = "Git";
	"Python.Python.3.11" = "Python 3.11";
	# Browsers
	"Mozilla.Firefox" = "Firefox";
	"eloston.ungoogled-chromium" = "Ungoogled Chromium";
	# Personal
	"Discord.Discord" = "Discord";
	"Joplin.Joplin" = "Joplin";
	"qBittorrent.qBittorrent" = "qBitTorrent";
	"KeePassXCTeam.KeePassXC" = "KeePassXC";
	"Valve.Steam" = "Steam";
	"VideoLAN.VLC" = "VLC Media Player";
	"Microsoft.Powertoys" = "Powertoys";
	"7zip.7zip" = "7-Zip";
	"WinDirStat.WinDirStat" = "WinDirStat";
}


foreach($Package in $Packages.Keys){
	Write-Host "Installing:" $Packages[$Package]
	winget install $Package
}
