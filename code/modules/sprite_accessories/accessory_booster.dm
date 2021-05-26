/datum/sprite_accessory/marking/booster
	species_allowed = list(SPECIES_HUMAN)
	subspecies_allowed = list(SPECIES_HUMAN)

/datum/sprite_accessory/marking/booster/ears
	body_parts = list(BP_HEAD)
	disallows = list(
		/datum/sprite_accessory/marking/booster/ears,
		/datum/sprite_accessory/marking/booster/horns/ram
	blend = ICON_MULTIPLY
	)

/datum/sprite_accessory/marking/booster/horns
	body_parts = list(BP_HEAD)
	disallows = list(/datum/sprite_accessory/marking/booster/horns)
draw_target = MARKING_TARGET_HAIR

/datum/sprite_accessory/marking/booster/ears/cat
	icon_state = "ears_cat"
	name = "Ear Biomods (Cat)"
	icon = 'icons/mob/human_races/species/human/booster/ears_cat.dmi'

/datum/sprite_accessory/marking/booster/ears/rabbit
	icon_state = "ears_bun"
	name = "Ear Biomods (Rabbit)"
	icon = 'icons/mob/human_races/species/human/booster/ears_bun.dmi'


/datum/sprite_accessory/marking/booster/horns/ram
	icon_state = "horns_ram"
	name = "Horn Biomods (Ram)"
	icon = 'icons/mob/human_races/species/human/booster/horns_ram.dmi'
	disallows = list(
		/datum/sprite_accessory/marking/booster/horns,
		/datum/sprite_accessory/marking/booster/ears
	)

/datum/sprite_accessory/marking/booster/horns/unathi
	icon_state = "horns_unathi"
	name = "Horn Biomods (Unathi)"
	icon = 'icons/mob/human_races/species/human/booster/horns_unathi.dmi'

/datum/sprite_accessory/marking/booster/horns/spines_short
	icon_state = "horns_spines_short"
	name = "Horn Biomods (Short Spines)"
	icon = 'icons/mob/human_races/species/human/booster/horns_spines_short.dmi'

/datum/sprite_accessory/marking/booster/horns/spines_long
	icon_state = "horns_spines_long"
	name = "Horn Biomods (Long Spines)"
	icon = 'icons/mob/human_races/species/human/booster/horns_spines_long.dmi'

/datum/sprite_accessory/marking/booster/horns/frills_long
	icon_state = "horns_frills_long"
	name = "Horn Biomods (Long Frills)"
	icon = 'icons/mob/human_races/species/human/booster/horns_frills_long.dmi'

/datum/sprite_accessory/marking/booster/horns/frills_short
	icon_state = "horns_frills_short"
	name = "Horn Biomods (Short Frills)"
	icon = 'icons/mob/human_races/species/human/booster/horns_frills_short.dmi'
