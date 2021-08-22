/decl/psionic_faculty/energistics
	id = PSI_ENERGISTICS
	name = "Energistics"
	associated_intent = I_HURT
	armour_types = list("bomb", "laser", "energy")

/decl/psionic_power/energistics
	faculty = PSI_ENERGISTICS

// ----- OPERANT POWERS -----

// Spark, allows you to create sparks and potentially start fires.
/decl/psionic_power/energistics/spark
	name =				"Spark"
	cost =				8
	cooldown =			10
	use_melee =			TRUE
	min_rank =			PSI_RANK_OPERANT
	use_description =	"Target a non-living target in melee range on harm intent to cause some sparks to appear. This can light fires."

/decl/psionic_power/energistics/spark/invoke(var/mob/living/user, var/mob/living/target)
	if(isnull(target) || istype(target)) return FALSE
	. = ..()
	if(.)
		if(istype(target,/obj/item/clothing/mask/smokable/cigarette))
			var/decl/pronouns/G = user.get_pronouns()
			var/obj/item/clothing/mask/smokable/cigarette/S = target
			S.light("\The [user] snaps [G.his] fingers and \the [S] lights up.")
			playsound(S.loc, "sparks", 50, 1)
		else
			spark_at(get_turf(target))
		return TRUE

// Flare, allows you to flash someone with a burst from your glowy eyes, provided they're enabled.
/decl/psionic_power/energistics/flare
	name =				"Flare"
	cost =				10
	cooldown =			75
	use_melee =			TRUE
	min_rank =			PSI_RANK_OPERANT
	use_description =	"With your Psi-Ocular Luminescence active, target the eyes while on harm intent in melee range to unleash a burst of light and stun the target."
	use_sound =			'sound/effects/psi/power_flare.ogg'
	var/str_min =		1.5

/decl/psionic_power/energistics/flare/invoke(var/mob/living/user, var/mob/living/target)
	if(user.zone_sel.selecting != BP_EYES)
		return FALSE
	if(!user.psi.use_eye_glow)
		return FALSE
	if(istype(target, /turf))
		return FALSE
	. = ..()
	if(.)
		user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)
		user.do_attack_animation(target)

		var/flashfail = 0
		var/flash_strength = (rand(str_min, str_min * user.psi.get_rank(PSI_ENERGISTICS)))

		if(iscarbon(target))
			if(target.stat!=DEAD)
				var/mob/living/carbon/C = target
				var/safety = C.eyecheck()
				if(safety < FLASH_PROTECTION_MODERATE)
					if(ishuman(target))
						var/mob/living/carbon/human/H = target
						flash_strength = round(H.getFlashMod() * flash_strength)
						if(safety > FLASH_PROTECTION_NONE)
							flash_strength = (flash_strength / 2)
					if(flash_strength > 0)
						target.flash_eyes(FLASH_PROTECTION_MODERATE - safety)
						target.Stun(flash_strength / 2)
						target.eye_blurry += flash_strength
						target.confused += (flash_strength + 2)
						if(flash_strength > 3)
							target.drop_l_hand()
							target.drop_r_hand()
						if(flash_strength > 5)
							target.Weaken(2)
				else
					flashfail = 1

		else if(isanimal(target))
			var/mob/living/simple_animal/SA = target
			var/safety = SA.eyecheck()
			if(safety < FLASH_PROTECTION_MAJOR)
				SA.Weaken(2)
				if(safety < FLASH_PROTECTION_MODERATE)
					SA.Stun(flash_strength - 2)
					SA.flash_eyes(2)
					SA.eye_blurry += flash_strength
					SA.confused += flash_strength
			else
				flashfail = 1

		else if(issilicon(target))
			target.Weaken(rand(str_min, 6))

		else
			flashfail = 1

		if(!flashfail)
			if(!issilicon(target))
				user.visible_message(SPAN_WARNING("[user] blinds [target] with a flare from their eyes!"))
			else
				user.visible_message(SPAN_NOTICE("[user] overloads [target]'s sensors with a flare from their eyes!"))
		else
			user.visible_message(SPAN_NOTICE("[user] fails to blind [target] with a flare from their eyes!"))

		return TRUE

// ----- MASTER POWERS -----

// Disrupt, allows you to create a localised electromagnetic pulse against a nearby target.
/decl/psionic_power/energistics/disrupt
	name =				"Disrupt"
	cost =				20
	cooldown =			100
	use_melee =			TRUE
	min_rank =			PSI_RANK_MASTER
	use_description =	"Target the head, eyes or mouth while on harm intent to use a melee attack that causes a localized electromagnetic pulse."

/decl/psionic_power/energistics/disrupt/invoke(var/mob/living/user, var/mob/living/target)
	if(user.zone_sel.selecting != BP_HEAD && user.zone_sel.selecting != BP_EYES && user.zone_sel.selecting != BP_MOUTH)
		return FALSE
	if(istype(target, /turf))
		return FALSE
	. = ..()
	if(.)
		user.visible_message(SPAN_DANGER("\The [user] releases a gout of crackling static and arcing lightning over \the [target]!"))
		empulse(target, 0, 1)
		return TRUE

// Zorch, allows you to fire tasers, lasers, or deadlier lasers from your eyes. Lethality scales with Energistics rank.
/decl/psionic_power/energistics/zorch
	name =				"Zorch"
	cost =				25
	cooldown =			80
	use_ranged =		TRUE
	min_rank =			PSI_RANK_MASTER
	use_description =	"Use this ranged laser attack while on harm intent. Your mastery of Energistics will determine how powerful the laser is. Be wary of overuse, and try not to fry your own brain."

/decl/psionic_power/energistics/zorch/invoke(var/mob/living/user, var/mob/living/target)
	. = ..()
	if(.)
		user.visible_message(SPAN_DANGER("\The [user]'s eyes flare with light!"))

		var/user_rank = user.psi.get_rank(faculty)
		var/obj/item/projectile/pew
		var/pew_sound

		switch(user_rank)
			if(PSI_RANK_PARAMOUNT)
				pew = new /obj/item/projectile/beam/heavylaser(get_turf(user))
				pew.name = "gigawatt mental laser"
				pew_sound = 'sound/weapons/lasercannonfire.ogg'
			if(PSI_RANK_GRANDMASTER)
				pew = new /obj/item/projectile/beam/midlaser(get_turf(user))
				pew.name = "megawatt mental laser"
				pew_sound = 'sound/weapons/Laser.ogg'
			if(PSI_RANK_MASTER)
				pew = new /obj/item/projectile/beam/stun(get_turf(user))
				pew.name = "mental laser"
				pew_sound = 'sound/weapons/Taser.ogg'

		if(istype(pew))
			playsound(pew.loc, pew_sound, 25, 1)
			pew.original = target
			pew.current = target
			pew.starting = get_turf(user)
			pew.shot_from = user
			pew.launch(target, user.zone_sel.selecting, (target.x - user.x), (target.y - user.y))
			return TRUE

// ----- GRANDMASTER POWERS -----

// Electrocute, allows you to electrocute a target at melee range.
/decl/psionic_power/energistics/electrocute
	name =				"Electrocute"
	cost =				30
	cooldown =			100
	use_melee =			TRUE
	min_rank =			PSI_RANK_GRANDMASTER
	use_description =	"Target the chest or groin while on harm intent to use a melee attack that electrocutes a victim."

/decl/psionic_power/energistics/electrocute/invoke(var/mob/living/user, var/mob/living/target)
	if(user.zone_sel.selecting != BP_CHEST && user.zone_sel.selecting != BP_GROIN)
		return FALSE
	if(istype(target, /turf))
		return FALSE
	. = ..()
	if(.)
		user.visible_message(SPAN_DANGER("\The [user] sends a jolt of electricity arcing into \the [target]!"))
		if(istype(target))
			target.electrocute_act(rand(15, 45), user, 1, user.zone_sel.selecting)
			return TRUE
		else if(isatom(target))
			var/obj/item/cell/charging_cell = target.get_cell()
			if(istype(charging_cell))
				charging_cell.give(rand(15, 45))
			return TRUE