Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco install -y git

git clone --recursive https://github.com/rpuhalovich/install_scripts.git

install_scripts\git\git_global.bat

choco install -y geforce-experience 7zip vlc foxitreader vscode steam discord spotify windirstat transmission zoom pandoc typora autohotkey hyper bitwarden astyle signal mailspring