#if !defined(USING_MAP_DATUM)

	#include "../random_ruins/exoplanet_ruins/playablecolony/playablecolony.dm"

	#include "../../mods/content/corporate/_corporate.dme"
	#include "../../mods/species/ascent/_ascent.dme"
	#include "../../mods/content/government/away_sites/icarus/icarus.dm"
	#include "../../mods/content/government/ruins/ec_old_crash/ec_old_crash.dm"
	#include "../../mods/content/corporate/away_sites/lar_maria/lar_maria.dm"
	#include "../../mods/species/utility_frames/_utility_frames.dme"
	#include "../../mods/species/tajaran/_tajaran.dme"
	#include "../../mods/species/neoavians/_neoavians.dme"
	#include "../../mods/species/lizard/_lizard.dme"
	#include "../../mods/species/skrell/_skrell.dme"
	#include "../../mods/species/throom/_throom.dme"
	#include "../../mods/species/vox/_vox.dme"
	#include "../../mods/species/adherent/_adherent.dme"

	#include "../../mods/content/psionics/_psionics.dme"

	#include "../away/bearcat/bearcat.dm"
	#include "../away/casino/casino.dm"
	#include "../away/derelict/derelict.dm"
	#include "../away/errant_pisces/errant_pisces.dm"
	#include "../away/lost_supply_base/lost_supply_base.dm"
	#include "../away/magshield/magshield.dm"
	#include "../away/mining/mining.dm"
	#include "../away/mobius_rift/mobius_rift.dm"
	#include "../away/smugglers/smugglers.dm"
	#include "../away/slavers/slavers_base.dm"
	#include "../away/unishi/unishi.dm"
	#include "../away/yacht/yacht.dm"

	#define USING_MAP_DATUM /datum/map/sciencevessel

	#include "sciencevessel-0.dmm"
	#include "sciencevessel-1.dmm"
	#include "sciencevessel-2.dmm"
	#include "sciencevessel-3.dmm"
	#include "sciencevessel-4.dmm"

	#include "sciencevessel_antagonists.dm"
	#include "sciencevessel_areas.dm"
//	#include "sciencevessel_telecomms.dm"
	#include "sciencevessel_jobs.dm"
	#include "sciencevessel_shuttles.dm"
	#include "sciencevessel_objects.dm"
	#include "sciencevessel_overmap.dm"

	#include "jobs/_jobs.dm"
	#include "jobs/command.dm"
	#include "jobs/civilian.dm"
	#include "jobs/engineering.dm"
	#include "jobs/medical.dm"
	#include "jobs/security.dm"
	#include "jobs/science.dm"

	#include "outfits/_outfits.dm"
	#include "outfits/command.dm"
	#include "outfits/civilian.dm"
	#include "outfits/engineering.dm"
	#include "outfits/medical.dm"
	#include "outfits/science.dm"
	#include "outfits/security.dm"

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring ScienceVessel.

#endif