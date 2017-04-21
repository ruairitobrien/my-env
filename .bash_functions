# This is handy to use after starting docker-machine (mine is called dev-vm)
function evl {
  eval $(docker-machine env dev-vm)
}

# Clean the cache of the Spotify desktop client
function cleancache {
  eval $(/bin/launchctl unload ~/Library/LaunchAgents/com.spotify.webhelper.plist && rm -f ~/Library/LaunchAgents/com.spotify.* && rm -rf ~/Library/Application\ Support/Spotify* && rm -rf ~/Library/Caches/com.spotify*)
}