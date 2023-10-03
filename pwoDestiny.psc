; This script is a WIP

ScriptName pwoDestiny extends Actor


;-- Structs -----------------------------------------

;-- Variables ---------------------------------------

;-- Properties --------------------------------------

;-- Functions ---------------------------------------

Function SetDestiny() global
	Actor player = Game.GetPlayer()
	ActorValue unityEntered = Game.GetForm(0x219529) as ActorValue
	
	If player.GetValue(unityEntered) >= 1
		Debug.ExecuteConsole("set 17E727 to 100")
	EndIf

;	Debug.MessageBox("Entered Unity: " + player.GetValue(unityEntered) + " Variant: " + MQ401_VariantChance.GetValue());
;	Debug.Notification("Debug: EnterUnity: " + player.GetValue(unityEntered));
EndFunction


;-- Events ------------------------------------------

Event OnInit()
	SetDestiny()
EndEvent

Event OnPlayerLoadGame()
	SetDestiny()
EndEvent

Event OnCellLoad()
	SetDestiny()
EndEvent