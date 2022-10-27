# my_autohotkey

Create `kataoka/scrt.ahk`


```
class Scrt{
  __New(){
  }

  Action(key=""){
    If (key="m-scrt")
    {
      Send, SENTENCE01
      Return
    }
    If (key="h-scrt")
    {
      Send, SENTENCE02
      Return
    }
  }
}
```