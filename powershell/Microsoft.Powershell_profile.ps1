Set-PSReadLineOption -EditMode Emacs
(Get-PSProvider FileSystem).Home = 'D:\'
Set-Variable -Name HOME -Value 'D:\' -Force
# Stop the stupid Microsoft store pop-up
Set-Alias 'python' 'python3.12'
Set-Alias 'python3' 'python3.12'
Set-Alias more less # less is more
Set-Alias godot 'D:\Godot\Godot_v4.7.2-stable_win64.exe' # for godot stuff
echo "Time to be a haxor"
