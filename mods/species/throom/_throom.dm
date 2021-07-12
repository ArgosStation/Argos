#define SPECIES_THROOM "Sporeling"
#define BODYTYPE_THROOM "shroomoid body"
#define LANGUAGE_THROOM "Thrum"

/decl/modpack/throom
	name = "Throom"

/decl/modpack/throom/initialize()
	. = ..()
	LAZYSET(global.holder_mob_icons, lowertext(SPECIES_THROOM), 'mods/species/throom/icons/sporeling/holder.dmi')

/mob/living/carbon/human/throom/Initialize(mapload)
	..(mapload, SPECIES_THROOM)
