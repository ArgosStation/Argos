/datum/appearance_descriptor/age/skrell
	standalone_value_descriptors = list(
		"an infant" =       1,
		"a toddler" =       3,
		"a child" =         7,
		"an adolescent" =  13,
		"a young adult" =  18,
		"an adult" =       25,
		"middle-aged" =    50,
		"aging" =         150,
		"elderly" =       260
	)

/decl/species/skrell
	name = SPECIES_SKRELL
	name_plural = SPECIES_SKRELL
	preview_icon = 'mods/species/skrell/icons/preview.dmi'

	available_bodytypes = list(
		/decl/bodytype/skrell
	)

	primitive_form = "Neaera"
	darksight_range = 4
	breath_pressure = 18
	burn_mod = 0.9
	oxy_mod = 1.3
	flash_mod = 1.2
	toxins_mod = 0.8
	siemens_coefficient = 1.3

	age_descriptor = /datum/appearance_descriptor/age/skrell

	body_temperature = null // cold-blooded, implemented the same way nabbers do it

	description = "An amphibious species, Skrell come from the star system known as Qerr'Vallis, which translates to 'Star of \
	the royals' or 'Light of the Crown'.<br/><br/>Skrell are a highly advanced and logical race who live under the rule \
	of the Qerr'Katish, a caste within their society which keeps the empire of the Skrell running smoothly. Skrell are \
	herbivores on the whole and tend to be co-operative with the other species of the galaxy, although they rarely reveal \
	the secrets of their empire to their allies."

	cold_level_1 = 280 //Default 260 - Lower is better
	cold_level_2 = 220 //Default 200
	cold_level_3 = 130 //Default 120

	heat_level_1 = 420 //Default 360 - Higher is better
	heat_level_2 = 480 //Default 400
	heat_level_3 = 1100 //Default 1000

	available_cultural_info = list(
		TAG_CULTURE = list(
			/decl/cultural_info/culture/skrell,
			/decl/cultural_info/culture/skrell/caste_malish,
			/decl/cultural_info/culture/skrell/caste_kanin,
			/decl/cultural_info/culture/skrell/caste_talum,
			/decl/cultural_info/culture/skrell/caste_raskinta
		),
		TAG_HOMEWORLD = list(
			/decl/cultural_info/location/qerrbalak,
			/decl/cultural_info/location/talamira,
			/decl/cultural_info/location/roasora,
			/decl/cultural_info/location/mitorqi,
			/decl/cultural_info/location/skrellspace
		),
		TAG_FACTION = list(
			/decl/cultural_info/faction/skrell,
			/decl/cultural_info/faction/skrell/qalaoa,
			/decl/cultural_info/faction/skrell/yiitalana,
			/decl/cultural_info/faction/skrell/krrigli,
			/decl/cultural_info/faction/skrell/qonprri,
			/decl/cultural_info/faction/skrell/casteless,
			/decl/cultural_info/faction/skrell/union
		),
		TAG_RELIGION =  list(/decl/cultural_info/religion/other)
	)

	spawn_flags = SPECIES_CAN_JOIN | SPECIES_NO_ROBOTIC_INTERNAL_ORGANS
	appearance_flags = HAS_HAIR_COLOR | HAS_LIPS | HAS_SKIN_COLOR | HAS_EYE_COLOR

	unarmed_attacks = list(
		/decl/natural_attack/stomp,
		/decl/natural_attack/kick,
		/decl/natural_attack/punch,
		/decl/natural_attack/bite
	)

	reagent_tag = IS_SKRELL
	flesh_color = "#8cd7a3"
	blood_color = "#1d2cbf"
	base_color = "#006666"
	organs_icon = 'mods/species/skrell/icons/organs.dmi'

	appearance_descriptors = list(
		/datum/appearance_descriptor/height = 1.25,
		/datum/appearance_descriptor/build =  0
		)

	heat_discomfort_level = 320
	heat_discomfort_strings = list(
		"You feel soothingly warm.",
		"You feel the heat sink into your bones.",
		"You feel warm enough to take a nap."
		)

	cold_discomfort_level = 292
	cold_discomfort_strings = list(
		"You feel chilly.",
		"You feel sluggish and cold.",
		"Your skin bristles against the cold."
		)

	override_organ_types = list(
		BP_EYES = /obj/item/organ/internal/eyes/skrell,
		BP_LUNGS = /obj/item/organ/internal/lungs/gills
	)


	exertion_effect_chance = 10
	exertion_hydration_scale = 1
	exertion_reagent_scale = 1
	exertion_reagent_path = /decl/material/liquid/lactate
	exertion_emotes_biological = list(
		/decl/emote/exertion/biological,
		/decl/emote/exertion/biological/breath,
		/decl/emote/exertion/biological/pant
	)
