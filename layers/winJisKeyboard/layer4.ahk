;==================================================
; Layer4 = sc07D(￥)
;==================================================

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
sc07D & a::
  send, !{space}
  PasteText("//www.amazon.co.jp/s?k=")
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
sc07D & m::
  send, !{space}
  PasteText("//www.google.co.jp/maps/search/")
  return

sc07D & sc035::MsgBox, r : GitHub`nt : Google Translate`ny : Youtube`na : amazon`nd : Deep L`ng : Google`nk : Google keep`nm : Google map
