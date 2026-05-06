# Install AyuGram Desktop (Telegram client)
# Source: https://github.com/AyuGram/AyuGramDesktop

function installAppAyuGram(){
    local ayugramDmg="AyuGram.dmg"
    local ayugramUrl="https://github.com/AyuGram/AyuGramDesktop/releases/download/v6.7.8/AyuGram.dmg"

    showinfo "Downloading AyuGram Desktop:" "note"
    downloadFromUrl "$ayugramUrl" "$ayugramDmg"

    showinfo "Mounting and installing AyuGram:" "note"
    unmountFile "$ayugramDmg" "AyuGram"

    showinfo "Moving AyuGram to Applications:" "note"
    moveApplication "AyuGram.app"

    # Cleanup downloaded DMG
    rm -f "$HOME/Downloads/$ayugramDmg" 2>/dev/null
}
