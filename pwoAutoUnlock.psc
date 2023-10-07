
; --- About ---
; This script will automatically unlock locked containers, doors and terminals!
; --- Author ---
; PoPoWanObi
; --- Notes ---
; Does not appear to be able to grab the lock information when locked
; Will need to return to this idea later

ScriptName pwoAutoUnlock extends ReferenceAlias

Event OnInit()
	; Inform the player that the script has been activated, and warn them to not run it again
	Debug.Messagebox("Auto Unlock script has been successfully activated! Please do not run this command again, or you will have multiple scripts attached to your character. This script will remain attached to your character even after closing the game or reloading a save. Thank you for downloading!")
EndEvent

Function GetVersion() global
	; A quick global function that can be used to determine the version
	String version = "1.00"
	Debug.Messagebox("Auto Unlock Version: " + version)
EndFunction

Event OnPlayerLoadGame()
	Utility.Wait(2.0) ; Introduce a delay so it does not run while loading.
	String version = "1.00"
	Debug.Notification("Auto Unlock Version " + version + " is currently running.")
EndEvent

Event OnActorActivatedRef(ObjectReference akActionRef)

	Float version = 1.00

	int lockLevel = akActionRef.GetLockLevel();
	bool isLocked = akActionRef.IsLocked();

	Debug.Messagebox("Is locked? : " + isLocked + "|Lock Level: " + lockLevel)
	Debug.Trace("Is locked? : " + isLocked + "|Lock Level: " + lockLevel, 0)
EndEvent