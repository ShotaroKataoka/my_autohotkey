;==================================================
; Layer2 = sc079(変換)
;==================================================

sc079 & Space::Send, ^{Enter}
sc079 & sc07D::Reload

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
    IfWinExist, ahk_class Chrome_WidgetWin_1 ahk_exe msedge.exe, , ChatGPT
        WinActivateBottom, ahk_class Chrome_WidgetWin_1 ahk_exe msedge.exe, , ChatGPT
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
    IfWinExist, ahk_class Chrome_WidgetWin_1 ahk_exe Code - Insiders.exe
        WinActivateBottom, ahk_class Chrome_WidgetWin_1 ahk_exe Code - Insiders.exe
    Else
        Run, "C:\Users\e5206\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Visual Studio Code - Insiders\Visual Studio Code - Insiders.lnk"
    return
sc079 & 6::
    IfWinExist, ahk_class PPTFrameClass ahk_exe POWERPNT.EXE
        WinActivateBottom, ahk_class PPTFrameClass ahk_exe POWERPNT.EXE
    Else
        Run, "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\PowerPoint.lnk"
    return
sc079 & 7::
    IfWinExist, ChatGPT ahk_class Chrome_WidgetWin_1 ahk_exe msedge.exe
        WinActivateBottom, ChatGPT ahk_class Chrome_WidgetWin_1 ahk_exe msedge.exe
    return
sc079 & 8::
    IfWinExist, ahk_class Chrome_WidgetWin_1 ahk_exe Notion.exe
        WinActivateBottom, ahk_class Chrome_WidgetWin_1 ahk_exe Notion.exe
    Else
        Run, "C:\Users\e5206\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Notion.lnk"
    return
sc079 & 9::
    IfWinExist, ahk_class Chrome_WidgetWin_1 ahk_exe Discord.exe
        WinActivateBottom, ahk_class Chrome_WidgetWin_1 ahk_exe Discord.exe
    Else
        Run, "C:\Users\e5206\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord.lnk"
    return
sc079 & 0::GroupActivate, WG, r
sc079 & sc029::
  WinGet, active_id, ID, A
  GroupAdd, WG, ahk_id %active_id%
  return
return
; Windows Shortcut Key
sc079 & d::Send, {Del}
sc079 & a::Send, ^{a}
; Move Virtual Desktop
sc079 & u::Send, #^{Left}
sc079 & i::Send, #^{F4}
sc079 & o::Send, #^{d}
sc079 & p::Send, #^{Right}

