ad_local := "C:\\Users\\Razer\\AppData\\Local"
ad_roam := "C:\\Users\\Razer\\AppData\\Roaming"
update-nvim path=ad_local:
    cp -r nvim/ "{{path}}"

update-alalcritty path=ad_roam:
    cp -r alacritty/ "{{path}}"

update-zellij path=ad_local:
    cp -r zellij/ "{{path}}"

update-vscode path=ad_roam:
    cp -r vscode/* -t "{{path}}\\Code"

pwsh_path := "C:\\Users\\Razer\\Documents\\PowerShell"
update-pwsh path=pwsh_path:
    cp powershell/Microsoft.Powershell_profile.ps1 "{{path}}\\Microsoft.Powershell_profile.ps1"
