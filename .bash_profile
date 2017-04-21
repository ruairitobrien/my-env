# Load in all the regualr bash stuff from seperate files. So software developery.
for file in ~/.{bash_path,bash_prompt,bash_exports,bash_aliases,bash_functions}; do
  [ -r "$file" ] && source "$file"
done
unset file

# This is for mac so brew of course
[ -s $(brew --prefix)/etc/bash_completion ] && . $(brew --prefix)/etc/bash_completion

# Node version manager
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Load gradles bash completion
[ -s ~/gradle-tab-completion.bash ] && source ~/gradle-tab-completion.bash

# The next line updates PATH for the Google Cloud SDK.
[ -s "/Users/$USER/google-cloud-sdk/path.bash.inc" ] && source "/Users/$USER/google-cloud-sdk/path.bash.inc"

# The next line enables shell command completion for gcloud.
[ -s /Users/$USER/google-cloud-sdk/completion.bash.inc ] && source '/Users/ruairitobrien/google-cloud-sdk/completion.bash.inc'

# Do ssh-add on each startup for some reason I've forgotten but I'm so sure was important.
if ssh-add -L | grep -vq id_rsa; then
      ssh-add
fi