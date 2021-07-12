/obj/aura/regenerating/human/throom
	brute_mult = 6
	fire_mult = 4
	tox_mult = 8
	nutrition_damage_mult = 0.5
	organ_mult = 4
	regen_message = "<span class='warning'>You sense your flesh shifting internally to regenerate your ORGAN..</span>"
	grow_chance = 5
	grow_threshold = 100
	external_nutrition_mult = 60

/obj/aura/regenerating/human/throom/external_regeneration_effect(var/obj/item/organ/external/O, var/mob/living/carbon/human/H)
	to_chat(H, "<span class='warning'>Some of your flesh splits and hurries to reform your [O.name].</span>")
	H.adjust_nutrition(-external_nutrition_mult)

/mob/living/carbon/human/proc/throom_heal_toggle()
	set name = "Toggle Heal"
	set desc = "Turn your innate healing on or off."
	set category = "Abilities"
	var/obj/aura/regenerating/human/aura = locate() in auras
	if(!aura)
		to_chat(src, SPAN_WARNING("You don't possess an innate healing ability."))
		return
	if(!aura.can_toggle())
		to_chat(src, SPAN_WARNING("You can't toggle the healing at this time!"))
		return
	aura.toggle()
	if (aura.innate_heal)
		to_chat(src, "<span class='alium'>You are now using nutrients to regenerate.</span>")
	else
		to_chat(src, "<span class='alium'>You are no longer using nutrients to regenerate.</span>")
