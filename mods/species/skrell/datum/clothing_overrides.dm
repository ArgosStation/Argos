/obj/item/clothing/under/Initialize()
	. = ..()
	if(length(bodytype_restricted) && !("exclude" in bodytype_restricted))
		bodytype_restricted |= BODYTYPE_SKRELL

/obj/item/clothing/suit/Initialize()
	. = ..()
	if(length(bodytype_restricted) && !("exclude" in bodytype_restricted))
		bodytype_restricted |= BODYTYPE_SKRELL

/obj/machinery/suit_cycler/Initialize()
	..(available_bodytypes |= BODYTYPE_SKRELL)

/obj/item/clothing/head/helmet/space/void/merc/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, BODYTYPE_SKRELL, 'mods/species/skrell/icons/head/void_syndie.dmi')

/obj/item/clothing/head/helmet/space/void/engineering/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, BODYTYPE_SKRELL, 'mods/species/skrell/icons/head/void_engi.dmi')

/obj/item/clothing/head/helmet/space/void/atmos/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, BODYTYPE_SKRELL, 'mods/species/skrell/icons/head/void_atmos.dmi')

/obj/item/clothing/head/helmet/space/void/mining/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, BODYTYPE_SKRELL, 'mods/species/skrell/icons/head/void_mining.dmi')

/obj/item/clothing/head/helmet/space/void/excavation/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, BODYTYPE_SKRELL, 'mods/species/skrell/icons/head/void_mining.dmi')

/obj/item/clothing/head/helmet/space/void/medical/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, BODYTYPE_SKRELL, 'mods/species/skrell/icons/head/void_med.dmi')

/obj/item/clothing/head/helmet/space/void/security/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, BODYTYPE_SKRELL, 'mods/species/skrell/icons/head/void_sec.dmi')

/obj/item/clothing/head/helmet/space/void/security/alt/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, BODYTYPE_SKRELL, 'mods/species/skrell/icons/head/void_secalt.dmi')

