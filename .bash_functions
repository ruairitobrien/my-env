# This is handy to use after starting docker-machine (mine is called dev-vm)
function evl {
  eval $(docker-machine env dev-vm)
}