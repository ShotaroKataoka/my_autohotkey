class Apps{
  __New(){
  }

  Action(key=""){
    If (WinActive("ahk_exe POWERPNT.EXE"))
    {
      ;======================
      ;       Create
      ;======================
      ; Create new text box
      If (key="t")
      {
        Send, !n
        Send, s
        Send, h
        Send, {Enter}
        Return
      }
      ; Create new slide
      If (key="s")
      {
        Send, ^m
        Return
      }

      ;======================
      ;        Move
      ;======================
      ; Window Focus
      If (key="m")
      {
        Send, {F6}
        Return
      }
      ; Window Focus
      If (key="n")
      {
        Send, +{F6}
        Return
      }

      ;======================
      ;        Object
      ;======================
      ; Object depth up
      If (key="]")
      {
        Send, ^+{sc01B}
        Return
      }
      ; Object depth Down
      If (key="[")
      {
        Send, ^+{sc01A}
        Return
      }
      ; Object width
      If (key="h")
      {
        Send, +{Left}
        Return
      }
      If (key="l")
      {
        Send, +{Right}
        Return
      }
      ; Object height
      If (key="j")
      {
        Send, +{Down}
        Return
      }
      If (key="k")
      {
        Send, +{Up}
        Return
      }
      ;======================
      ;        Text
      ;======================
      ; Text size up
      If (key=".")
      {
        Send, ^+{.}
        Return
      }
      ; Text size down
      If (key=",")
      {
        Send, ^+{,}
        Return
      }
    }
    If (WinActive("ahk_exe WindowsTerminal.exe"))
    {
      ; vim
      ; C-d
      If (key="d")
      {
        Send, ^{d}
        Return
      }
      ; C-d
      If (key="f")
      {
        Send, ^{f}
        Return
      }
      ; C-d
      If (key="u")
      {
        Send, ^{u}
        Return
      }
      ; C-d
      If (key="b")
      {
        Send, ^{b}
        Return
      }
      ; @
      If (key="2")
      {
        Send, {@}
        Return
      }
      ; H
      If (key="q")
      {
        Send, +{h}
        Return
      }
      ; M
      If (key="w")
      {
        Send, +{m}
        Return
      }
      ; L
      If (key="e")
      {
        Send, +{l}
        Return
      }
      ; S
      If (key="s")
      {
        Send, ^{k}
        Return
      }
      ; tmux prefix
      ; C-q
      If (key="m-q")
      {
        Send, ^{q}
        Return
      }
      ; C-e
      If (key="m-e")
      {
        Send, ^{e}
        Return
      }
      ; local tmux
      ; j move
      If (key="j")
      {
        Send, ^{q}{j}
        Return
      }
      ; k move
      If (key="k")
      {
        Send, ^{q}{k}
        Return
      }
      ; h move
      If (key="h")
      {
        Send, ^{q}{h}
        Return
      }
      ; l move
      If (key="l")
      {
        Send, ^{q}{l}
        Return
      }
      ; create window
      If (key="c")
      {
        Send, ^{q}{c}
        Return
      }
      ; next window
      If (key="n")
      {
        Send, ^{q}{n}
        Return
      }
      ; previous window
      If (key="p")
      {
        Send, ^{q}{p}
        Return
      }
      ; rename window
      If (key=",")
      {
        Send, ^{q}{sc033}
        Return
      }
      ; t
      If (key="t")
      {
        Send, ^{t}
        Return
      }
    }
    If (WinActive("ahk_exe msedge.exe"))
    {
      ; j
      If (key="j")
      {
        Send, +^{Tab}
        Return
      }
      ; k
      If (key="k")
      {
        Send, ^{Tab}
        Return
      }
      ; h
      If (key="h")
      {
        Send, !{Left}
        Return
      }
      ; l
      If (key="l")
      {
        Send, !{Right}
        Return
      }
      ; x
      If (key="x")
      {
        Send, ^{w}
        Return
      }
      ; t
      If (key="t")
      {
        Send, ^{t}
        Return
      }
      ; y
      If (key="y")
      {
        Send, ^{l}^{c}{F6}{F6}
        Return
      }
      ; p
      If (key="p")
      {
        Send, ^{t}^{v}{Enter}
        Return
      }
      ; r
      If (key="r")
      {
        Send, ^{l}^{v}^{a}^{c}{F6}{F6}
        Return
      }
      ; tab
      If (key="tab")
      {
        Send, {F6}
        Return
      }
      ; i
      If (key="i")
      {
        Send, {Insert}
        Return
      }
    }
    If (WinActive("ahk_exe slack.exe"))
    {
      ;======================
      ;       shortcut
      ;======================
      ; show unread
      If (key="a")
      {
        Send, ^+{a}
        Return
      }
      ; show dm
      If (key="k")
      {
        Send, ^+{k}
        Return
      }
      ; show channel
      If (key="l")
      {
        Send, ^+{l}
        Return
      }
      ; search
      If (key="f")
      {
        Send, ^{f}
        Return
      }
      ; close right side bar
      If (key=".")
      {
        Send, ^{.}
        Return
      }
      ; move workspace
      If (key="1")
      {
        Send, ^{1}
        Return
      }
      If (key="2")
      {
        Send, ^{2}
        Return
      }
      If (key="3")
      {
        Send, ^{3}
        Return
      }
      If (key="4")
      {
        Send, ^{4}
        Return
      }
    }


  }
}


