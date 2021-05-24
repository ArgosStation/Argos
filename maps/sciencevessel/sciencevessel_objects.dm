/obj/machinery/power/smes/buildable/engine_smes
	uncreated_component_parts = list(
		/obj/item/stock_parts/smes_coil/super_io = 2,
		/obj/item/stock_parts/smes_coil/super_capacity = 2,
		/obj/item/stock_parts/smes_coil = 1)

/obj/machinery/power/smes/buildable/engine_smes/Initialize()
	. = ..()
	charge = capacity
	input_attempt = TRUE
	output_attempt = TRUE
	input_level = input_level_max
	output_level = output_level_max

/obj/machinery/telecomms/bus/preset_one/csv
	id = "Bus"
	network = "tcommsat"
	freq_listening = list()
	autolinkers = list("processor1","server1","hub")

/obj/machinery/telecomms/processor/preset_one/csv
	id = "Processor"
	network = "tcommsat"
	autolinkers = list("processor1","hub")

/obj/machinery/telecomms/server/presets/csv
	id = "Server"
	freq_listening = list()
	channel_tags = list(
		list(SCI_FREQ, "Science", COMMS_COLOR_SCIENCE),
		list(MED_FREQ, "Medical", COMMS_COLOR_MEDICAL),
		list(SUP_FREQ, "Supply", COMMS_COLOR_SUPPLY),
		list(SRV_FREQ, "Service", COMMS_COLOR_SERVICE),
		list(PUB_FREQ, "Common", COMMS_COLOR_COMMON),
		list(AI_FREQ, "AI Private", COMMS_COLOR_AI),
		list(ENT_FREQ, "Entertainment", COMMS_COLOR_ENTERTAIN),
		list(COMM_FREQ, "Command", COMMS_COLOR_COMMAND),
		list(ENG_FREQ, "Engineering", COMMS_COLOR_ENGINEER),
		list(SEC_FREQ, "Security", COMMS_COLOR_SECURITY)
		)
	autolinkers = list("server1","hub")

/obj/machinery/telecomms/hub/preset/csv
	id = "Hub"
	network = "tcommsat"
	autolinkers = list("hub","receiverA", "broadcasterA")
