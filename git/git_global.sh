git config --global user.email "reanpuhalovich@gmail.com"
git config --global user.name "rpuhalovich"

git config --global alias.s "status"
git config --global alias.b "branch"
git config --global alias.c "!sh -c 'git add -A && git commit -m \"$1\"' -"
git config --global alias.ch "checkout"
git config --global alias.m "merge"
git config --global alias.r "rebase --interactive"
git config --global alias.l "log --graph --oneline --decorate"
git config --global alias.bl "blame -w -L"
git config --global alias.subup "submodule update --init --recursive"
git config --global alias.clonerec "clone --recursive"
