Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco install -y geforce-experience brave 7zip vlc git foxitreader vscode steam discord google-backup-and-sync 
choco install -y spotify windirstat transmission zoom pandoc typora autohotkey zotero hyper bitwarden micro astyle 
choco install -y signal blender mailspring
