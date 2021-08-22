/obj/item/psychic_power
	name = "psychic power"
	icon = 'mods/content/psionics/icons/psychic_powers.dmi'
	atom_flags = 0
	simulated = 1
	anchored = 1

	pickup_sound = null
	drop_sound =   null
	equip_sound =  null

	var/maintain_cost = 3
	var/mob/living/owner

/obj/item/psychic_power/Initialize()
	owner = loc
	if(!istype(owner))
		return INITIALIZE_HINT_QDEL
	START_PROCESSING(SSprocessing, src)
	return ..()

/obj/item/psychic_power/Destroy()
	if(istype(owner) && owner.psi)
		LAZYREMOVE(owner.psi.manifested_items, src)
		UNSETEMPTY(owner.psi.manifested_items)
	STOP_PROCESSING(SSprocessing, src)
	. = ..()

/obj/item/psychic_power/get_storage_cost()
	return ITEM_SIZE_NO_CONTAINER

/obj/item/psychic_power/attack_self(var/mob/user)
	user.drop_from_inventory(src)

/obj/item/psychic_power/attack(var/mob/living/M, var/mob/living/user, var/target_zone)
	if(M.do_psionics_check(max(force, maintain_cost), user))
		to_chat(user, SPAN_DANGER("\The [src] flickers violently out of phase!"))
		return 1
	. = ..()

/obj/item/psychic_power/afterattack(var/atom/target, var/mob/living/user, var/proximity)
	if(target.do_psionics_check(max(force, maintain_cost), user))
		to_chat(user, SPAN_DANGER("\The [src] flickers violently out of phase!"))
		return
	. = ..(target, user, proximity)

/obj/item/psychic_power/dropped()
	sound_to(owner, 'sound/effects/psi/power_fail.ogg')
	..()
	qdel(src)

/obj/item/psychic_power/Process()
	if(istype(owner))
		owner.psi.spend_power(maintain_cost)
	if(!owner || owner.do_psionics_check(maintain_cost, owner) || loc != owner || !(src in owner.get_held_items()))
		if(istype(loc,/mob/living))
			var/mob/living/carbon/human/host = loc
			if(istype(host))
				for(var/obj/item/organ/external/organ in host.organs)
					for(var/obj/item/O in organ.implants)
						if(O == src)
							organ.implants -= src
			host.pinned -= src
			host.embedded -= src
			host.drop_from_inventory(src)
		else
			qdel(src)
