/datum/appearance_descriptor/age/throom
	chargen_min_index = 3
	chargen_max_index = 6
	standalone_value_descriptors = list(
		"a newborn" =     1,
		"an adolescent" =   6,
		"weathered" =  12
	)

/decl/species/throom
	name = SPECIES_THROOM
	name_plural = "Sporelings"

	description = "The sporelings are an oddity, previously unknown to human-kind before the collapse,\
	these small mushroom-like humanoids have been appearing in and around human space in increasing frequency, \
	with some taking up residence aboard civilized vessels."

	available_bodytypes = list(/decl/bodytype/throom)

	age_descriptor = /datum/appearance_descriptor/age/throom

	hidden_from_codex = FALSE
	silent_steps = TRUE

	mob_size = MOB_SIZE_SMALL
	holder_type = /obj/item/holder

	darksight_range = 8
	taste_sensitivity = TASTE_DULL
	speech_sounds = list('mods/species/throom/sound/throom.ogg')
	speech_chance = 20
	brute_mod 	  = 1.35
	burn_mod 	  = 1.35
	radiation_mod = 0.25

	hunger_factor = DEFAULT_HUNGER_FACTOR * 1.5
	gluttonous = GLUT_TINY

	unarmed_attacks = list(
		/decl/natural_attack/stomp,
		/decl/natural_attack/kick,
		/decl/natural_attack/punch,
		/decl/natural_attack/bite
	)

	species_flags = SPECIES_FLAG_NO_PAIN | SPECIES_FLAG_NO_POISON | SPECIES_FLAG_NO_MINOR_CUT
	appearance_flags = HAS_HAIR_COLOR | HAS_LIPS | HAS_SKIN_COLOR | HAS_EYE_COLOR
	spawn_flags = SPECIES_CAN_JOIN | SPECIES_IS_WHITELISTED

	bump_flag = MONKEY
	swap_flags = MONKEY|SIMPLE_ANIMAL
	push_flags = MONKEY|SIMPLE_ANIMAL

	siemens_coefficient = 0.2
	show_ssd = "completely quiescent"
	slowdown = -1
	thirst_factor = 0.01

	meat_type = /obj/item/chems/food/snacks/hugemushroomslice
	bone_material = null
	skin_material = null

	breath_type = null
	poison_types = null

	blood_color = "#41255c"
	flesh_color = "#8cd7a3"
	base_color = "#859494"

	warning_low_pressure = 50
	hazard_low_pressure = 0

	cold_level_1 = 80
	cold_level_2 = 50
	cold_level_3 = -1

	heat_level_1 = 410
	heat_level_2 = 440
	heat_level_3 = 800

	has_organ = list(
		BP_EYES =  /obj/item/organ/internal/eyes/throom,
		BP_STOMACH = /obj/item/organ/internal/stomach/insectoid
	)

	has_limbs = list(
		BP_CHEST =  list("path" = /obj/item/organ/external/chest/throom),
		BP_GROIN =  list("path" = /obj/item/organ/external/groin/throom),
		BP_HEAD =   list("path" = /obj/item/organ/external/head/throom),
		BP_L_ARM =  list("path" = /obj/item/organ/external/arm/throom),
		BP_R_ARM =  list("path" = /obj/item/organ/external/arm/right/throom),
		BP_L_LEG =  list("path" = /obj/item/organ/external/leg/throom),
		BP_R_LEG =  list("path" = /obj/item/organ/external/leg/right/throom),
		BP_L_HAND = list("path" = /obj/item/organ/external/hand/throom),
		BP_R_HAND = list("path" = /obj/item/organ/external/hand/right/throom),
		BP_L_FOOT = list("path" = /obj/item/organ/external/foot/throom),
		BP_R_FOOT = list("path" = /obj/item/organ/external/foot/right/throom)
		)

	death_message = "becomes completely motionless..."

	available_cultural_info = list(
		TAG_CULTURE = list(
			/decl/cultural_info/culture/throom
		)
	)

	base_auras = list(
		/obj/aura/regenerating/human/throom
		)

	inherent_verbs = list(
		/mob/living/carbon/human/proc/throom_heal_toggle,
		/mob/living/carbon/human/proc/change_colour
		)

/decl/species/throom/get_blood_name()
	return "juice"

/decl/species/throom/handle_environment_special(var/mob/living/carbon/human/H)
	if(H.InStasis() || H.stat == DEAD)
		return

	if(H.nutrition < 10)
		H.take_overall_damage(1,0)

	if(H.hydration < 550 && H.loc)
		var/is_in_water = FALSE
		if(H.loc.is_flooded(lying_mob = TRUE))
			is_in_water = TRUE
		else
			for(var/obj/structure/hygiene/shower/shower in H.loc)
				if(shower.on)
					is_in_water = TRUE
					break
		if(is_in_water)
			H.adjust_hydration(100)

/datum/sprite_accessory/hair/throom
	name = "Amanita"
	icon_state = "throom_amanita"
	icon = 'mods/species/throom/icons/sporeling/hair.dmi'
	species_allowed = list(SPECIES_THROOM)
	blend = ICON_MULTIPLY

/datum/sprite_accessory/hair/throom/bell
	name = "Bell"
	icon_state = "throom_bell"

/datum/sprite_accessory/hair/throom/kabuto
	name = "Kabuto"
	icon_state = "throom_kabuto"

/datum/sprite_accessory/hair/throom/chanterelle
	name = "Chanterelle"
	icon_state = "throom_chanterelle"

/datum/sprite_accessory/hair/throom/brim
	name = "Brim"
	icon_state = "throom_brim"

/datum/sprite_accessory/hair/throom/toadstool
	name = "Toadstool"
	icon_state = "throom_toadstool"

/datum/sprite_accessory/hair/throom/spines
	name = "Spines"
	icon_state = "throom_spines"

/datum/sprite_accessory/hair/throom/shroud
	name = "Shroud"
	icon_state = "throom_shroud"
