/datum/map/sciencevessel
	name = "ScienceVessel"
	full_name = "CSV Argo"
	path = "sciencevessel"
	ground_noun = "deck"

	station_levels = list(1, 2, 3, 4)
	contact_levels = list(1, 2, 3, 4)
	player_levels = list(1, 2, 3, 4)

	lobby_tracks = list(/decl/music_track/banned_from_argo)

	station_name  = "Civilian Science Vessel Argo"
	station_short = "CSV Argo"
	dock_name     = "Central Command"
	boss_name     = "Nanotrasen"
	boss_short    = "Corporate Office"
	company_name  = "Nanotrasen"
	company_short = "NT"
	overmap_size = 30
	overmap_event_areas = 20
	lobby_screens = list('maps/sciencevessel/lobby.png')
	use_overmap = 1
	num_exoplanets = 1
	away_site_budget = 3
	shuttle_docked_message = "Attention all hands: Jump preparation complete. The slingshot drive is now spooling up, secure all stations for departure. Time to jump: approximately %ETD%."
	shuttle_leaving_dock = "Attention all hands: Jump initiated, exiting bluespace in %ETA%."
	shuttle_called_message = "Attention all hands: Jump sequence initiated. Transit procedures are now in effect. Jump in %ETA%."
	shuttle_recall_message = "Attention all hands: Jump sequence aborted, return to normal operating conditions."
	evac_controller_type = /datum/evacuation_controller/starship

	starting_money = 50000
	department_money = 2500
	salary_modifier = 1.5

	radiation_detected_message = "High levels of radiation have been detected in proximity of the %STATION_NAME%. Please move to a shielded area such as the cryogenic bay, or maintenance until the radiation has passed."

	allowed_spawns = list("Cryogenic Storage", "Robot Storage")
	default_spawn = "Cryogenic Storage"

/datum/spawnpoint/cryo
	display_name = "Cryogenic Storage"
	msg = "has completed cryogenic revival"
	disallow_job = list("Robot")

/datum/map/sciencevessel/get_map_info()
	return "You're aboard the <b>[station_name],</b> a privateer-turned survey and research vessel, loosely affiliated with Nanotrasen. \
	No meaningful authorities can claim the planets and resources in this uncharted sector, so their exploitation is entirely up to you."

/datum/map/sciencevessel/create_trade_hubs()
	new /datum/trade_hub/singleton/sciencevessel

/datum/trade_hub/singleton/sciencevessel
	name = "Illicit Trading Co. Ltd."

/datum/trade_hub/singleton/sciencevessel/get_initial_traders()
	return list(
		/datum/trader/xeno_shop,
		/datum/trader/medical,
		/datum/trader/mining,
		/datum/trader/books
	)

/decl/music_track/banned_from_argo
	artist = "Leslie Fish"
	title = "Banned From Argo"
	song = 'maps/sciencevessel/Banned_From_Argo.mp3'
	license = /decl/license/cc_by_nc_sa_3_0
	url = "https://www.youtube.com/watch?v=FH8lvwXx_Y8"

/datum/gear/utility/guns
	display_name = "guns"
	cost = 4
	sort_category = "Utility"
	path = /obj/item/gun/projectile

/datum/gear/utility/guns/New()
	..()
	var/guns = list()
	guns["holdout pistol"] = /obj/item/gun/projectile/pistol/holdout
	gear_tweaks += new/datum/gear_tweak/path(guns)
