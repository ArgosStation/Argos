/obj/item/organ/external/arm/throom
	name = "left arm"
	organ_tag = BP_L_ARM
	icon_name = "l_arm"
	max_damage = 100
	min_broken_damage = 50
	w_class = ITEM_SIZE_NORMAL
	parent_organ = BP_CHEST
	limb_flags = ORGAN_FLAG_CAN_AMPUTATE
	icon = 'mods/species/throom/icons/sporeling/body.dmi'
	joint = "structural ligament"
	dislocated = -1

/obj/item/organ/external/arm/right/throom
	name = "right arm"
	organ_tag = BP_R_ARM
	icon_name = "r_arm"
	max_damage = 100
	min_broken_damage = 50
	w_class = ITEM_SIZE_NORMAL
	parent_organ = BP_CHEST
	limb_flags = ORGAN_FLAG_CAN_AMPUTATE
	icon = 'mods/species/throom/icons/sporeling/body.dmi'
	joint = "structural ligament"
	dislocated = -1

/obj/item/organ/external/leg/throom
	name = "left leg"
	organ_tag = BP_L_LEG
	icon_name = "l_leg"
	max_damage = 100
	min_broken_damage = 50
	w_class = ITEM_SIZE_NORMAL
	icon_position = LEFT
	parent_organ = BP_GROIN
	limb_flags = ORGAN_FLAG_CAN_AMPUTATE | ORGAN_FLAG_CAN_STAND
	icon = 'mods/species/throom/icons/sporeling/body.dmi'
	joint = "structural ligament"
	dislocated = -1

/obj/item/organ/external/leg/right/throom
	name = "right leg"
	organ_tag = BP_R_LEG
	icon_name = "r_leg"
	max_damage = 100
	min_broken_damage = 50
	w_class = ITEM_SIZE_NORMAL
	icon_position = LEFT
	parent_organ = BP_GROIN
	limb_flags = ORGAN_FLAG_CAN_AMPUTATE | ORGAN_FLAG_CAN_STAND
	icon = 'mods/species/throom/icons/sporeling/body.dmi'
	joint = "structural ligament"
	dislocated = -1

/obj/item/organ/external/foot/throom
	name = "left nub"
	organ_tag = BP_L_FOOT
	icon_name = "l_foot"
	max_damage = 100
	min_broken_damage = 50
	w_class = ITEM_SIZE_SMALL
	icon_position = LEFT
	parent_organ = BP_L_LEG
	limb_flags = ORGAN_FLAG_CAN_AMPUTATE | ORGAN_FLAG_CAN_STAND
	icon = 'mods/species/throom/icons/sporeling/body.dmi'
	joint = "structural ligament"
	amputation_point = "midpoint"
	dislocated = -1

/obj/item/organ/external/foot/right/throom
	name = "right nub"
	organ_tag = BP_R_FOOT
	icon_name = "r_foot"
	max_damage = 100
	min_broken_damage = 50
	w_class = ITEM_SIZE_SMALL
	icon_position = LEFT
	parent_organ = BP_R_LEG
	limb_flags = ORGAN_FLAG_CAN_AMPUTATE | ORGAN_FLAG_CAN_STAND
	icon = 'mods/species/throom/icons/sporeling/body.dmi'
	joint = "structural ligament"
	amputation_point = "midpoint"
	dislocated = -1

/obj/item/organ/external/hand/throom
	name = "left grubber"
	organ_tag = BP_L_HAND
	icon_name = "l_hand"
	max_damage = 30
	min_broken_damage = 15
	w_class = ITEM_SIZE_SMALL
	parent_organ = BP_L_ARM
	limb_flags = ORGAN_FLAG_CAN_AMPUTATE
	pass_flags = PASS_FLAG_TABLE
	icon = 'mods/species/throom/icons/sporeling/body.dmi'
	joint = "structural ligament"
	dislocated = -1

/obj/item/organ/external/hand/right/throom
	name = "right grubber"
	organ_tag = BP_R_HAND
	icon_name = "r_hand"
	max_damage = 30
	min_broken_damage = 15
	w_class = ITEM_SIZE_SMALL
	parent_organ = BP_R_ARM
	limb_flags = ORGAN_FLAG_CAN_AMPUTATE
	pass_flags = PASS_FLAG_TABLE
	icon = 'mods/species/throom/icons/sporeling/body.dmi'
	joint = "structural ligament"
	dislocated = -1

/obj/item/organ/external/chest/throom
	name = "stem"
	organ_tag = BP_CHEST
	icon_name = "torso_m"
	max_damage = 200
	min_broken_damage = 100
	w_class = ITEM_SIZE_HUGE
	cavity_max_w_class = ITEM_SIZE_NORMAL
	vital = 1
	parent_organ = null
	limb_flags = ORGAN_FLAG_HEALS_OVERKILL
	icon = 'mods/species/throom/icons/sporeling/body.dmi'
	joint = "structural ligament"
	dislocated = -1

/obj/item/organ/external/groin/throom
	name = "volva"
	organ_tag = BP_GROIN
	icon_name = "groin_m"
	max_damage = 100
	min_broken_damage = 50
	w_class = ITEM_SIZE_LARGE
	cavity_max_w_class = ITEM_SIZE_SMALL
	parent_organ = BP_CHEST
	icon = 'mods/species/throom/icons/sporeling/body.dmi'
	joint = "structural ligament"
	dislocated = -1

/obj/item/organ/external/head/throom
	name = "cap"
	max_damage = 100
	min_broken_damage = 50
	glowing_eyes = TRUE
	limb_flags = ORGAN_FLAG_CAN_AMPUTATE
	cavity_max_w_class = ITEM_SIZE_SMALL
	icon_name = "head_m"
	icon = 'mods/species/throom/icons/sporeling/body.dmi'
	joint = "structural ligament"
	dislocated = -1

/obj/item/organ/external/head/throom/removed()
	var/mob/living/carbon/human/H = owner
	..()
	if(!istype(H) || !H.organs || !H.organs.len)
		H.death()