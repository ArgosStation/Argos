/obj/item/clothing/gloves/vox
	desc = "These bizarre gauntlets seem to be fitted for... bird claws?"
	name = "insulated gauntlets"
	icon = 'mods/species/vox/icons/clothing/gloves.dmi'
	siemens_coefficient = 0
	permeability_coefficient = 0.05
	bodytype_restricted = list(BODYTYPE_VOX)

/obj/item/clothing/gloves/vox/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, BODYTYPE_VOX, 'mods/species/vox/icons/clothing/gloves.dmi')

/datum/gear/gloves/vox
	sort_category = "Xenowear"
	category = /datum/gear/gloves/vox
	whitelisted = list(SPECIES_VOX)

/datum/gear/gloves/vox/insuls
	display_name = "insulated gauntlets (Vox)"
	path = /obj/item/clothing/gloves/vox
