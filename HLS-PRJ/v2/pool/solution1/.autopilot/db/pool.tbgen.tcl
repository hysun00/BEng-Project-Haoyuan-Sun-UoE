set moduleName pool
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {pool}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_V_V int 128 regular {axi_s 0 volatile  { in_V_V Data } }  }
	{ out_V_data_V int 128 regular {axi_s 1 volatile  { out_r Data } }  }
	{ out_V_last int 1 regular {axi_s 1 volatile  { out_r Last } }  }
	{ ch_div_K int 32 regular {axi_slave 0}  }
	{ height_in int 32 regular {axi_slave 0}  }
	{ width_in int 32 regular {axi_slave 0}  }
	{ height_out int 32 regular {axi_slave 0}  }
	{ width_out int 32 regular {axi_slave 0}  }
	{ Kx int 32 regular {axi_slave 0}  }
	{ Ky int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_V_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "in.V.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "out.V.data.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_V_last", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "out.V.last","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ch_div_K", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ch_div_K","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "height_in", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "height_in","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "width_in", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "width_in","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "height_out", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "height_out","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "width_out", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "width_out","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "Kx", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Kx","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "Ky", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Ky","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":64}, "offset_end" : {"in":71}} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_AXILiteS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXILiteS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ in_V_V_TDATA sc_in sc_lv 128 signal 0 } 
	{ out_r_TDATA sc_out sc_lv 128 signal 1 } 
	{ out_r_TLAST sc_out sc_logic 1 signal 2 } 
	{ in_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ in_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ out_r_TVALID sc_out sc_logic 1 outvld 2 } 
	{ out_r_TREADY sc_in sc_logic 1 outacc 2 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"pool","role":"start","value":"0","valid_bit":"0"},{"name":"pool","role":"continue","value":"0","valid_bit":"4"},{"name":"pool","role":"auto_start","value":"0","valid_bit":"7"},{"name":"ch_div_K","role":"data","value":"16"},{"name":"height_in","role":"data","value":"24"},{"name":"width_in","role":"data","value":"32"},{"name":"height_out","role":"data","value":"40"},{"name":"width_out","role":"data","value":"48"},{"name":"Kx","role":"data","value":"56"},{"name":"Ky","role":"data","value":"64"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[{"name":"pool","role":"start","value":"0","valid_bit":"0"},{"name":"pool","role":"done","value":"0","valid_bit":"1"},{"name":"pool","role":"idle","value":"0","valid_bit":"2"},{"name":"pool","role":"ready","value":"0","valid_bit":"3"},{"name":"pool","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_AXILiteS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARVALID" } },
	{ "name": "s_axi_AXILiteS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARREADY" } },
	{ "name": "s_axi_AXILiteS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RVALID" } },
	{ "name": "s_axi_AXILiteS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RREADY" } },
	{ "name": "s_axi_AXILiteS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RDATA" } },
	{ "name": "s_axi_AXILiteS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RRESP" } },
	{ "name": "s_axi_AXILiteS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BVALID" } },
	{ "name": "s_axi_AXILiteS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BREADY" } },
	{ "name": "s_axi_AXILiteS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "in_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "in_V_V", "role": "TDATA" }} , 
 	{ "name": "out_r_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "out_V_data_V", "role": "default" }} , 
 	{ "name": "out_r_TLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V_last", "role": "" }} , 
 	{ "name": "in_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_V_V", "role": "TVALID" }} , 
 	{ "name": "in_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_V_V", "role": "TREADY" }} , 
 	{ "name": "out_r_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_V_last", "role": "D" }} , 
 	{ "name": "out_r_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_V_last", "role": "Y" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "6", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22"],
		"CDFG" : "pool",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "447", "EstimateLatencyMax" : "447",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "pool_1D54_U0"}],
		"OutputProcess" : [
			{"ID" : "11", "Name" : "hs2axis_U0"}],
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "pool_1D54_U0", "Port" : "in_V_V"}]},
			{"Name" : "out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "hs2axis_U0", "Port" : "out_V_data_V"}]},
			{"Name" : "out_V_last", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "hs2axis_U0", "Port" : "out_V_last"}]},
			{"Name" : "ch_div_K", "Type" : "None", "Direction" : "I"},
			{"Name" : "height_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "width_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "height_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "width_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "Kx", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ky", "Type" : "None", "Direction" : "I"},
			{"Name" : "stream_tp_V_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "pool_2D_U0", "Port" : "stream_tp_V_V"},
					{"ID" : "2", "SubInstance" : "pool_1D54_U0", "Port" : "stream_tp_V_V"}]},
			{"Name" : "stream_tp2_V_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "hs2axis_U0", "Port" : "stream_tp2_V_V"},
					{"ID" : "6", "SubInstance" : "pool_2D_U0", "Port" : "stream_tp2_V_V"}]},
			{"Name" : "buf_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "pool_2D_U0", "Port" : "buf_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pool_AXILiteS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pool_1D54_U0", "Parent" : "0", "Child" : ["3", "4", "5"],
		"CDFG" : "pool_1D54",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "443", "EstimateLatencyMax" : "443",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ch_div_K", "Type" : "None", "Direction" : "I"},
			{"Name" : "height_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "width_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "Kx", "Type" : "None", "Direction" : "I"},
			{"Name" : "height_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "width_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ky", "Type" : "None", "Direction" : "I"},
			{"Name" : "ch_div_K_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "12",
				"BlockSignal" : [
					{"Name" : "ch_div_K_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "height_in_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "13",
				"BlockSignal" : [
					{"Name" : "height_in_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "height_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "14",
				"BlockSignal" : [
					{"Name" : "height_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "15",
				"BlockSignal" : [
					{"Name" : "width_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Ky_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "16",
				"BlockSignal" : [
					{"Name" : "Ky_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_tp_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "17",
				"BlockSignal" : [
					{"Name" : "stream_tp_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pool_1D54_U0.pool_mul_64ns_32nbkb_U1", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pool_1D54_U0.pool_srem_32ns_32cud_U2", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pool_1D54_U0.pool_srem_32ns_32cud_U3", "Parent" : "2"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pool_2D_U0", "Parent" : "0", "Child" : ["7", "8", "9", "10"],
		"CDFG" : "pool_2D",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "244", "EstimateLatencyMax" : "244",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_pool_2DdEe_U",
		"Port" : [
			{"Name" : "ch_div_K", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "12",
				"BlockSignal" : [
					{"Name" : "ch_div_K_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "height_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "13",
				"BlockSignal" : [
					{"Name" : "height_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "15",
				"BlockSignal" : [
					{"Name" : "width_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Ky", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "16",
				"BlockSignal" : [
					{"Name" : "Ky_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ch_div_K_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "18",
				"BlockSignal" : [
					{"Name" : "ch_div_K_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "19",
				"BlockSignal" : [
					{"Name" : "width_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_tp2_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "20",
				"BlockSignal" : [
					{"Name" : "stream_tp2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "buf_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "stream_tp_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "17",
				"BlockSignal" : [
					{"Name" : "stream_tp_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pool_2D_U0.buf_V_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pool_2D_U0.pool_mul_64ns_32nbkb_U20", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pool_2D_U0.pool_srem_32ns_32cud_U21", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pool_2D_U0.pool_srem_32ns_32cud_U22", "Parent" : "6"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hs2axis_U0", "Parent" : "0",
		"CDFG" : "hs2axis",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "206", "EstimateLatencyMax" : "206",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_hs2axiseOg_U",
		"Port" : [
			{"Name" : "out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_r_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_last", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ch_div_K", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "18",
				"BlockSignal" : [
					{"Name" : "ch_div_K_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "height_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "14",
				"BlockSignal" : [
					{"Name" : "height_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "19",
				"BlockSignal" : [
					{"Name" : "width_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_tp2_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "20",
				"BlockSignal" : [
					{"Name" : "stream_tp2_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ch_div_K_c_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.height_in_c_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.height_out_c_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.width_out_c_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Ky_c_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stream_tp_V_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ch_div_K_c7_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.width_out_c8_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stream_tp2_V_V_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_pool_2DdEe_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_hs2axiseOg_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	pool {
		in_V_V {Type I LastRead 6 FirstWrite -1}
		out_V_data_V {Type O LastRead -1 FirstWrite 5}
		out_V_last {Type O LastRead -1 FirstWrite 5}
		ch_div_K {Type I LastRead 0 FirstWrite -1}
		height_in {Type I LastRead 0 FirstWrite -1}
		width_in {Type I LastRead 0 FirstWrite -1}
		height_out {Type I LastRead 0 FirstWrite -1}
		width_out {Type I LastRead 0 FirstWrite -1}
		Kx {Type I LastRead 0 FirstWrite -1}
		Ky {Type I LastRead 0 FirstWrite -1}
		stream_tp_V_V {Type IO LastRead -1 FirstWrite -1}
		stream_tp2_V_V {Type IO LastRead -1 FirstWrite -1}
		buf_V {Type IO LastRead -1 FirstWrite -1}}
	pool_1D54 {
		in_V_V {Type I LastRead 6 FirstWrite -1}
		ch_div_K {Type I LastRead 0 FirstWrite -1}
		height_in {Type I LastRead 0 FirstWrite -1}
		width_in {Type I LastRead 0 FirstWrite -1}
		Kx {Type I LastRead 5 FirstWrite -1}
		height_out {Type I LastRead 0 FirstWrite -1}
		width_out {Type I LastRead 0 FirstWrite -1}
		Ky {Type I LastRead 0 FirstWrite -1}
		ch_div_K_out {Type O LastRead -1 FirstWrite 0}
		height_in_out {Type O LastRead -1 FirstWrite 0}
		height_out_out {Type O LastRead -1 FirstWrite 0}
		width_out_out {Type O LastRead -1 FirstWrite 0}
		Ky_out {Type O LastRead -1 FirstWrite 0}
		stream_tp_V_V {Type O LastRead -1 FirstWrite 43}}
	pool_2D {
		ch_div_K {Type I LastRead 0 FirstWrite -1}
		height_in {Type I LastRead 0 FirstWrite -1}
		width_out {Type I LastRead 0 FirstWrite -1}
		Ky {Type I LastRead 0 FirstWrite -1}
		ch_div_K_out {Type O LastRead -1 FirstWrite 0}
		width_out_out {Type O LastRead -1 FirstWrite 0}
		stream_tp2_V_V {Type O LastRead -1 FirstWrite 44}
		buf_V {Type IO LastRead -1 FirstWrite -1}
		stream_tp_V_V {Type I LastRead 43 FirstWrite -1}}
	hs2axis {
		out_V_data_V {Type O LastRead -1 FirstWrite 5}
		out_V_last {Type O LastRead -1 FirstWrite 5}
		ch_div_K {Type I LastRead 0 FirstWrite -1}
		height_out {Type I LastRead 0 FirstWrite -1}
		width_out {Type I LastRead 0 FirstWrite -1}
		stream_tp2_V_V {Type I LastRead 5 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "447", "Max" : "447"}
	, {"Name" : "Interval", "Min" : "444", "Max" : "444"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_V_V { axis {  { in_V_V_TDATA in_data 0 128 }  { in_V_V_TVALID in_vld 0 1 }  { in_V_V_TREADY in_acc 1 1 } } }
	out_V_data_V { axis {  { out_r_TDATA out_data 1 128 } } }
	out_V_last { axis {  { out_r_TLAST out_data 1 1 }  { out_r_TVALID out_vld 1 1 }  { out_r_TREADY out_acc 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
