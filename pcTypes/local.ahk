#Include %A_LineFile%\..\..\layers\winJisKeyboard\layer1.ahk
#Include %A_LineFile%\..\..\layers\winJisKeyboard\layer2.ahk
#Include %A_LineFile%\..\..\layers\winJisKeyboard\layer3.ahk
#Include %A_LineFile%\..\..\layers\winJisKeyboard\layer4.ahk

; hanzen
changeHanzen() {
    Send {vkF3sc029}
}

; CapsLockを半角全角にする
CapsLock::changeHanzen()
; 半角全角を`にする
sc073::`