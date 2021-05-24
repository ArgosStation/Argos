/datum/job/ministation/scientist
	title = "Scientist"
	alt_titles = list("Researcher","Xenobiologist","Roboticist","Xenobotanist", "Anomalist", "Xenoarchaeologist")
	supervisors = "the Lieutenant and the Captain"
	spawn_positions = 1
	total_positions = 2
	department_types = list(/decl/department/science)
	outfit_type = /decl/hierarchy/outfit/job/ministation/scientist
	min_skill = list(
		SKILL_LITERACY = SKILL_ADEPT,
		SKILL_COMPUTER = SKILL_BASIC,
		SKILL_DEVICES  = SKILL_BASIC,
		SKILL_SCIENCE  = SKILL_ADEPT
	)
	max_skill = list(
		SKILL_ANATOMY  = SKILL_MAX,
		SKILL_DEVICES  = SKILL_MAX,
		SKILL_SCIENCE  = SKILL_MAX
	)
	skill_points = 32
	access = list(
		access_eva,
		access_robotics,
		access_tox,
		access_tox_storage,
		access_research,
		access_xenobiology,
		access_xenoarch,
		access_medsci
	)
	minimal_access = list(
		access_eva,
		access_robotics,
		access_tox,
		access_tox_storage,
		access_research,
		access_xenobiology,
		access_xenoarch,
		access_medsci
	)
	selection_color = "#633d63"
	economic_power = 10