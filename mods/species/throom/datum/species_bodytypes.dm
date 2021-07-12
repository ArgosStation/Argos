/decl/bodytype/throom
	name =              "shroomoid"
	bodytype_category = BODYTYPE_THROOM
	icon_base =         'mods/species/throom/icons/sporeling/body.dmi'
	damage_overlays =   'mods/species/throom/icons/sporeling/damage_mask.dmi'
	blood_mask =        'mods/species/throom/icons/sporeling/blood_mask.dmi'
	limb_blend =        ICON_MULTIPLY
	health_hud_intensity = 3

/decl/bodytype/throom/Initialize()
	equip_adjust = list(
		BP_L_HAND =          list("[NORTH]" = list("x" =  3, "y" = -3), "[EAST]" = list("x" =  1, "y" = -3), "[SOUTH]" = list("x" = -3, "y" = -3),  "[WEST]" = list("x" = -5, "y" = -3)),
		BP_R_HAND =          list("[NORTH]" = list("x" = -3, "y" = -3), "[EAST]" = list("x" =  5, "y" = -3), "[SOUTH]" = list("x" =  3, "y" = -3),  "[WEST]" = list("x" = -1, "y" = -3)),
		slot_head_str =      list("[NORTH]" = list("x" =  0, "y" = -10), "[EAST]" = list("x" =  1, "y" = -10), "[SOUTH]" = list("x" =  0, "y" = -10),  "[WEST]" = list("x" = -1, "y" = -10)),
		slot_wear_mask_str = list("[NORTH]" = list("x" =  0, "y" = -6), "[EAST]" = list("x" =  2, "y" = -6), "[SOUTH]" = list("x" =  0, "y" = -6),  "[WEST]" = list("x" = -2, "y" = -6)),
		slot_l_ear_str =     list("[NORTH]" = list("x" =  0, "y" = -12), "[EAST]" = list("x" =  1, "y" = -12), "[SOUTH]" = list("x" =  0, "y" = -12),  "[WEST]" = list("x" = -1, "y" = -12)),
		slot_r_ear_str =     list("[NORTH]" = list("x" =  0, "y" = -12), "[EAST]" = list("x" =  1, "y" = -12), "[SOUTH]" = list("x" =  0, "y" = -12),  "[WEST]" = list("x" = -1, "y" = -12)),
		slot_back_str =      list("[NORTH]" = list("x" =  0, "y" = -8), "[EAST]" = list("x" =  3, "y" = -8), "[SOUTH]" = list("x" =  0, "y" = -8),  "[WEST]" = list("x" = -3, "y" = -8)),
		slot_w_uniform_str = list("[NORTH]" = list("x" =  0, "y" = -6), "[EAST]" = list("x" = -1, "y" = -6), "[SOUTH]" = list("x" =  0, "y" = -6),  "[WEST]" = list("x" =  1, "y" = -6)),
		slot_wear_id_str =   list("[NORTH]" = list("x" =  0, "y" = -6), "[EAST]" = list("x" = -1, "y" = -6), "[SOUTH]" = list("x" =  0, "y" = -6),  "[WEST]" = list("x" =  1, "y" = -6)),
		slot_wear_suit_str = list("[NORTH]" = list("x" =  0, "y" = -6), "[EAST]" = list("x" = -1, "y" = -6), "[SOUTH]" = list("x" =  0, "y" = -6),  "[WEST]" = list("x" =  1, "y" = -6)),
		slot_belt_str =      list("[NORTH]" = list("x" =  0, "y" = -6), "[EAST]" = list("x" = 1, "y" = -6),  "[SOUTH]" = list("x" =  0, "y" = -6),  "[WEST]" = list("x" =  -1, "y" = -6))
	)
	. = ..()