/datum/job/ministation/security
	title = "Security Officer"
	supervisors = "the Head of Security and the Captain"
	spawn_positions = 4
	total_positions = 4
	hud_icon = "hudsecurityofficer"
	outfit_type = /decl/hierarchy/outfit/job/ministation/security
	department_types = list(/decl/department/security)
	selection_color = "#990000"
	economic_power = 7
	minimal_player_age = 7
	access = list(
		access_eva,
		access_security,
		access_brig
	)
	minimal_access = list(
		access_eva,
		access_security,
		access_forensics_lockers,
		access_brig,
		access_maint_tunnels
	)
	min_skill = list(
		SKILL_LITERACY = SKILL_BASIC,
		SKILL_COMPUTER = SKILL_BASIC,
		SKILL_COMBAT	= SKILL_BASIC,
		SKILL_WEAPONS	= SKILL_BASIC
	)
	max_skill = list(
		SKILL_COMBAT	= SKILL_MAX,
		SKILL_WEAPONS	= SKILL_MAX
	)
	skill_points = 20

/datum/job/ministation/hos
	title = "Head of Security"
	alt_titles = list("Marshal", "Warden")
	supervisors = "The Captain"
	spawn_positions = 1
	total_positions = 1
	hud_icon = "hudwarden"
	outfit_type = /decl/hierarchy/outfit/job/ministation/security/hos
	department_types = list(/decl/department/security)
	selection_color = "#990000"
	economic_power = 10
	minimal_player_age = 10
	access = list(
		access_eva,
		access_security,
		access_brig,
		access_hos,
		access_bridge,
		access_maint_tunnels,
		access_forensics_lockers,
		access_heads,
		access_armory,
		access_external_airlocks,
		access_emergency_storage
	)
	minimal_access = list(
		access_eva,
		access_security,
		access_brig,
		access_hos,
		access_bridge,
		access_maint_tunnels,
		access_forensics_lockers,
		access_heads,
		access_armory,
		access_external_airlocks,
		access_emergency_storage
	)
	min_skill = list(
		SKILL_LITERACY = SKILL_BASIC,
		SKILL_COMPUTER = SKILL_BASIC,
		SKILL_COMBAT	= SKILL_ADEPT,
		SKILL_WEAPONS	= SKILL_ADEPT,
		SKILL_FORENSICS	= SKILL_BASIC
	)
	max_skill = list(
		SKILL_COMBAT	= SKILL_MAX,
		SKILL_WEAPONS	= SKILL_MAX,
		SKILL_FORENSICS	= SKILL_MAX
	)
	skill_points = 32

/datum/job/ministation/detective
	title = "Detective"
	alt_titles = list("Inspector")
	supervisors = "Justice... and the Head of Security"
	spawn_positions = 1
	total_positions = 1
	hud_icon = "huddetective"
	outfit_type = /decl/hierarchy/outfit/job/ministation/detective
	department_types = list(/decl/department/security)
	selection_color = "#630000"
	economic_power = 7
	minimal_player_age = 3
	access = list(
		access_forensics_lockers
	)
	minimal_access = list(
		access_security,
		access_forensics_lockers,
		access_maint_tunnels
	)
	min_skill = list(
		SKILL_LITERACY	= SKILL_BASIC,
		SKILL_COMPUTER	= SKILL_BASIC,
		SKILL_COMBAT	= SKILL_BASIC,
		SKILL_WEAPONS	= SKILL_BASIC,
		SKILL_FORENSICS	= SKILL_ADEPT
	)
	max_skill = list(
		SKILL_COMBAT	= SKILL_MAX,
		SKILL_WEAPONS	= SKILL_MAX,
		SKILL_FORENSICS	= SKILL_MAX
	)
	skill_points = 24