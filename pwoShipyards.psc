; ---About---
; This script will add all ship components to all known ship technicians to speed up your ship building!
; --- Author ---
; PoPoWanObi


ScriptName pwoShipyards extends Actor

Event OnInit()
	Debug.Messagebox("Expanded Ship Services Access script has been successfully activated! Please do not run this command again, or you will have multiple scripts attached to your character. This script will run once every time you load your save. Thank you for downloading!")
	Maintenance()
EndEvent

Event OnPlayerLoadGame()
	Maintenance()
EndEvent

Function Maintenance()
	;TODO with Creation Kit/Quests: Version Checking Here
	UpdateVendors()
EndFunction

Function GetVersion() global
	Float fVersion = 1.00
	Debug.Messagebox("ESSA Version: " + fVersion)
EndFunction

Function Manual() global

	; Manually run the console commands to add keywords to
	; object targetting in console
	Debug.ExecuteConsole("AddKeyword 271bb")
	Debug.ExecuteConsole("AddKeyword 271bc")
	Debug.ExecuteConsole("AddKeyword 271bd")
	Debug.ExecuteConsole("AddKeyword 271be")
	Debug.ExecuteConsole("AddKeyword 271bf")
	Debug.ExecuteConsole("AddKeyword 271c0")
	Debug.ExecuteConsole("AddKeyword 271c1")
	Debug.ExecuteConsole("AddKeyword 271c2")
	Debug.ExecuteConsole("AddKeyword 271c5")
	Debug.ExecuteConsole("AddKeyword 271c7")
	Debug.ExecuteConsole("AddKeyword 271c8")
	Debug.ExecuteConsole("AddKeyword 271c9")
	Debug.ExecuteConsole("AddKeyword 271ca")
	Debug.ExecuteConsole("AddKeyword 271cb")
	Debug.ExecuteConsole("AddKeyword 271cc")
	Debug.ExecuteConsole("AddKeyword 271cd")
	Debug.ExecuteConsole("AddKeyword 271ce")
	Debug.ExecuteConsole("AddKeyword 271cf")
	Debug.ExecuteConsole("AddKeyword 271d0")
	Debug.ExecuteConsole("AddKeyword 271d1")
	Debug.ExecuteConsole("AddKeyword 271d2")
	Debug.ExecuteConsole("AddKeyword 271d3")
	Debug.ExecuteConsole("AddKeyword 271d4")
	Debug.ExecuteConsole("AddKeyword 271d5")
	Debug.ExecuteConsole("AddKeyword 271d6")
	Debug.ExecuteConsole("AddKeyword 10c4ab")
	Debug.ExecuteConsole("AddKeyword 143c9c")
	Debug.ExecuteConsole("AddKeyword 143c9d")
	Debug.ExecuteConsole("AddKeyword 143c9e")
	Debug.ExecuteConsole("AddKeyword 143c9f")
	Debug.ExecuteConsole("AddKeyword 145393")
	Debug.ExecuteConsole("AddKeyword 145394")
	Debug.ExecuteConsole("AddKeyword 145395")
	Debug.ExecuteConsole("AddKeyword 145397")
	Debug.ExecuteConsole("AddKeyword 145398")
	Debug.ExecuteConsole("AddKeyword 145399")
	Debug.ExecuteConsole("AddKeyword 14539b")
	Debug.ExecuteConsole("AddKeyword 14539c")
	Debug.ExecuteConsole("AddKeyword 14539d")
	Debug.ExecuteConsole("AddKeyword 14539e")
	Debug.ExecuteConsole("AddKeyword 14539f")
	Debug.ExecuteConsole("AddKeyword 145390")
	Debug.ExecuteConsole("AddKeyword 145391")
	Debug.ExecuteConsole("AddKeyword 14538f")
	Debug.ExecuteConsole("AddKeyword 1453a0")
	Debug.ExecuteConsole("AddKeyword 1453a1")
	Debug.ExecuteConsole("AddKeyword 1453a2")
	Debug.ExecuteConsole("AddKeyword 1453a3")
	Debug.ExecuteConsole("AddKeyword 1453a4")
	Debug.ExecuteConsole("AddKeyword 1453a5")
	Debug.ExecuteConsole("AddKeyword 1453a6")
	Debug.ExecuteConsole("AddKeyword 1453a7")
	Debug.ExecuteConsole("AddKeyword 1453a8")
	Debug.ExecuteConsole("AddKeyword 1453a9")
	Debug.ExecuteConsole("AddKeyword 1453aa")
	Debug.ExecuteConsole("AddKeyword 1453ab")
	Debug.ExecuteConsole("AddKeyword 1453ad")
	Debug.ExecuteConsole("AddKeyword 1453ae")
	Debug.ExecuteConsole("AddKeyword 1453af")
	Debug.ExecuteConsole("AddKeyword 1453b0")
	Debug.ExecuteConsole("AddKeyword 1453b1")
	Debug.ExecuteConsole("AddKeyword 1453b2")
	Debug.ExecuteConsole("AddKeyword 1453b3")
	Debug.ExecuteConsole("AddKeyword 1453b4")
	Debug.ExecuteConsole("AddKeyword 1453b5")
	Debug.ExecuteConsole("AddKeyword 1453b6")
	Debug.ExecuteConsole("AddKeyword 1453b7")
	Debug.ExecuteConsole("AddKeyword 1453b8")
	Debug.ExecuteConsole("AddKeyword 1453b9")
	Debug.ExecuteConsole("AddKeyword 1453ba")
	Debug.ExecuteConsole("AddKeyword 1453bb")
	Debug.ExecuteConsole("AddKeyword 1453bc")
	Debug.ExecuteConsole("AddKeyword 1453bd")
	Debug.ExecuteConsole("AddKeyword 1453be")
	Debug.ExecuteConsole("AddKeyword 1453bf")
	Debug.ExecuteConsole("AddKeyword 1453c0")
	Debug.ExecuteConsole("AddKeyword 1453c1")
	Debug.ExecuteConsole("AddKeyword 1453c2")
	Debug.ExecuteConsole("AddKeyword 1453c3")
	Debug.ExecuteConsole("AddKeyword 1453c4")
	Debug.ExecuteConsole("AddKeyword 1453c5")
	Debug.ExecuteConsole("AddKeyword 1453c6")
	Debug.ExecuteConsole("AddKeyword 1453c7")
EndFunction

Function UpdateVendors()
	
	;Wait 5 seconds before attempting anything to prevent script overloading
	Utility.Wait(5.0)

	; Inform the player that the script has begun
	Debug.Notification("The ESSA script has started processing...")

	; Get the ActorTypeHuman keyword to determine if the reference is a actor
	Keyword isHuman = Game.GetForm(0x0025E194) as Keyword

	; Get and assign the PRIDs to an int
	int technicianAtlantis = 0x0005C81D ; Regular Technician
	int technicianAkila = 0x00212B52 ; Regular Technician
	int technicianNeon = 0x0015636E ; Regular Technician
	int technicianParadiso = 0x0015D3C7 ; Regular Technician
	int technicianCydonia = 0x0016E1D6 ; Regular Technician
	int technicianHopeTown = 0x001B4BF2 ; Regular Technician
	int technicianEleos = 0x000D87A3 ; Regular Technician
	int technicianGargarin = 0x0015CF3C ; Regular Technician
	int technicianTheDen = 0x001433E7 ; Regular Technician
	int technicianHomestead = 0x00146DCB ; Regular Technician
	int technicianTaiyo = 0x0027A98B ; Veronica Young
	int technicianDeimos = 0x0027A988 ; Nikau Henderson
	int technicianStroud = 0x0027A985 ; Havershaw
	int technicianRedMile = 0x002B2BD6 ; Lon Andersson
	int technicianTheKey = 0x000153A3 ; Jasmine "Jazz" Durand

	; Get the references associated with the PRID
	ObjectReference technicianAtlantisReference = Game.GetFormFromFile(technicianAtlantis, "Starfield.esm") as ObjectReference
	ObjectReference technicianAkilaReference = Game.GetFormFromFile(technicianAkila, "Starfield.esm") as ObjectReference
	ObjectReference technicianNeonReference = Game.GetFormFromFile(technicianNeon, "Starfield.esm") as ObjectReference
	ObjectReference technicianParadisoReference = Game.GetFormFromFile(technicianParadiso, "Starfield.esm") as ObjectReference
	ObjectReference technicianCydoniaReference = Game.GetFormFromFile(technicianCydonia, "Starfield.esm") as ObjectReference
	ObjectReference technicianHopeTownReference = Game.GetFormFromFile(technicianHopeTown, "Starfield.esm") as ObjectReference
	ObjectReference technicianEleosReference = Game.GetFormFromFile(technicianEleos, "Starfield.esm") as ObjectReference
	ObjectReference technicianGargarinReference = Game.GetFormFromFile(technicianGargarin, "Starfield.esm") as ObjectReference
	ObjectReference technicianTheDenReference = Game.GetFormFromFile(technicianTheDen, "Starfield.esm") as ObjectReference
	ObjectReference technicianHomesteadReference = Game.GetFormFromFile(technicianHomestead, "Starfield.esm") as ObjectReference
	ObjectReference technicianTaiyoReference = Game.GetFormFromFile(technicianTaiyo, "Starfield.esm") as ObjectReference
	ObjectReference technicianDeimosReference = Game.GetFormFromFile(technicianDeimos, "Starfield.esm") as ObjectReference
	ObjectReference technicianStroudReference = Game.GetFormFromFile(technicianStroud, "Starfield.esm") as ObjectReference
	ObjectReference technicianRedMileReference = Game.GetFormFromFile(technicianRedMile, "Starfield.esm") as ObjectReference
	ObjectReference technicianTheKeyReference = Game.GetFormFromFile(technicianTheKey, "Starfield.esm") as ObjectReference

	; --- NEW ATLAS TECHNICIAN ---
	; Check if the reference was found and if it's an actor
	if technicianAtlantisReference && technicianAtlantisReference.HasKeyword(isHuman)
    	
    	; Cast the reference to an Actor
    	Actor technicianAtlantisActor = technicianAtlantisReference as Actor
    
    	; Check and Add Keywords to Actor
    	AddKeywordsToActor(technicianAtlantisActor)

    	; You now have a reference to the Actor associated with the PRID
    	Debug.Trace("PWO: New Atlantis Technician (" + technicianAtlantis + ") found.", 0)
	else
    	Debug.Trace("PWO: New Atlantis Technician (" + technicianAtlantis + ") not found or not an actor.", 0)
	endif

	; --- AKILA TECHNICIAN ---
	; Check if the reference was found and if it's an actor
	if technicianAkilaReference && technicianAkilaReference.HasKeyword(isHuman)
    	
    	; Cast the reference to an Actor
    	Actor technicianAkilaActor = technicianAkilaReference as Actor
    
    	; Check and Add Keywords to Actor
    	AddKeywordsToActor(technicianAkilaActor)

    	; You now have a reference to the Actor associated with the PRID
    	Debug.Trace("PWO: Akila Technician (" + technicianAkila + ") found.", 0)
	else
    	Debug.Trace("PWO: Akila Technician (" + technicianAkila + ") not found or not an actor.", 0)
	endif

	; --- NEON TECHNICIAN ---
	; Check if the reference was found and if it's an actor
	if technicianNeonReference && technicianNeonReference.HasKeyword(isHuman)
    	
    	; Cast the reference to an Actor
    	Actor technicianNeonActor = technicianNeonReference as Actor
    
    	; Check and Add Keywords to Actor
    	AddKeywordsToActor(technicianNeonActor)

    	; You now have a reference to the Actor associated with the PRID
    	Debug.Trace("PWO: Neon Technician (" + technicianNeon + ") found.", 0)
	else
    	Debug.Trace("PWO: Neon Technician (" + technicianNeon + ") not found or not an actor.", 0)
	endif

	; --- PARADISO TECHNICIAN ---
	; Check if the reference was found and if it's an actor
	if technicianParadisoReference && technicianParadisoReference.HasKeyword(isHuman)
    	
    	; Cast the reference to an Actor
    	Actor technicianParadisoActor = technicianParadisoReference as Actor
    
    	; Check and Add Keywords to Actor
    	AddKeywordsToActor(technicianParadisoActor)

    	; You now have a reference to the Actor associated with the PRID
    	Debug.Trace("PWO: Paradiso Technician (" + technicianParadiso + ") found.", 0)
	else
    	Debug.Trace("PWO: Paradiso Technician (" + technicianParadiso + ") not found or not an actor.", 0)
	endif

	; --- CYDONIA TECHNICIAN ---
	; Check if the reference was found and if it's an actor
	if technicianCydoniaReference && technicianCydoniaReference.HasKeyword(isHuman)
    	
    	; Cast the reference to an Actor
    	Actor technicianCydoniaActor = technicianCydoniaReference as Actor
    
    	; Check and Add Keywords to Actor
    	AddKeywordsToActor(technicianCydoniaActor)

    	; You now have a reference to the Actor associated with the PRID
    	Debug.Trace("PWO: Cydonia Technician (" + technicianCydonia + ") found.", 0)
	else
    	Debug.Trace("PWO: Cydonia Technician (" + technicianCydonia + ") not found or not an actor.", 0)
	endif

	; --- HOPETOWN TECHNICIAN ---
	; Check if the reference was found and if it's an actor
	if technicianHopeTownReference && technicianHopeTownReference.HasKeyword(isHuman)
    	
    	; Cast the reference to an Actor
    	Actor technicianHopeTownActor = technicianHopeTownReference as Actor
    
    	; Check and Add Keywords to Actor
    	AddKeywordsToActor(technicianHopeTownActor)

    	; You now have a reference to the Actor associated with the PRID
    	Debug.Trace("PWO: Hopetown Technician (" + technicianHopeTown + ") found.", 0)
	else
    	Debug.Trace("PWO: Hopetown Technician (" + technicianHopeTown + ") not found or not an actor.", 0)
	endif

	; --- ELEOS TECHNICIAN ---
	; Check if the reference was found and if it's an actor
	if technicianEleosReference && technicianEleosReference.HasKeyword(isHuman)
    	
    	; Cast the reference to an Actor
    	Actor technicianEleosActor = technicianEleosReference as Actor
    
    	; Check and Add Keywords to Actor
    	AddKeywordsToActor(technicianEleosActor)

    	; You now have a reference to the Actor associated with the PRID
    	Debug.Trace("PWO: Eleos Technician (" + technicianEleos + ") found.", 0)
	else
    	Debug.Trace("PWO: Eleos Technician (" + technicianEleos + ") not found or not an actor.", 0)
	endif

	; --- GARGARIN TECHNICIAN ---
	; Check if the reference was found and if it's an actor
	if technicianGargarinReference && technicianGargarinReference.HasKeyword(isHuman)
    	
    	; Cast the reference to an Actor
    	Actor technicianGargarinActor = technicianGargarinReference as Actor
    
    	; Check and Add Keywords to Actor
    	AddKeywordsToActor(technicianGargarinActor)

    	; You now have a reference to the Actor associated with the PRID
    	Debug.Trace("PWO: Gargarin Technician (" + technicianGargarin + ") found.", 0)
	else
    	Debug.Trace("PWO: Gargarin Technician (" + technicianGargarin + ") not found or not an actor.", 0)
	endif

	; --- THE DEN TECHNICIAN ---
	; Check if the reference was found and if it's an actor
	if technicianTheDenReference && technicianTheDenReference.HasKeyword(isHuman)
    	
    	; Cast the reference to an Actor
    	Actor technicianTheDenActor = technicianTheDenReference as Actor
    
    	; Check and Add Keywords to Actor
    	AddKeywordsToActor(technicianTheDenActor)

    	; You now have a reference to the Actor associated with the PRID
    	Debug.Trace("PWO: The Den Technician (" + technicianTheDen + ") found.", 0)
	else
    	Debug.Trace("PWO: The Den Technician (" + technicianTheDen + ") not found or not an actor.", 0)
	endif

	; --- HOMESTEAD TECHNICIAN ---
	; Check if the reference was found and if it's an actor
	if technicianHomesteadReference && technicianHomesteadReference.HasKeyword(isHuman)
    	
    	; Cast the reference to an Actor
    	Actor technicianHomesteadActor = technicianHomesteadReference as Actor
    
    	; Check and Add Keywords to Actor
    	AddKeywordsToActor(technicianHomesteadActor)

    	; You now have a reference to the Actor associated with the PRID
    	Debug.Trace("PWO: Homestead Technician (" + technicianHomestead + ") found.", 0)
	else
    	Debug.Trace("PWO: Homestead Technician (" + technicianHomestead + ") not found or not an actor.", 0)
	endif

	; --- TAIYO TECHNICIAN ---
	; Check if the reference was found and if it's an actor
	if technicianTaiyoReference && technicianTaiyoReference.HasKeyword(isHuman)
    	
    	; Cast the reference to an Actor
    	Actor technicianTaiyoActor = technicianTaiyoReference as Actor
    
    	; Check and Add Keywords to Actor
    	AddKeywordsToActor(technicianTaiyoActor)

    	; You now have a reference to the Actor associated with the PRID
    	Debug.Trace("PWO: Taiyo Technician (" + technicianTaiyo + ") found.", 0)
	else
    	Debug.Trace("PWO: Taiyo Technician (" + technicianTaiyo + ") not found or not an actor.", 0)
	endif

	; --- DEIMOS TECHNICIAN ---
	; Check if the reference was found and if it's an actor
	if technicianDeimosReference && technicianDeimosReference.HasKeyword(isHuman)
    	
    	; Cast the reference to an Actor
    	Actor technicianDeimosActor = technicianDeimosReference as Actor
    
    	; Check and Add Keywords to Actor
    	AddKeywordsToActor(technicianDeimosActor)

    	; You now have a reference to the Actor associated with the PRID
    	Debug.Trace("PWO: Deimos Technician (" + technicianDeimos + ") found.", 0)
	else
    	Debug.Trace("PWO: Deimos Technician (" + technicianDeimos + ") not found or not an actor.", 0)
	endif

	; --- STROUD TECHNICIAN ---
	; Check if the reference was found and if it's an actor
	if technicianStroudReference && technicianStroudReference.HasKeyword(isHuman)
    	
    	; Cast the reference to an Actor
    	Actor technicianStroudActor = technicianStroudReference as Actor
    
    	; Check and Add Keywords to Actor
    	AddKeywordsToActor(technicianStroudActor)

    	; You now have a reference to the Actor associated with the PRID
    	Debug.Trace("PWO: Stroud Technician (" + technicianStroud + ") found.", 0)
	else
    	Debug.Trace("PWO: Stroud Technician (" + technicianStroud + ") not found or not an actor.", 0)
	endif

	; --- RED MILE TECHNICIAN ---
	; Check if the reference was found and if it's an actor
	if technicianRedMileReference && technicianRedMileReference.HasKeyword(isHuman)
    	
    	; Cast the reference to an Actor
    	Actor technicianRedMileActor = technicianRedMileReference as Actor
    
    	; Check and Add Keywords to Actor
    	AddKeywordsToActor(technicianRedMileActor)

    	; You now have a reference to the Actor associated with the PRID
    	Debug.Trace("PWO: Red Mile Technician (" + technicianRedMile + ") found.", 0)
	else
    	Debug.Trace("PWO: Red Mile Technician (" + technicianRedMile + ") not found or not an actor.", 0)
	endif

	; --- THE KEY TECHNICIAN ---
	; Check if the reference was found and if it's an actor
	if technicianTheKeyReference && technicianTheKeyReference.HasKeyword(isHuman)
    	
    	; Cast the reference to an Actor
    	Actor technicianTheKeyActor = technicianTheKeyReference as Actor
    
    	; Check and Add Keywords to Actor
    	AddKeywordsToActor(technicianTheKeyActor)

    	; You now have a reference to the Actor associated with the PRID
    	Debug.Trace("PWO: The Key Technician (" + technicianTheKey + ") found.", 0)
	else
    	Debug.Trace("PWO: The Key Technician (" + technicianTheKey + ") not found or not an actor.", 0)
	endif

	;Wait 2 seconds to delay the notification slightly
	Utility.Wait(2)

	Debug.Notification("The ESSA script has finished running!")

EndFunction

; Function to add keywords to an actor
Function AddKeywordsToActor(Actor actor)
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
	Keyword VendorSM_CrimsonFleet_BlackMarket = Game.GetForm(0x10c4ab) as Keyword
	Keyword VendorSM_Trident_Bridge = Game.GetForm(0x143C9C) as Keyword
	Keyword VendorSM_Trident_Habitat_Struct_Common = Game.GetForm(0x143c9d) as Keyword
	Keyword VendorSM_BasicParts_Protectorate_Cargo = Game.GetForm(0x143c9e) as Keyword
	Keyword VendorSM_BasicParts_Protectorate_Shields = Game.GetForm(0x143c9f) as Keyword
	Keyword VendorSM_ShieldedCargo = Game.GetForm(0x143CA0) as Keyword
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
	Keyword VendorSM_Hopetech_Cargo_DELETEME = Game.GetForm(0x1453bb) as Keyword ; Deleted reference?
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

	If !actor.HasKeyword(VendorSM_CrimsonFleet_BlackMarket)
    	actor.AddKeyword(VendorSM_CrimsonFleet_BlackMarket)
	EndIf

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

	If !actor.HasKeyword(VendorSM_ShieldedCargo)
    	actor.AddKeyword(VendorSM_ShieldedCargo)
	EndIf

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

	If !actor.HasKeyword(VendorSM_Hopetech_Cargo_DELETEME)
	    actor.AddKeyword(VendorSM_Hopetech_Cargo_DELETEME)
	EndIf

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