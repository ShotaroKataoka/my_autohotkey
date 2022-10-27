; Auto-execute section
Apps := new Apps()
Scrt := new Scrt()

; functions
muteMode := "off"
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

; Change Key
CapsLock::send, {vkF3sc029}
sc073::`
sc07B & Space::Enter
sc079 & Space::Send, ^{Enter}
sc079 & sc07D::Reload

;; hjkl
; !h::Send, {Blind}{Left}
; !j::Send, {Blind}{Down}
; !k::Send, {Blind}{Up}
; !l::Send, {Blind}{Right}
; Layer 1
; Vimove
;; hjkl
sc07B & h::Send, {Blind}{Left}
sc07B & j::Send, {Blind}{Down}
sc07B & k::Send, {Blind}{Up}
sc07B & l::Send, {Blind}{Right}
;; other vim command
sc07B & a::Send, {Blind}{End}
sc07B & i::Send, {Blind}{Home}
sc07B & o::Send, {End}{Enter}
sc07B & y::Send, {Home}+{End}^{c}{Left}
sc07B & p::Send, {End}{Enter}^{v}{Home}
;; windows
sc07B & f::
  Send, {Esc}
  return
sc07B & d::Send, {BS}
sc07B & s::
  Send, ^s
  return
sc07B & m::
  global muteMode
  if (muteMode="on"){
    muteMode := "off"
  }
  else{
    muteMode := "on"
  }
  return
sc07B & z::Send, ^z
sc07B & x::Send, ^x
sc07B & c::Send, ^c
sc07B & v::Send, ^v
; Function Key
sc07B & 2::Send, {F2}
sc07B & 4::
  Send, !{F4}
  return
sc07B & 5::Send, {F5}
sc07B & 6::Send, {F6}
sc07B & 7::Send, {F7}
sc07B & 8::Send, {F8}
sc07B & 9::Send, {F9}
sc07B & 0::Send, {F10}

; Layer 2
; Window manager
;; snap window
sc079 & h::
  Send, #{Left}
  return
sc079 & j::
  Send, #{Down}
  return
sc079 & k::
  Send, #{Up}
  return
sc079 & l::
  Send, #{Right}
  return
sc079 & f::
  Send, {Esc}
  return
;; move window between Dual Display
sc079 & n::
  Send, +#{Left}
  return
sc079 & m::
  Send, +#{Right}
  return
;; Switch Active window
sc079 & w::Send, !{Esc}
sc079 & q::Send, !+{Esc}
sc079 & e::Send, !{Tab}
;; Activate specific apps
sc079 & 1::
    IfWinExist, ahk_class Chrome_WidgetWin_1 ahk_exe msedge.exe
        WinActivateBottom, ahk_class Chrome_WidgetWin_1 ahk_exe msedge.exe
    Else
        Run,"C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Edge.lnk"
    return
sc079 & 2::
    IfWinExist, ahk_class Chrome_WidgetWin_1 ahk_exe slack.exe
        WinActivateBottom, ahk_class Chrome_WidgetWin_1 ahk_exe slack.exe
    Else
        Run,"C:\Users\e5206\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Slack Technologies Inc\Slack.lnk"
    return
sc079 & 3::
    IfWinExist, ahk_class CabinetWClass ahk_exe Explorer.EXE
        WinActivateBottom, ahk_class CabinetWClass ahk_exe Explorer.EXE
    Else
        Send, #e
    return
sc079 & 4::
    IfWinExist, ahk_exe WindowsTerminal.exe
        WinActivateBottom, ahk_exe WindowsTerminal.exe
    Else
        Run, wt.exe
    return
sc079 & 5::
    IfWinExist, ahk_class PPTFrameClass ahk_exe POWERPNT.EXE
        WinActivateBottom, ahk_class PPTFrameClass ahk_exe POWERPNT.EXE
    Else
        Run, POWERPNT.EXE
    return
sc079 & 6::
    IfWinExist, ahk_class XLMAIN ahk_exe EXCEL.EXE
        WinActivateBottom, ahk_class XLMAIN ahk_exe EXCEL.EXE
    Else
        Run, EXCEL.EXE
    return
sc079 & 7::
    IfWinExist, ahk_class OpusApp ahk_exe WINWORD.EXE
        WinActivateBottom, ahk_class OpusApp ahk_exe WINWORD.EXE
    Else
        Run, WINWORD.EXE
    return
sc079 & 8::WinActivateBottom, ahk_class ZPContentViewWndClass ahk_exe Zoom.exe
sc079 & 9::
    IfWinExist, ahk_class Chrome_WidgetWin_1 ahk_exe Code.exe
        WinActivateBottom, ahk_class Chrome_WidgetWin_1 ahk_exe Code.exe
    Else
        Run, "C:\Users\e5206\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Visual Studio Code\Visual Studio Code.lnk"
    return
sc079 & 0::GroupActivate, WG, r
sc079 & sc029::
  WinGet, active_id, ID, A
  GroupAdd, WG, ahk_id %active_id%
  return
return
; Windows Shortcut Key
sc079 & d::Send, {Del}
sc079 & r::Send, +{F10}
sc079 & a::Send, ^{a}
sc079 & s::
  Send, !{space}
  ensetIME("off")
  send, {?}
  return
sc079 & =::
  Send, !{space}
  ensetIME("off")
  send, {=}
  return
; Move Virtual Desktop
sc079 & u::Send, #^{Left}
sc079 & i::Send, #^{F4}
sc079 & o::Send, #^{d}
sc079 & p::Send, #^{Right}
; move window between Virtual Desktop
sc079 & sc01A::Send, ^+!{Left}
sc079 & sc01B::Send, ^+!{Right}
sc079 & sc028::Send, ^+!{p}

; Layer 3
; Apps manager
sc070 & 1::Apps.Action("1")
sc070 & 2::Apps.Action("2")
sc070 & 3::Apps.Action("3")
sc070 & 4::Apps.Action("4")
sc070 & Tab::Apps.Action("tab")
sc070 & q::Apps.Action("q")
sc070 & w::Apps.Action("w")
sc070 & e::Apps.Action("e")
sc070 & r::Apps.Action("r")
sc070 & t::Apps.Action("t")
sc070 & y::Apps.Action("y")
sc070 & u::Apps.Action("u")
sc070 & i::Apps.Action("i")
sc070 & p::Apps.Action("p")
sc070 & sc01A::Apps.Action("[")
sc070 & sc01B::Apps.Action("]")
sc070 & a::Apps.Action("a")
sc070 & s::Apps.Action("s")
sc070 & d::Apps.Action("d")
sc070 & f::Apps.Action("f")
sc070 & h::Apps.Action("h")
sc070 & j::Apps.Action("j")
sc070 & k::Apps.Action("k")
sc070 & l::Apps.Action("l")
sc070 & x::Apps.Action("x")
sc070 & c::Apps.Action("c")
sc070 & b::Apps.Action("b")
sc070 & n::Apps.Action("n")
sc070 & m::Apps.Action("m")
sc070 & sc033::Apps.Action(",")
sc070 & sc034::Apps.Action(".")
sc07B & q::Apps.Action("m-q")
sc07B & e::Apps.Action("m-e")
sc07B & sc073::Scrt.Action("m-scrt")
sc079 & sc073::Scrt.Action("h-scrt")
Return

; Layer 4
; sc07D & w::
;   ; aidemy
;   Run, "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" --new-window https://p.secure.freee.co.jp/# https://app.slack.com/client/T02HH1NKX/C0156GZ3SLX/details/top https://mail.google.com/mail/u/6/#inbox https://docs.google.com/document/d/1J3z0wI2FGoFNXrCnpGgLd57YIQM4cHwSruKgKPTndEs/edit https://github.com/TeamAidemy/aidemy-contents/pulls
  ; content
  ; Run, "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" --new-window https://docs.google.com/spreadsheets/d/1PXsInb69VK2PMZ7Nd02Uf_oICDZaGOZviTT5-71LYFY/edit#gid=790266839 http://project-temporary.aidemy.jp/mypage https://aidemy.docbase.io/posts/1584638 https://github.com/TeamAidemy/aidemy-contents
  return
sc07D & e::
  send, !{space}
  PasteText("//nagaoka-kml.esa.io/posts?q=")
  return
sc07D & r::
  send, !{space}
  PasteText("//github.com/?q=")
  return
sc07D & t::
  isja := getIMEstate()
  send, !{space}
  if (isja="on"){
    PasteText("//translate.google.co.jp/?hl=ja#view=home&op=translate&sl=ja&tl=en&text=")
  }
  else{
    PasteText("//translate.google.co.jp/?hl=ja#view=home&op=translate&sl=en&tl=ja&text=")
  }
  return
sc07D & y::
  send, !{space}
  PasteText("//www.youtube.com/results?search_query=")
  return
sc07D & p::
  send, !{space}
  PasteText("//github.com/ShotaroKataoka/paper_summary/issues?q=is%3Aclosed+")
  return
sc07D & a::
  send, !{space}
  PasteText("//www.amazon.co.jp/s?k=")
  return
sc07D & s::
  send, !{space}
  PasteText("//scholar.google.com/scholar?hl=ja&as_sdt=0`%2C5&q=")
  return
sc07D & d::
  isja := getIMEstate()
  send, !{space}
  if (isja="on"){
    PasteText("//www.deepl.com/translator#ja/en/")
  }
  else{
    PasteText("//www.deepl.com/translator#en/ja/")
  }
  return
sc07D & g::
  send, !{space}
  PasteText("//www.google.com/search?q=")
  return
sc07D & k::
  send, !{space}
  PasteText("//keep.new")
  sleep, 200
  send, {Enter}
  return
sc07D & v::
  send, !{space}
  PasteText("//vimawesome.com/?q=")
  return
sc07D & n::
  send, !{space}
  PasteText("//abema.tv/now-on-air/abema-news")
  send, {Enter}
  return
sc07D & m::
  send, !{space}
  PasteText("//www.google.co.jp/maps/search/")
  return

sc07D & sc035::MsgBox, sc07D+`nw : working`ne : esa`nr : GitHub`nt : Google翻訳`ny : Youtube`na : amazon`ns : Google scholar`nd : Deep L`ng : Google`nk : Google keep`nv : VimAwesome`nn : abema news`nm : Google map


#Include %A_LineFile%\..\kataoka\apps.ahk
#Include %A_LineFile%\..\kataoka\scrt.ahk
