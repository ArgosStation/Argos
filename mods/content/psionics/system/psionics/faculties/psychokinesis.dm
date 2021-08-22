/decl/psionic_faculty/psychokinesis
	id = PSI_PSYCHOKINESIS
	name = "Psychokinesis"
	associated_intent = I_GRAB
	armour_types = list("melee", "bullet")

/decl/psionic_power/psychokinesis
	faculty = PSI_PSYCHOKINESIS
	use_manifest = TRUE
	use_sound = null

// ----- OPERANT POWERS -----

// Psiblade, allows you to manifest a psychic blade. Lethality increases with Psychokinesis rank.
/decl/psionic_power/psychokinesis/psiblade
	name =				"Psiblade"
	cost =				25
	cooldown =			100
	min_rank =			PSI_RANK_OPERANT
	use_description =	"Click on or otherwise activate an empty hand while not targeting the hands on harm intent to manifest a psychokinetic cutting blade. The power the blade will vary based on your mastery of the faculty."
	admin_log =			FALSE

/decl/psionic_power/psychokinesis/psiblade/invoke(var/mob/living/user, var/mob/living/target)
	if((target && user != target) || user.a_intent != I_HURT)
		return FALSE

	if(user.zone_sel.selecting in list(BP_L_HAND, BP_R_HAND))
		return FALSE

	. = ..()
	if(.)
		switch(user.psi.get_rank(faculty))
			if(PSI_RANK_PARAMOUNT)
				return new /obj/item/psychic_power/psiblade/master/grand/paramount(user, user)
			if(PSI_RANK_GRANDMASTER)
				return new /obj/item/psychic_power/psiblade/master/grand(user, user)
			if(PSI_RANK_MASTER)
				return new /obj/item/psychic_power/psiblade/master(user, user)
			else
				return new /obj/item/psychic_power/psiblade(user, user)

// ----- MASTER POWERS -----

// Tinker, allows you to manifest psychokinetic tools.
/decl/psionic_power/psychokinesis/tinker
	name =				"Tinker"
	cost =				15
	cooldown =			20
	min_rank =			PSI_RANK_MASTER
	use_description =	"Click on or otherwise activate an empty hand while on help intent to manifest a psychokinetic tool. Use it in-hand to switch between tool types."
	admin_log =			FALSE

/decl/psionic_power/psychokinesis/tinker/invoke(var/mob/living/user, var/mob/living/target)
	if((target && user != target) || user.a_intent != I_HELP)
		return FALSE
	. = ..()
	if(.)
		return new /obj/item/psychic_power/tinker(user)

// ----- GRANDMASTER POWERS -----

// Telekinesis, allows you to manipulate objects, mobs and machinery at a distance.
/decl/psionic_power/psychokinesis/telekinesis
	name =				"Telekinesis"
	cost =				15
	cooldown =			20
	use_ranged =		TRUE
	use_manifest =		FALSE
	min_rank =			PSI_RANK_GRANDMASTER
	use_description =	"Click on a distant target while on grab intent to manifest a psychokinetic grip. Use it manipulate objects at a distance."
	admin_log =			FALSE
	use_sound =			'sound/effects/psi/power_used.ogg'
	var/static/list/valid_machine_types = list(
		/obj/machinery/door
	)

/decl/psionic_power/psychokinesis/telekinesis/invoke(var/mob/living/user, var/mob/living/target)
	if(user.a_intent != I_GRAB)
		return FALSE
	. = ..()
	if(.)

		var/distance = get_dist(user, target)
		if(distance > user.psi.get_rank(PSI_PSYCHOKINESIS))
			to_chat(user, SPAN_WARNING("Your telekinetic power won't reach that far."))
			return FALSE

		if(istype(target, /mob) || istype(target, /obj))
			var/obj/item/psychic_power/telekinesis/tk = new(user)
			if(tk.set_focus(target))
				tk.sparkle()
				user.visible_message(SPAN_NOTICE("\The [user] reaches out."))
				return tk
		else if(istype(target, /obj/structure))
			user.visible_message(SPAN_NOTICE("\The [user] makes a strange gesture."))
			var/obj/O = target
			O.attack_hand(user)
			return TRUE
		else if(istype(target, /obj/machinery))
			for(var/mtype in valid_machine_types)
				if(istype(target, mtype))
					var/obj/machinery/machine = target
					machine.attack_hand(user)
					return TRUE
	return FALSE

// ----- PARAMOUNT POWERS -----

// Translocate, allows you to locally teleport short distances.
/decl/psionic_power/psychokinesis/teleport
	name =				"Translocate"
	cost =				38
	cooldown =			180
	use_ranged =		TRUE
	use_manifest =		FALSE
	min_rank =			PSI_RANK_PARAMOUNT
	use_description =	"Click on a distant turf while targeting a leg or foot on grab intent to attempt to teleport to that turf."
	admin_log =			FALSE
	use_sound =			'sound/effects/psi/power_teleport.ogg'

/decl/psionic_power/psychokinesis/teleport/invoke(var/mob/living/user, var/mob/living/target)
	if(user.a_intent != I_GRAB)
		return FALSE

	if(!(user.zone_sel.selecting in list(BP_L_LEG, BP_R_LEG, BP_L_FOOT, BP_R_FOOT)))
		return FALSE

	. = ..()

	if(.)
		if(istype(target, /turf))
			var/turf/T = target
			if(T.density)
				to_chat(user, SPAN_WARNING("You cannot teleport into solid walls."))
				return FALSE
			if(T.contains_dense_objects())
				to_chat(user, SPAN_WARNING("You cannot teleport to a location with solid objects."))
				return FALSE

			user.visible_message(SPAN_NOTICE("\The [user] makes a snapping motion with their arms."))
			user.phase_out(get_turf(user))
			user.forceMove(target)
			user.phase_in(get_turf(user))

			for(var/obj/item/grab/G in user.contents)
				if(G.affecting && isliving(G.affecting))
					var/mob/living/L = G.affecting
					L.phase_out(get_turf(G.affecting))
					L.forceMove(locate(T.x + rand(-1, 1), T.y + rand(-1, 1), T.z))
					L.phase_in(get_turf(G.affecting))

	return TRUE