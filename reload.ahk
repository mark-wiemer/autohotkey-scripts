; for use with AHK 1.1

#NoEnv
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Window
SendMode Input
#SingleInstance Force
SetTitleMatchMode 2
#WinActivateForce
SetControlDelay 1
SetWinDelay 0
SetKeyDelay -1
SetMouseDelay -1
SetBatchLines -1

F3::
Run, .\AutoHotkey.exe
MsgBox,,, AutoHotkey-alpha reloaded, 1
Return