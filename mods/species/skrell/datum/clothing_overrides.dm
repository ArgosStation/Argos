/obj/item/clothing/under/Initialize()
	. = ..()
	if(length(bodytype_restricted) && !("exclude" in bodytype_restricted))
		bodytype_restricted |= BODYTYPE_SKRELL

/obj/item/clothing/suit/Initialize()
	. = ..()
	if(length(bodytype_restricted) && !("exclude" in bodytype_restricted))
		bodytype_restricted |= BODYTYPE_SKRELL

/obj/item/clothing/gloves/Initialize()
	. = ..()
	if(length(bodytype_restricted) && !("exclude" in bodytype_restricted))
		bodytype_restricted |= BODYTYPE_SKRELL

/obj/machinery/suit_cycler/Initialize()
	..(available_bodytypes |= BODYTYPE_SKRELL)
