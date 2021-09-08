# Git Cheat Sheet

### Add all files (including non tracked to commit).

`git commit -Am <message>`

### Add files or edits to last commit without changing message. Only works if you haven't already pushed these to remote.

`git commit --amend --no-edit`

### Revert to previous commit.

`git revert <commit hash>`

### Git Stash Stuff

#### Stash current stuff

`git stash`

Then to retrieve most recent stash.

`git stash pop`

#### Stash current stuff with name

`git stash <name of stuff>`

`git stash list`

Then to retrieve specific stash.

`git stash apply <index>`

### See decorated and view of the log.

`git log --graph --oneline --decorate`

### Create Alias.

`git config --global alias.<name of alias> "<commands to alias>"`

Favourites:

`git config --global alias.a "add --all"`

`git config --global alias.c "commit -m"`

`git config --global alias.r "rebase --interactive"`

### Go back to previous branch.

`git checkout -`
