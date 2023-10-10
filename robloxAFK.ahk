#Requires AutoHotkey v2.0
;in afk roblox this script will automatically 
;it will move the character forward and backward every 5 minutes
ClickLaunchScript(*){
    Saved := MyGui.Submit()
    MsgBox (Saved.WaitLoop, Saved.TextForChat)
}


main()
{
    MyGui:= Gui(,"Roblox AFK Script",)

    MyGui.MarginX := 10
    MyGui.MarginY := 10
    MyGui.BackColor := "b7cccc"
    MyGui.SetFont("s13")

    MyGui.Add("Text","Center", "This is the AFK script for Roblox.")
    MyGui.Add("Text",, "It prevents Automatic disconnects from the server.")
    MyGui.Add("Text",, "When this Script is running, the avatar will perform an emote and type out something in the chat.")
    
    
    MyGui.Add("Text",, "")
    MyGui.Add("Text",, "Enter how long to wait between the avatar actions. Default is 15 minutes.")
    MyGui.Add("Edit")
    MyGui.Add("UpDown", "vWaitLoop Range1-20", 15)
    
    
    MyGui.Add("Text",, "")
    MyGui.Add("Text",, "Type the message that will be entered in the chat. If empty, the chat will not be used.")
    MyGui.Add("Edit", "r1 vTextForChat limit", "Pls donate. I need robux for a new avatar.")

    MyGui.Add("Text",, "")


    MyGui.Add("Button", "w150", "Launch Script").OnEvent("Click", ClickLaunchScript)
    MyGui.Add("Text",, "")

    MyGui.Add("Link",, 'This is a <a href="https://www.autohotkey.com">link</a>')
    MyGui.Add("Link",, 'Links may be used anywhere in the text like <a id="A">this</a> or <a id="B">that</a>')
    MyGui.Show()



    ;900000ms is equal to 15 minutes
    msToWait:=900000
    downWait:=200
    upWait:=200
    emotingWait:=4000

        loop{
            Send "{a Down}"
            Sleep downWait
        Send "{a Up}"
        Sleep upWait
        Send "."
        Sleep upWait
        Send "1"
        Sleep 2000

        ;trigger chat
        Send "/"
        Sleep 1000
        SendEvent " Pls Donate !"
        Send "{enter}"

        Sleep emotingWait

        Send "{d Down}"
            Sleep downWait
        Send "{d Up}"
        Sleep upWait
        Send "."
        Sleep upWait
        Send "1"
        Sleep 2000

        ;trigger chat
        Send "/"
        Sleep 1000
        SendEvent " It Helps A Lot "
        Send "{enter}"

        Sleep emotingWait

        Sleep msToWait
        }
}

^j::
{
;main()
}

main()









;Pause::Pause -1  ; The Pause/Break key.
