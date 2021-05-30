/area/sciencevessel
	icon = 'maps/sciencevessel/sciencevessel_areas.dmi'
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambigen12.ogg')

/area/sciencevessel/maint
	name = "\improper Maintenance"
	icon_state = "orange"
	requires_power = FALSE
	dynamic_lighting = TRUE
	sound_env = STANDARD_STATION
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	req_access = list(access_maint_tunnels)

/var/const/access_medsci = "ACCESS_MEDSCI" //for areas that both medical and science will be accessing
/datum/access/medsci
	id = access_medsci
	desc = "MedSci"

//Departments

/area/sciencevessel/janitor
	name = "\improper Third Deck - Custodial Stairwell"
	req_access = list(access_janitor)
	icon_state = "pink"

/area/sciencevessel/commons
	name = "\improper Common Area"
	icon_state = "pink"

/area/sciencevessel/cargo
	name = "\improper Cargo Bay"
	req_access = list(access_cargo)
	icon_state = "brown"
	secure = TRUE


/area/sciencevessel/security
	name = "\improper Security Office"
	req_access = list(access_security)
	secure = TRUE
	icon_state = "red"

/area/sciencevessel/engineering
	name = "Engineering"
	req_access = list(access_engine)
	secure = TRUE
	icon_state = "yellow"


/area/sciencevessel/court
	name = "\improper Court Room"
	req_access =list(access_lawyer)
	secure = TRUE
	icon_state = "pink"

/area/sciencevessel/science
	name = "\improper Research & Development Laboratory"
	req_access = list(access_research)
	secure = TRUE
	icon_state = "purple"

/area/sciencevessel/eva
	name = "\improper EVA Storage"
	req_access = list(access_eva)
	secure = TRUE
	icon_state = "dark_blue"


/area/sciencevessel/medical
	name = "\improper Infirmary"
	req_access = list(access_medical)
	icon_state = "light_blue"
	secure = TRUE

/area/sciencevessel/cryo
	name = "\improper Second Deck - Cryogenic Storage"
	req_access = list()
	icon_state = "green"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	secure = FALSE

/area/sciencevessel/hallway
	name = "\improper Hallway"
	icon_state = "green"

/area/sciencevessel/maint/foreport
	name = "\improper Maintenance - Fore Port"
	icon_state = "maintfore1"

/area/sciencevessel/maint/forestar
	name = "\improper Maintenance - Fore Starboard"
	icon_state = "maintfore2"

/area/sciencevessel/maint/aftport
	name = "\improper Maintenance - Aft Port"
	icon_state = "purple"

/area/sciencevessel/maint/aftstar
	name = "\improper Maintenance - Aft Starboard"
	icon_state = "red"

//level 0

/area/sciencevessel/maint/foreport/deckzero
	name = "\improper Fourth Deck Maintenance - Fore Port"

/area/sciencevessel/maint/forestar/deckzero
	name = "\improper Fourth Deck Maintenance - Fore Starboard"

/area/sciencevessel/maint/aftport/deckzero
	name = "\improper Fourth Deck Maintenance - Aft Port"

/area/sciencevessel/maint/aftstar/deckzero
	name = "\improper Fourth Deck Maintenance - Aft Starboard"

/area/sciencevessel/engineering/bay
	name = "\improper Fourth Deck - Engineering Bay"

/area/sciencevessel/engineering/master_smes
	name = "\improper Fourth Deck - Power Room"
	icon_state = "pink"

/area/sciencevessel/engineering/control
	name = "\improper Fourth Deck - Engine Control"
	icon_state = "yellow"

/area/sciencevessel/engineering/engine
	name = "\improper Fourth Deck - Engine Room"
	icon_state = "orange"

/area/sciencevessel/engineering/sub/deckzero
	name = "\improper Fourth Deck - Substation"

/area/sciencevessel/engineering/atmos
	name = "\improper Fourth Deck - Atmospherics"
	icon_state = "light_blue"

/area/sciencevessel/engineering/waste
	name = "\improper Fourth Deck - Waste Tank"
	icon_state = "dark_blue"

/area/sciencevessel/hangar
	name = "\improper Fourth Deck - Shuttle Bay"
	icon_state = "dark_blue"

/area/sciencevessel/landingpad
	name = "\improper Fourth Deck - Shuttle Landing Pad"
	icon_state = "light_blue"
	base_turf = /turf/simulated/floor

/area/shuttle/spatha
	name = "\improper Spatha"
	icon_state = "light_blue"
	req_access = list(access_research)
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/shuttle/spatha/cockpit
	name = "\improper Spatha - Cockpit"
	icon_state = "yellow"

//level 1

/area/sciencevessel/maint/foreport/deckone
	name = "\improper Third Deck Maintenance - Fore Port"

/area/sciencevessel/maint/forestar/deckone
	name = "\improper Third Deck Maintenance - Fore Starboard"

/area/sciencevessel/maint/aftport/deckone
	name = "\improper Third Deck Maintenance - Aft Port"

/area/sciencevessel/maint/aftstar/deckone
	name = "\improper Third Deck Maintenance - Aft Starboard"

/area/sciencevessel/engineering/office
	name = "\improper Third Deck - Engineering Office"

/area/sciencevessel/engineering/eva
	name = "\improper Third Deck - Engineering EVA Storage"
	icon_state = "light_blue"

/area/sciencevessel/engineering/teleporter
	name = "\improper Third Deck - Teleporter"
	icon_state = "dark_blue"

/area/sciencevessel/engineering/sub/deckone
	name = "\improper Third Deck - Substation and Shield Bay"
	icon_state = "yellow"

/area/sciencevessel/engineering/fuel
	name = "\improper Third Deck - Fuel Tank"

/area/sciencevessel/engineering/thruster
	name = "\improper Third Deck - Port Nacelle"
	icon_state = "yellow"

/area/sciencevessel/engineering/thruster/star
	name = "\improper Third Deck - Starboard Nacelle"
	icon_state = "purple"

/area/sciencevessel/engineering/drone
	name = "\improper Third Deck - Drone Fabrication"

/area/sciencevessel/hallway/deckone
	name = "\improper Third Deck - Hallway"

/area/sciencevessel/hallway/stair
	name = "\improper Third Deck - Public Stairwell"

/area/sciencevessel/hallway/deckone/fore
	name = "\improper Third Deck - Fore Hallway"

/area/sciencevessel/hallway/deckone/aft
	name = "\improper Third Deck - Aft Hallway"

/area/sciencevessel/dock
	name = "\improper Third Deck - Port Side Docking Port"
	icon_state = "yellow"

/area/sciencevessel/dock/star
	name = "\improper Third Deck - Starboard Side Docking Port"

/area/sciencevessel/science/lobby
	name = "\improper Third Deck - R&D Lobby"
	req_access = list()

/area/sciencevessel/science/stairwell
	name = "\improper Third Deck - R&D Stairwell"
	req_access = list(access_medsci)

/area/sciencevessel/science/office
	name = "\improper Third Deck - R&D Main Office"

/area/sciencevessel/science/robotics
	name = "\improper Third Deck - Robotics"
	icon_state = "yellow"

/area/sciencevessel/science/fab
	name = "\improper Third Deck - Fabrication Lab"
	icon_state = "dark_blue"

/area/sciencevessel/science/hallway
	name = "\improper Third Deck - Research Hallway"
	icon_state = "light_blue"

/area/sciencevessel/science/eva
	name = "\improper Third Deck - Research EVA Storage"
	icon_state = "light_blue"

/area/sciencevessel/science/xenodoor
	name = "\improper Third Deck - Xenobiology Access"
	icon_state = "red"

/area/sciencevessel/science/xeno
	name = "\improper Third Deck - Xenobiology Lab"
	icon_state = "light_blue"

/area/sciencevessel/science/plants
	name = "\improper Third Deck - Xenoflora Lab"

/area/sciencevessel/eva/deckone
	name = "\improper Third Deck - EVA Storage"

/area/sciencevessel/security/checkpoint/deckone
	name = "\improper Third Deck - Security Checkpoint"

/area/sciencevessel/security/stair/deckone
	name = "\improper Second Deck - Security Stairwell"
	icon_state = "light_blue"

//level 2

/area/sciencevessel/maint/fore/decktwo
	name = "\improper Second Deck Maintenance - Fore"

/area/sciencevessel/maint/foreport/decktwo
	name = "\improper Second Deck Maintenance - Fore Port"

/area/sciencevessel/maint/forestar/decktwo
	name = "\improper Second Deck Maintenance - Fore Starboard"

/area/sciencevessel/maint/aftport/decktwo
	name = "\improper Second Deck Maintenance - Aft Port"

/area/sciencevessel/maint/aftstar/decktwo
	name = "\improper Second Deck Maintenance - Aft Starboard"

/area/sciencevessel/engineering/booster/decktwo
	name = "\improper Second Deck - Relay Closet"

/area/sciencevessel/medical/entry
	name = "\improper Second Deck - Infirmary Entrance"

/area/sciencevessel/medical/triage
	name = "\improper Second Deck - Triage Center"
	icon_state = "green"

/area/sciencevessel/medical/reception
	name = "\improper Second Deck - Infirmary Reception"
	icon_state = "dark_blue"

/area/sciencevessel/medical/chemistry
	name = "\improper Second Deck - Chemistry Lab"

/area/sciencevessel/medical/stair
	name = "\improper Second Deck - MedSci Stairwell"
	icon_state = "purple"

/area/sciencevessel/medical/lobby
	name = "\improper Second Deck - Medbay Lobby"
	icon_state = "red"

/area/sciencevessel/medical/or1
	name = "\improper Second Deck - Operating Room"
	icon_state = "yellow"

/area/sciencevessel/medical/or2 //changed the room's purpose, left the path for convenience
	name = "\improper Second Deck - Morgue"

/area/sciencevessel/security/checkpoint/decktwo
	name = "\improper Second Deck - Security Checkpoint"

/area/sciencevessel/security/locker
	name = "\improper Second Deck - Security Locker Room"
	icon_state = "green"

/area/sciencevessel/security/Processing
	name = "\improper Second Deck - Security Processing"
	icon_state = "dark_blue"

/area/sciencevessel/security/stair/decktwo
	name = "\improper Second Deck - Security Stairwell"
	icon_state = "light_blue"

/area/sciencevessel/hallway/decktwo
	name = "\improper Second Deck - Hallway"

/area/sciencevessel/hallway/decktwo/fore
	name = "\improper Second Deck - Fore Hallway"

/area/sciencevessel/hallway/decktwo/aft
	name = "\improper Second Deck - Aft Hallway"

/area/sciencevessel/bathroom
	name = "\improper Second Deck - Head"
	icon_state = "green"

/area/sciencevessel/bathroom/bar
	name = "\improper Second Deck - Bathroom"

/area/sciencevessel/bar
	name = "\improper Second Deck - Common Area"
	icon_state = "yellow"

/area/sciencevessel/bar/inner
	name = "\improper Second Deck - Bar"
	icon_state = "red"
	req_access = list(access_kitchen)

/area/sciencevessel/canteen
	name = "\improper Second Deck - Canteen"
	icon_state = "yellow"

/area/sciencevessel/kitchen
	name = "\improper Second Deck - Kitchen"
	icon_state = "purple"
	req_access = list(access_kitchen)

/area/sciencevessel/kitchen/freezer
	name = "\improper Second Deck - Freezer"
	icon_state = "yellow"

/area/sciencevessel/kitchen/garden
	name = "\improper Second Deck - Grow Chamber"
	icon_state = "green"
	req_access = list()

/area/sciencevessel/janitor/mid
	name = "\improper Second Deck - Midship Custodial Closet"

/area/sciencevessel/janitor/aft
	name = "\improper Second Deck -  Aft Custodial Closet"

/area/sciencevessel/engineering/sub/decktwo
	name = "\improper Second Deck - Substation"

/area/sciencevessel/engineering/thruster/decktwo
	name = "\improper Second Deck - Port Nacelle"

/area/sciencevessel/engineering/thruster/star/decktwo
	name = "\improper Second Deck - Starboard Nacelle"

/area/sciencevessel/engineering/thruster/main
	name = "\improper Second Deck - Main Thruster"

/area/sciencevessel/engineering/thruster/access
	name = "\improper Second Deck - Thrust Access Tunnel"

//level 3

/area/sciencevessel/maint/foreport/deckone
	name = "\improper First Deck Maintenance - Fore Port"

/area/sciencevessel/maint/forestar/deckone
	name = "\improper First Deck Maintenance - Starboard"

/area/sciencevessel/maint/aftport/deckone
	name = "\improper First Deck Maintenance - Aft Port"

/area/sciencevessel/engineering/techstorage
	name = "\improper First Deck - Tech Storage"

/area/sciencevessel/engineering/bridgesolar
	name = "\improper First Deck - Solar Control"
	icon_state = "orange"

/area/sciencevessel/hop
	name = "\improper First Deck - Lieutenant's Office"
	req_access = list(access_hop)
	secure = TRUE
	icon_state = "dark_blue"

/area/sciencevessel/cap
	name = "\improper First Deck - Captain's Quarters"
	req_access = list(access_captain)
	secure = TRUE
	icon_state = "light_blue"

/area/sciencevessel/telecomms
	name = "\improper First Deck - Telecommunications Monitoring"
	req_access = list(list(access_engine),list(access_heads))
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/signal.ogg','sound/ambience/sonar.ogg')
	secure = TRUE
	icon_state = "light_blue"

/area/sciencevessel/telecomms/inner
	name = "\improper First Deck - Telecommunications"
	req_access = list(access_tcomsat)
	icon_state = "dark_blue"

/area/sciencevessel/hallway/deckone
	name = "\improper First Deck - Fore Hallway"

/area/sciencevessel/hallway/deckone/aft
	name = "\improper First Deck - Aft Hallway"

/area/sciencevessel/bridge
	name = "\improper First Deck - Bridge"
	req_access = list(access_heads)
	secure = TRUE
	icon_state = "dark_blue"

/area/sciencevessel/bridge/ofd
	name = "\improper First Deck - Obstruction Field Disperser"
	icon_state = "green"

/area/sciencevessel/forensics
	name = "\improper First Deck - Forensic Office"
	req_access = list(access_forensics_lockers)
	secure = TRUE
	icon_state = "dark_blue"

/area/sciencevessel/hos_office
	name = "\improper First Deck - Head of Security's Office"
	req_access = list(access_hos)
	icon_state = "red"
	secure = TRUE

/area/sciencevessel/security/brig
	name = "\improper First Deck - Brig"
	req_access = list(access_security)
	secure = TRUE
	icon_state = "red"

/area/sciencevessel/security/armory
	name = "\improper First Deck - Security Armory"
	req_access = list(access_hos)
	secure = TRUE
	icon_state = "dark_red"

/area/sciencevessel/brigbath
	name = "\improper First Deck - Brig Bathroom"
	icon_state = "light_blue"

/area/sciencevessel/medical/stair/upper
	name = "\improper First Deck - MedSci Stairwell"
	req_access = list(access_medsci)
