#!/usr/bin/env zsh

# Show the subject field in Messages (subjects are sent in bold format)
# Source: https://gist.github.com/getaaron/a9dc64b6ea2fa8299af6b7077f4386ae
function enableMessagesSubjectField(){
	defaults write com.apple.MobileSMS "MMSShowSubject" -bool TRUE
}
export -f enableMessagesSubjectField
