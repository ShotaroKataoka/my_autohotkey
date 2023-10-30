;==================================================
; Layer1 = sc07B(無変換)
;==================================================
sc07B & Space::Enter

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
