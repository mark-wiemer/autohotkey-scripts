; written for v2.0-a122-f595abc2

; contains all the Hotkeys and Hotstrings

MsgBox,,, AutoHotkey_v2.ahk is running in v1. Press LCtrl + RCtrl to open Chromium browser.

^LCtrl::
^RCtrl::
{
    vChrome := new Chrome()
    vPage := vChrome.GetPage()
    vPage.Call("Page.navigate", {"url": "https://example.com"})
    vPage.WaitForLoad()
    vPage.Evaluate("alert('Close me to close the browser');")
    vPage.Call("Browser.close")
    vPage.Disconnect()
    MsgBox,,, And that's how it's done! Press LCtrl + RCtrl to do it again.
}

#Include ./lib/Chrome.ahk/Chrome.ahk