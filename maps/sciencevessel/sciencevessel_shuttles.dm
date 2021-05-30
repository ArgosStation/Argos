//Spatha (Science ship in the bottom deck hangar)

/obj/effect/overmap/visitable/ship/landable/exploration
	name = "Spatha"
	desc = "A small research and development landing pod"
	shuttle = "Spatha"
	fore_dir = NORTH
	vessel_size = SHIP_SIZE_SMALL
	vessel_mass = 8000

/datum/shuttle/autodock/overmap/exploration
	name = "Spatha"
	shuttle_area = list(/area/shuttle/spatha, /area/shuttle/spatha/cockpit)
	current_location = "nav_csv_hangar"
	ceiling_type = /turf/simulated/floor/shuttle_ceiling
	warmup_time = 5
	range = 1
	fuel_consumption = 5
	skill_needed = SKILL_BASIC

/obj/machinery/computer/shuttle_control/explore/spatha
	name = "shuttle control console"
	shuttle_tag = "Spatha"

/obj/effect/shuttle_landmark/sciencevessel/hangar
	landmark_tag = "nav_csv_hangar"
	base_area = /area/sciencevessel/landingpad

/obj/machinery/power/smes/buildable/shuttle
	uncreated_component_parts = list(/obj/item/stock_parts/smes_coil/super_capacity = 1)

/obj/machinery/power/smes/buildable/shuttle/Initialize()
	. = ..()
	charge = capacity
	input_attempt = TRUE
	output_attempt = TRUE
	input_level = input_level_max
	output_level = output_level_max