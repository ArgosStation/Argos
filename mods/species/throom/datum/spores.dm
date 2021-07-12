/datum/seed/throom
	name = "throom"
	seed_name = "throom"
	seed_noun = SEED_NOUN_SPORES
	display_name = "throom sproutling"
	can_self_harvest = 1
	has_mob_product = /mob/living/carbon/human/throom

/datum/seed/throom/New()
	..()
	set_trait(TRAIT_IMMUTABLE,1)
	set_trait(TRAIT_ENDURANCE,8)
	set_trait(TRAIT_MATURATION,5)
	set_trait(TRAIT_PRODUCTION,10)
	set_trait(TRAIT_YIELD,1)
	set_trait(TRAIT_POTENCY,30)
	set_trait(TRAIT_PRODUCT_ICON,"mushroom8")
	set_trait(TRAIT_PRODUCT_COLOUR,"throom")
	set_trait(TRAIT_PLANT_COLOUR,"#41255c")

