#define SPECIES_SKRELL  "Skrell"
#define LANGUAGE_SKRELL "Skrell Language"
#define IS_SKRELL       "Skrell"
#define BODYTYPE_SKRELL "amphibian body"

/decl/modpack/skrell
	name = "Skrell"

/mob/living/carbon/human/skrell/Initialize(mapload)
	..(mapload, SPECIES_SKRELL)
