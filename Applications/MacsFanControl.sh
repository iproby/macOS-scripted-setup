#!/usr/bin/env zsh

function installAppMacsFanControl(){
    # --> Download & Unzip
    downloadFromUrl "https://crystalidea.com/downloads/macsfancontrol.zip" "MacsFanControl.zip"
    # --> Unzip
    unzipFile "MacsFanControl.zip"
    # --> Move & open Application
    moveApplication "Macs Fan Control.app" "open"
}
export -f installAppMacsFanControl
