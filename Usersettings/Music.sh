#!/usr/bin/env zsh

# Display «Playing next» Notification
function showNextSongNotification(){
	defaults write com.apple.Music "userWantsPlaybackNotifications" -bool TRUE
}
export -f showNextSongNotification
