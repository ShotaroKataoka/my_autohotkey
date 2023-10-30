activeWindowsTerminal() {
  return WinActive("ahk_exe WindowsTerminal.exe")
}
activeEdge() {
  return WinActive("ahk_exe msedge.exe")
}
activeSlack() {
  return WinActive("ahk_exe slack.exe")
}
activeVSCode() {
  return WinActive("ahk_exe Code - Insiders.exe")
}

action(windowsTerminal="", edge="", slack="", vscode=""){
    if (activeWindowsTerminal() && windowsTerminal!="")
    {
      Send, %windowsTerminal%
      return
    } else if (activeEdge() && edge!="")
    {
      Send, %edge%
      return
    } else if (activeSlack() && slack!="")
    {
      Send, %slack%
      return
    } else if (activeVSCode() && vscode!="")
    {
      Send, %vscode%
      return
    }
    return
}

;==================================================
; Layer3 = sc070(カタカナひらがな)
;==================================================
; action(windowsTerminal, edge, slack, vscode)
sc070 & j::action("^{d}", "+^{Tab}", "", "^{PgUp}")
sc070 & k::action("^{u}", "^{Tab}", "^+{k}", "^{PgDn}")
sc070 & h::action("", "!{Left}", "", "^+{PgUp}")
sc070 & l::action("", "!{Right}", "^+l", "^+{PgDn}")
sc070 & q::action("+{h}", "", "", "")
sc070 & w::action("+{m}", "", "", "")
sc070 & e::action("+{l}", "", "", "")
sc070 & 1::action("", "", "^{1}", "^{1}")
sc070 & 2::action("{@}", "", "^{2}", "^{2}")
sc070 & 3::action("", "", "^{3}", "^{3}")
sc070 & 4::action("", "", "^{4}", "^{4}")
sc070 & 5::action("", "", "^{5}", "^{5}")
sc070 & x::action("", "^{w}", "", "^{w}")
sc070 & t::action("", "^{t}", "", "^!{t}")
sc070 & y::action("", "^{l}^{c}{F6}{F6}{F6}", "", "")
sc070 & p::action("", "^{t}^{v}{Enter}", "", "^{k}{v}")
sc070 & a::action("", "", "^+{a}", "")
sc070 & f::action("", "", "^{f}", "")
sc070 & .::action("", "", "^{.}", "")
sc070 & i::action("", "", "", "^!{i}")
sc070 & c::action("", "", "", "^+{c}")
sc070 & d::action("", "", "", "^+{Enter}")
