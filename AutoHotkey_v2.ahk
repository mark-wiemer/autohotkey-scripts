; written for v2.0-a122-f595abc2

; contains all the Hotkeys and Hotstrings

^LCtrl::
^RCtrl::
    {
        MsgBox,,, "AutoHotkey_v2 is running in v1", 1
        vChrome := new Chrome()
        vPage := vChrome.GetPage()
        vPage.Call("Page.navigate", {"url": "https://example.com"})
        vPage.WaitForLoad()
        vPage.Evaluate("alert('Hello World!');")
        vPage.Call("Browser.close")
        vPage.Disconnect()
    }

#Include ./lib/Chrome.ahk/Chrome.ahk