/obj/item/clothing/under/vox
	has_sensor = 0
	bodytype_restricted = list(BODYTYPE_VOX)

/obj/item/clothing/under/vox/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, BODYTYPE_VOX, 'mods/species/vox/icons/clothing/under_clothing.dmi')

/obj/item/clothing/under/vox/vox_casual
	name = "alien clothing"
	desc = "This doesn't look very comfortable."
	icon = 'mods/species/vox/icons/clothing/under_clothing.dmi'
	body_parts_covered = SLOT_LEGS

/obj/item/clothing/under/vox/vox_robes
	name = "alien robes"
	desc = "Weird and flowing!"
	icon = 'mods/species/vox/icons/clothing/under_robes.dmi'

/obj/item/clothing/under/vox/vox_robes/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, BODYTYPE_VOX, 'mods/species/vox/icons/clothing/under_robes.dmi')

/datum/gear/uniform/vox
	sort_category = "Xenowear"
	category = /datum/gear/uniform/vox
	whitelisted = list(SPECIES_VOX)

/datum/gear/uniform/vox/vox_casual
	display_name = "alien clothing (Vox)"
	path = /obj/item/clothing/under/vox/vox_casual

/datum/gear/uniform/vox/vox_robes
	display_name = "alien robes (Vox)"
	path = /obj/item/clothing/under/vox/vox_robes
