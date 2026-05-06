#!/usr/bin/env zsh

# -- MacBook Trackpad behaviours --
# --> Improve Trackpad Click behaviours (single and right click)
function enableTrackpadClicking(){
	# Enable Single Tap to Click
	defaults write com.apple.AppleMultitouchTrackpad "Clicking" -int 1
	# Enable Right Click
	defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseButtonMode -string 'TwoButton'
	defaults write com.apple.AppleMultitouchTrackpad "TrackpadRightClick" -int 1
}
export -f enableTrackpadClicking

# --> Increase Mouse speed on Trackpads and Mouses
function increaseMouseSpeed(){
	defaults write NSGlobalDomain com.apple.trackpad.scaling -int 2
	defaults write NSGlobalDomain com.apple.mouse.scaling -float 1.5
}
export -f increaseMouseSpeed

# --> Disable Mouse cursor acceleration
function disableMouseAcceleration(){
	defaults write NSGlobalDomain com.apple.mouse.linear -bool YES

}
export -f disableMouseAcceleration
