# my-mac-env

Configurations for my Mac environment

#### How to sync these files

In your home directory `cd ~`

Run `git init`

To ignore everything but the environment config files without editing the global .gitconfig
open __.git/info/exclude__ with an editor. 

e.g. `vim .git/info/exclude`

Update that file to ignore everything but the files you want to sync.

e.g.

```
!.bash_profile
!.bash_path
!.bash_prompt
!.bash_exports
!.bash_aliases
!.bash_functions

!.gitconfig
!.gitexcludes
!.gitignore

!README.md
```

Now you can keep your real config files in sync in a git repo.

