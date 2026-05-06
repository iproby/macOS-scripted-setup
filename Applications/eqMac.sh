#!/usr/bin/env zsh

function installAppEqMac(){
    # --> Download
    downloadFromUrl "https://github.com/bitgapp/eqMac/releases/latest/download/eqMac.dmg" "eqMac.dmg"
    # --> Mount & move
    unmountFile "eqMac.dmg" "eqMac"
    moveApplication "eqMac.app"
}
export -f installAppEqMac
