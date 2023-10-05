
; --- About ---
; This script will add all ship components to all known ship technicians to speed up your ship building!
; --- Author ---
; PoPoWanObi
; --- Notes ---
; Make sure we update all version variables when publishing new updates or things will break
; Current version variables are in GetVersion, OnPlayerLoadGame and OnActorActivatedRef(twice)

ScriptName pwoShipyards extends ReferenceAlias

Event OnInit()
	; Inform the player that the script has been activated, and warn them to not run it again
	Debug.Messagebox("Expanded Ship Services Access [ESSA] script has been successfully activated! Please do not run this command again, or you will have multiple scripts attached to your character. This script will remain attached to your character even after closing the game or reloading a save. Thank you for downloading!")
EndEvent

Function GetVersion() global
	; A quick global function that can be used to determine the version
	Float version = "1.01"
	Debug.Messagebox("ESSA Version: " + version)
EndFunction

Event OnPlayerLoadGame()
	Utility.Wait(1.0) ; Introduce a delay so it does not run while loading.
	String version = "1.01"
	Debug.Notification("ESSA Version " + version + " is currently running.")
EndEvent

Event OnActorActivatedRef(ObjectReference akActionRef)
	Float version = 1.01

	; Since scripts will bake into our saves, we will do version updating to disable old scripts and only run our new ones
	If version <= 1.01
		; Basic keyword all shipyard vendors should have
		Keyword VendorSM_BasicParts_Shinigami_Weapon_Ballistic = Game.GetForm(0x14538F) as Keyword

		; Check if the NPC has the specified keyword
    	If akActionRef.HasKeyword(VendorSM_BasicParts_Shinigami_Weapon_Ballistic)
        	AddKeywordsToObjRef(akActionRef)
        	Debug.Trace("PWO: {ESSA} - Successfully added keywords to a technician.", 0)
    	Else
        	Debug.Trace("PWO: {ESSA} - NPC does not have the keyword.", 0)
    	EndIf
    EndIf
	
EndEvent

; Function to add keywords to an object reference
Function AddKeywordsToObjRef(ObjectReference actor)
	Keyword VendorSM_Nova_Habitat_Struct_Exclusive = Game.GetForm(0x271bb) as Keyword
	Keyword VendorSM_Deimos_Habitat_Struct_Exclusive = Game.GetForm(0x271bc) as Keyword
	Keyword VendorSM_Hopetech_Habitat_Struct_Exclusive = Game.GetForm(0x271bd) as Keyword
	Keyword VendorSM_Stroud_Habitat_Struct_Exclusive = Game.GetForm(0x271be) as Keyword
	Keyword VendorSM_Taiyo_Habitat_Struct_Exclusive = Game.GetForm(0x271bf) as Keyword
	Keyword VendorSM_Deimos_Docker = Game.GetForm(0x271c0) as Keyword
	Keyword VendorSM_Hopetech_Docker = Game.GetForm(0x271c1) as Keyword
	Keyword VendorSM_Nova_Docker = Game.GetForm(0x271c2) as Keyword
	Keyword VendorSM_Stroud_Docker = Game.GetForm(0x271c5) as Keyword
	Keyword VendorSM_Taiyo_Docker = Game.GetForm(0x271c7) as Keyword
	Keyword VendorSM_Deimos_Lander_Exclusive = Game.GetForm(0x271c8) as Keyword
	Keyword VendorSM_Hopetech_Lander_Exclusive = Game.GetForm(0x271c9) as Keyword
	Keyword VendorSM_Nova_Lander_Exclusive = Game.GetForm(0x271ca) as Keyword
	Keyword VendorSM_Stroud_Lander_Exclusive = Game.GetForm(0x271cb) as Keyword
	Keyword VendorSM_Taiyo_Lander_Exclusive = Game.GetForm(0x271cc) as Keyword
	Keyword VendorSM_Deimos_Bay = Game.GetForm(0x271cd) as Keyword
	Keyword VendorSM_Hopetech_Bay = Game.GetForm(0x271ce) as Keyword
	Keyword VendorSM_Nova_Bay = Game.GetForm(0x271cf) as Keyword
	Keyword VendorSM_Stroud_Bay = Game.GetForm(0x271d0) as Keyword
	Keyword VendorSM_Taiyo_Bay = Game.GetForm(0x271d1) as Keyword
	Keyword VendorSM_Deimos_Bridge_Exclusive = Game.GetForm(0x271d2) as Keyword
	Keyword VendorSM_Hopetech_Bridge_Exclusive = Game.GetForm(0x271d3) as Keyword
	Keyword VendorSM_Nova_Bridge_Exclusive = Game.GetForm(0x271d4) as Keyword
	Keyword VendorSM_Stroud_Bridge_Exclusive = Game.GetForm(0x271d5) as Keyword
	Keyword VendorSM_Taiyo_Bridge_Exclusive = Game.GetForm(0x271d6) as Keyword
	Keyword VendorSM_Trident_Bridge = Game.GetForm(0x143C9C) as Keyword
	Keyword VendorSM_Trident_Habitat_Struct_Common = Game.GetForm(0x143c9d) as Keyword
	Keyword VendorSM_BasicParts_Protectorate_Cargo = Game.GetForm(0x143c9e) as Keyword
	Keyword VendorSM_BasicParts_Protectorate_Shields = Game.GetForm(0x143c9f) as Keyword
	Keyword VendorSM_BasicParts_Shinigami_Weapon_Ballistic = Game.GetForm(0x14538F) as Keyword
	Keyword VendorSM_BasicParts_Shinigami_Weapon_Missile = Game.GetForm(0x145390) as Keyword
	Keyword VendorSM_BasicParts_Shinigami_Weapon_EM = Game.GetForm(0x145391) as Keyword
	Keyword VendorSM_BasicParts_LightScythe_Weapon_Particle = Game.GetForm(0x145393) as Keyword
	Keyword VendorSM_BasicParts_LightScythe_Weapon_Missile = Game.GetForm(0x145394) as Keyword
	Keyword VendorSM_BasicParts_LightScythe_Weapon_Laser = Game.GetForm(0x145395) as Keyword
	Keyword VendorSM_BasicParts_Horizon_Weapon_Ballistic = Game.GetForm(0x145397) as Keyword
	Keyword VendorSM_BasicParts_Horizon_Weapon_Particle = Game.GetForm(0x145398) as Keyword
	Keyword VendorSM_BasicParts_Horizon_Weapon_Missile = Game.GetForm(0x145399) as Keyword
	Keyword VendorSM_BasicParts_Ballistic_Weapon_Ballistic = Game.GetForm(0x14539b) as Keyword
	Keyword VendorSM_BasicParts_Ballistic_Weapon_Particle = Game.GetForm(0x14539c) as Keyword
	Keyword VendorSM_BasicParts_Ballistic_Weapon_Missile = Game.GetForm(0x14539d) as Keyword
	Keyword VendorSM_BasicParts_DeepCore_GravDrive = Game.GetForm(0x14539e) as Keyword
	Keyword VendorSM_BasicParts_DeepCore_Reactor = Game.GetForm(0x14539f) as Keyword
	Keyword VendorSM_BasicParts_Panoptes_Cargo = Game.GetForm(0x1453a0) as Keyword
	Keyword VendorSM_BasicParts_Panoptes_Engine = Game.GetForm(0x1453a1) as Keyword
	Keyword VendorSM_BasicParts_Sextant_Cargo = Game.GetForm(0x1453a2) as Keyword
	Keyword VendorSM_BasicParts_Sextant_Shields = Game.GetForm(0x1453a3) as Keyword
	Keyword VendorSM_BasicParts_Horizon_Weapon_Laser = Game.GetForm(0x1453a4) as Keyword
	Keyword VendorSM_BasicParts_Ballistic_FuelTank = Game.GetForm(0x1453a5) as Keyword
	Keyword VendorSM_BasicParts_Ballistic_Weapon_EM = Game.GetForm(0x1453a6) as Keyword
	Keyword VendorSM_BasicParts_LightScythe_Weapon_EM = Game.GetForm(0x1453a7) as Keyword
	Keyword VendorSM_BasicParts_Shinigami_Weapon_Laser = Game.GetForm(0x1453a8) as Keyword
	Keyword VendorSM_BasicParts_Slayton_Engine = Game.GetForm(0x1453a9) as Keyword
	Keyword VendorSM_BasicParts_Slayton_GravDrive = Game.GetForm(0x1453aa) as Keyword
	Keyword VendorSM_BasicParts_Nautilus_FuelTank = Game.GetForm(0x1453ab) as Keyword
	Keyword VendorSM_BasicParts_Nautilus_Shields = Game.GetForm(0x1453ad) as Keyword
	Keyword VendorSM_BasicParts_Dogstar_FuelTank = Game.GetForm(0x1453ae) as Keyword
	Keyword VendorSM_BasicParts_Dogstar_Cargo = Game.GetForm(0x1453af) as Keyword
	Keyword VendorSM_BasicParts_Dogstar_Shields = Game.GetForm(0x1453b0) as Keyword
	Keyword VendorSM_BasicParts_Dogstar_Reactor = Game.GetForm(0x1453b1) as Keyword
	Keyword VendorSM_BasicParts_AmunDunn_Engine = Game.GetForm(0x1453b2) as Keyword
	Keyword VendorSM_BasicParts_AmunDunn_Reactor = Game.GetForm(0x1453b3) as Keyword
	Keyword VendorSM_BasicParts_Xiang_Reactor = Game.GetForm(0x1453b4) as Keyword
	Keyword VendorSM_BasicParts_Reladyne_Engine = Game.GetForm(0x1453b5) as Keyword
	Keyword VendorSM_BasicParts_Reladyne_GravDrive = Game.GetForm(0x1453b6) as Keyword
	Keyword VendorSM_Nova_GravDrive = Game.GetForm(0x1453b7) as Keyword
	Keyword VendorSM_Nova_Habitat_Struct_Common = Game.GetForm(0x1453b8) as Keyword
	Keyword VendorSM_Nova_Bridge_Common = Game.GetForm(0x1453b9) as Keyword
	Keyword VendorSM_Nova_Lander_Common = Game.GetForm(0x1453ba) as Keyword
	Keyword VendorSM_Hopetech_Lander_Common = Game.GetForm(0x1453bc) as Keyword
	Keyword VendorSM_Hopetech_Habitat_Struct_Common = Game.GetForm(0x1453bd) as Keyword
	Keyword VendorSM_Hopetech_Bridge_Common = Game.GetForm(0x1453be) as Keyword
	Keyword VendorSM_Taiyo_Lander_Common = Game.GetForm(0x1453bf) as Keyword
	Keyword VendorSM_Taiyo_Habitat_Struct_Common = Game.GetForm(0x1453c0) as Keyword
	Keyword VendorSM_Taiyo_Bridge_Common = Game.GetForm(0x1453c1) as Keyword
	Keyword VendorSM_Stroud_Lander_Common = Game.GetForm(0x1453c2) as Keyword
	Keyword VendorSM_Stroud_Habitat_Struct_Common = Game.GetForm(0x1453c3) as Keyword
	Keyword VendorSM_Stroud_Bridge_Common = Game.GetForm(0x1453c4) as Keyword
	Keyword VendorSM_Deimos_Habitat_Struct_Common = Game.GetForm(0x1453c5) as Keyword
	Keyword VendorSM_Deimos_Bridge_Common = Game.GetForm(0x1453c6) as Keyword
	Keyword VendorSM_Deimos_Lander_Common = Game.GetForm(0x1453c7) as Keyword

	; Quest-Related
	Keyword VendorSM_CrimsonFleet_BlackMarket = Game.GetForm(0x10c4ab) as Keyword
	Keyword VendorSM_ShieldedCargo = Game.GetForm(0x143CA0) as Keyword

	; DEBUG KEYWORDS
	;Keyword VendorSM_Starstation = Game.GetForm(0x1d2072) as Keyword ; Starstation parts
	;Keyword VendorSM_Hopetech_Cargo_DELETEME = Game.GetForm(0x1453bb) as Keyword ; Hopetech Cargo
	;Keyword VendorSM_BasicParts_Shinigami_Weapon_Special_DELETEME = Game.GetForm(0x14538e) as Keyword
	;Keyword VendorSM_BasicParts_Nautilus_Cargo_DELETEME = Game.GetForm(0x1453ac) as Keyword
	;Keyword VendorSM_BasicParts_LightScythe_Weapon_Special_DELETEME = Game.GetForm(0x145392) as Keyword
	;Keyword VendorSM_BasicParts_Horizon_Weapon_Special_DELETEME = Game.GetForm(0x145396) as Keyword
	;Keyword VendorSM_BasicParts_Ballistic_Weapon_Special_DELETEME = Game.GetForm(0x14539a) as Keyword

	; Add keywords to the actor if they do not have them already
	If !actor.HasKeyword(VendorSM_Nova_Habitat_Struct_Exclusive)
    	actor.AddKeyword(VendorSM_Nova_Habitat_Struct_Exclusive)
	EndIf

	If !actor.HasKeyword(VendorSM_Deimos_Habitat_Struct_Exclusive)
    	actor.AddKeyword(VendorSM_Deimos_Habitat_Struct_Exclusive)
	EndIf

	If !actor.HasKeyword(VendorSM_Hopetech_Habitat_Struct_Exclusive)
    	actor.AddKeyword(VendorSM_Hopetech_Habitat_Struct_Exclusive)
	EndIf

	If !actor.HasKeyword(VendorSM_Stroud_Habitat_Struct_Exclusive)
    	actor.AddKeyword(VendorSM_Stroud_Habitat_Struct_Exclusive)
	EndIf

	If !actor.HasKeyword(VendorSM_Taiyo_Habitat_Struct_Exclusive)
    	actor.AddKeyword(VendorSM_Taiyo_Habitat_Struct_Exclusive)
	EndIf

	If !actor.HasKeyword(VendorSM_Deimos_Docker)
    	actor.AddKeyword(VendorSM_Deimos_Docker)
	EndIf

	If !actor.HasKeyword(VendorSM_Hopetech_Docker)
    	actor.AddKeyword(VendorSM_Hopetech_Docker)
	EndIf

	If !actor.HasKeyword(VendorSM_Nova_Docker)
    	actor.AddKeyword(VendorSM_Nova_Docker)
	EndIf

	If !actor.HasKeyword(VendorSM_Stroud_Docker)
    	actor.AddKeyword(VendorSM_Stroud_Docker)
	EndIf

	If !actor.HasKeyword(VendorSM_Taiyo_Docker)
    	actor.AddKeyword(VendorSM_Taiyo_Docker)
	EndIf

	If !actor.HasKeyword(VendorSM_Deimos_Lander_Exclusive)
    	actor.AddKeyword(VendorSM_Deimos_Lander_Exclusive)
	EndIf

	If !actor.HasKeyword(VendorSM_Hopetech_Lander_Exclusive)
    	actor.AddKeyword(VendorSM_Hopetech_Lander_Exclusive)
	EndIf

	If !actor.HasKeyword(VendorSM_Nova_Lander_Exclusive)
    	actor.AddKeyword(VendorSM_Nova_Lander_Exclusive)
	EndIf

	If !actor.HasKeyword(VendorSM_Stroud_Lander_Exclusive)
    	actor.AddKeyword(VendorSM_Stroud_Lander_Exclusive)
	EndIf

	If !actor.HasKeyword(VendorSM_Taiyo_Lander_Exclusive)
    	actor.AddKeyword(VendorSM_Taiyo_Lander_Exclusive)
	EndIf

	If !actor.HasKeyword(VendorSM_Deimos_Bay)
    	actor.AddKeyword(VendorSM_Deimos_Bay)
	EndIf

	If !actor.HasKeyword(VendorSM_Hopetech_Bay)
    	actor.AddKeyword(VendorSM_Hopetech_Bay)
	EndIf

	If !actor.HasKeyword(VendorSM_Nova_Bay)
    	actor.AddKeyword(VendorSM_Nova_Bay)
	EndIf

	If !actor.HasKeyword(VendorSM_Stroud_Bay)
    	actor.AddKeyword(VendorSM_Stroud_Bay)
	EndIf

	If !actor.HasKeyword(VendorSM_Taiyo_Bay)
    	actor.AddKeyword(VendorSM_Taiyo_Bay)
	EndIf

	If !actor.HasKeyword(VendorSM_Deimos_Bridge_Exclusive)
    	actor.AddKeyword(VendorSM_Deimos_Bridge_Exclusive)
	EndIf

	If !actor.HasKeyword(VendorSM_Hopetech_Bridge_Exclusive)
    	actor.AddKeyword(VendorSM_Hopetech_Bridge_Exclusive)
	EndIf

	If !actor.HasKeyword(VendorSM_Nova_Bridge_Exclusive)
    	actor.AddKeyword(VendorSM_Nova_Bridge_Exclusive)
	EndIf

	If !actor.HasKeyword(VendorSM_Stroud_Bridge_Exclusive)
    	actor.AddKeyword(VendorSM_Stroud_Bridge_Exclusive)
	EndIf

	If !actor.HasKeyword(VendorSM_Taiyo_Bridge_Exclusive)
    	actor.AddKeyword(VendorSM_Taiyo_Bridge_Exclusive)
	EndIf

	;If !actor.HasKeyword(VendorSM_CrimsonFleet_BlackMarket)
    ;	actor.AddKeyword(VendorSM_CrimsonFleet_BlackMarket)
	;EndIf

	If !actor.HasKeyword(VendorSM_Trident_Bridge)
    	actor.AddKeyword(VendorSM_Trident_Bridge)
	EndIf

	If !actor.HasKeyword(VendorSM_Trident_Habitat_Struct_Common)
    	actor.AddKeyword(VendorSM_Trident_Habitat_Struct_Common)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_Protectorate_Cargo)
    	actor.AddKeyword(VendorSM_BasicParts_Protectorate_Cargo)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_Protectorate_Shields)
    	actor.AddKeyword(VendorSM_BasicParts_Protectorate_Shields)
	EndIf

	;If !actor.HasKeyword(VendorSM_ShieldedCargo)
    ;	actor.AddKeyword(VendorSM_ShieldedCargo)
	;EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_Shinigami_Weapon_Ballistic)
    	actor.AddKeyword(VendorSM_BasicParts_Shinigami_Weapon_Ballistic)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_Shinigami_Weapon_Missile)
    	actor.AddKeyword(VendorSM_BasicParts_Shinigami_Weapon_Missile)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_Shinigami_Weapon_EM)
    	actor.AddKeyword(VendorSM_BasicParts_Shinigami_Weapon_EM)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_LightScythe_Weapon_Particle)
    	actor.AddKeyword(VendorSM_BasicParts_LightScythe_Weapon_Particle)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_LightScythe_Weapon_Missile)
    	actor.AddKeyword(VendorSM_BasicParts_LightScythe_Weapon_Missile)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_LightScythe_Weapon_Laser)
    	actor.AddKeyword(VendorSM_BasicParts_LightScythe_Weapon_Laser)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_Horizon_Weapon_Ballistic)
    	actor.AddKeyword(VendorSM_BasicParts_Horizon_Weapon_Ballistic)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_Horizon_Weapon_Particle)
    	actor.AddKeyword(VendorSM_BasicParts_Horizon_Weapon_Particle)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_Horizon_Weapon_Missile)
    	actor.AddKeyword(VendorSM_BasicParts_Horizon_Weapon_Missile)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_Ballistic_Weapon_Ballistic)
    	actor.AddKeyword(VendorSM_BasicParts_Ballistic_Weapon_Ballistic)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_Ballistic_Weapon_Particle)
    	actor.AddKeyword(VendorSM_BasicParts_Ballistic_Weapon_Particle)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_Ballistic_Weapon_Missile)
	    actor.AddKeyword(VendorSM_BasicParts_Ballistic_Weapon_Missile)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_DeepCore_GravDrive)
	    actor.AddKeyword(VendorSM_BasicParts_DeepCore_GravDrive)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_DeepCore_Reactor)
	    actor.AddKeyword(VendorSM_BasicParts_DeepCore_Reactor)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_Panoptes_Cargo)
	    actor.AddKeyword(VendorSM_BasicParts_Panoptes_Cargo)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_Panoptes_Engine)
	    actor.AddKeyword(VendorSM_BasicParts_Panoptes_Engine)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_Sextant_Cargo)
	    actor.AddKeyword(VendorSM_BasicParts_Sextant_Cargo)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_Sextant_Shields)
	    actor.AddKeyword(VendorSM_BasicParts_Sextant_Shields)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_Ballistic_Weapon_EM)
	    actor.AddKeyword(VendorSM_BasicParts_Ballistic_Weapon_EM)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_LightScythe_Weapon_EM)
	    actor.AddKeyword(VendorSM_BasicParts_LightScythe_Weapon_EM)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_Shinigami_Weapon_Laser)
	    actor.AddKeyword(VendorSM_BasicParts_Shinigami_Weapon_Laser)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_Slayton_Engine)
	    actor.AddKeyword(VendorSM_BasicParts_Slayton_Engine)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_Slayton_GravDrive)
	    actor.AddKeyword(VendorSM_BasicParts_Slayton_GravDrive)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_Nautilus_FuelTank)
	    actor.AddKeyword(VendorSM_BasicParts_Nautilus_FuelTank)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_Nautilus_Shields)
	    actor.AddKeyword(VendorSM_BasicParts_Nautilus_Shields)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_Dogstar_FuelTank)
	    actor.AddKeyword(VendorSM_BasicParts_Dogstar_FuelTank)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_Dogstar_Cargo)
	    actor.AddKeyword(VendorSM_BasicParts_Dogstar_Cargo)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_Dogstar_Shields)
	    actor.AddKeyword(VendorSM_BasicParts_Dogstar_Shields)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_Dogstar_Reactor)
	    actor.AddKeyword(VendorSM_BasicParts_Dogstar_Reactor)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_AmunDunn_Engine)
	    actor.AddKeyword(VendorSM_BasicParts_AmunDunn_Engine)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_AmunDunn_Reactor)
	    actor.AddKeyword(VendorSM_BasicParts_AmunDunn_Reactor)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_Xiang_Reactor)
	    actor.AddKeyword(VendorSM_BasicParts_Xiang_Reactor)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_Reladyne_Engine)
	    actor.AddKeyword(VendorSM_BasicParts_Reladyne_Engine)
	EndIf

	If !actor.HasKeyword(VendorSM_BasicParts_Reladyne_GravDrive)
	    actor.AddKeyword(VendorSM_BasicParts_Reladyne_GravDrive)
	EndIf

	If !actor.HasKeyword(VendorSM_Nova_GravDrive)
	    actor.AddKeyword(VendorSM_Nova_GravDrive)
	EndIf

	If !actor.HasKeyword(VendorSM_Nova_Habitat_Struct_Common)
	    actor.AddKeyword(VendorSM_Nova_Habitat_Struct_Common)
	EndIf

	If !actor.HasKeyword(VendorSM_Nova_Bridge_Common)
	    actor.AddKeyword(VendorSM_Nova_Bridge_Common)
	EndIf

	If !actor.HasKeyword(VendorSM_Nova_Lander_Common)
	    actor.AddKeyword(VendorSM_Nova_Lander_Common)
	EndIf

	;If !actor.HasKeyword(VendorSM_Hopetech_Cargo_DELETEME)
	;    actor.AddKeyword(VendorSM_Hopetech_Cargo_DELETEME)
	;EndIf

	If !actor.HasKeyword(VendorSM_Hopetech_Lander_Common)
	    actor.AddKeyword(VendorSM_Hopetech_Lander_Common)
	EndIf

	If !actor.HasKeyword(VendorSM_Hopetech_Habitat_Struct_Common)
	    actor.AddKeyword(VendorSM_Hopetech_Habitat_Struct_Common)
	EndIf

	If !actor.HasKeyword(VendorSM_Hopetech_Bridge_Common)
	    actor.AddKeyword(VendorSM_Hopetech_Bridge_Common)
	EndIf

	If !actor.HasKeyword(VendorSM_Taiyo_Lander_Common)
    	actor.AddKeyword(VendorSM_Taiyo_Lander_Common)
	EndIf

	If !actor.HasKeyword(VendorSM_Taiyo_Habitat_Struct_Common)
    	actor.AddKeyword(VendorSM_Taiyo_Habitat_Struct_Common)
	EndIf

	If !actor.HasKeyword(VendorSM_Taiyo_Bridge_Common)
    	actor.AddKeyword(VendorSM_Taiyo_Bridge_Common)
	EndIf

	If !actor.HasKeyword(VendorSM_Stroud_Lander_Common)
    	actor.AddKeyword(VendorSM_Stroud_Lander_Common)
	EndIf

	If !actor.HasKeyword(VendorSM_Stroud_Habitat_Struct_Common)
    	actor.AddKeyword(VendorSM_Stroud_Habitat_Struct_Common)
	EndIf

	If !actor.HasKeyword(VendorSM_Stroud_Bridge_Common)
    	actor.AddKeyword(VendorSM_Stroud_Bridge_Common)
	EndIf

	If !actor.HasKeyword(VendorSM_Deimos_Habitat_Struct_Common)
    	actor.AddKeyword(VendorSM_Deimos_Habitat_Struct_Common)
	EndIf

	If !actor.HasKeyword(VendorSM_Deimos_Bridge_Common)
    	actor.AddKeyword(VendorSM_Deimos_Bridge_Common)
	EndIf

	If !actor.HasKeyword(VendorSM_Deimos_Lander_Common)
    	actor.AddKeyword(VendorSM_Deimos_Lander_Common)
	EndIf
EndFunction