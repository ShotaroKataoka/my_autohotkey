; functions
PasteText(text)
{
  ClipSaved := ClipboardAll
  Clipboard := text
  sleep, 100
  Send, ^{v}
  Clipboard := ClipSaved
  ClipSaved =
}
getIMEstate(){
   WinGet, vcurrentwindow, ID, A
   vimestate := DllCall("user32.dll\SendMessageA", "UInt", DllCall("imm32.dll\ImmGetDefaultIMEWnd", "Uint", vcurrentwindow), "UInt", 0x0283, "Int", 0x0005, "Int", 0)
   if (vimestate=0){
     state := "off"
   }else{
     state := "on"
     }
   return %state%
}
ensetIME(mode){
  state := getIMEstate()
  if (mode!=state){
    send, {vkF3sc029}
  }
}