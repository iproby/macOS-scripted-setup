#!/usr/bin/env zsh

function installAppLinearMouse(){
    # --> Download
    downloadFromUrl "https://dl.linearmouse.org/latest/LinearMouse.dmg" "LinearMouse.dmg"
    # --> Mount & move
    unmountFile "LinearMouse.dmg" "LinearMouse"
    moveApplication "LinearMouse.app"
}
export -f installAppLinearMouse
