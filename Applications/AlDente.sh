#!/usr/bin/env zsh

function installAppAlDente(){
    # --> Download
    downloadFromUrl "https://apphousekitchen.com/aldente/AlDente-Pro.dmg" "AlDente.dmg"
    # --> Mount & move
    unmountFile "AlDente.dmg" "AlDente"
    moveApplication "AlDente.app"
}
export -f installAppAlDente
