set moduleName pool_1D54
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {pool_1D54}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_V_V int 128 regular {axi_s 0 volatile  { in_V_V Data } }  }
	{ ch_div_K int 32 regular  }
	{ height_in int 32 regular  }
	{ width_in int 32 regular  }
	{ Kx int 32 regular  }
	{ height_out int 32 regular  }
	{ width_out int 32 regular  }
	{ Ky int 32 regular  }
	{ ch_div_K_out int 32 regular {fifo 1}  }
	{ height_in_out int 32 regular {fifo 1}  }
	{ height_out_out int 32 regular {fifo 1}  }
	{ width_out_out int 32 regular {fifo 1}  }
	{ Ky_out int 32 regular {fifo 1}  }
	{ stream_tp_V_V int 128 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_V_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "ch_div_K", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "height_in", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "width_in", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Kx", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "height_out", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "width_out", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Ky", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ch_div_K_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "height_in_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "height_out_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "width_out_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ky_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stream_tp_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ in_V_V_TDATA sc_in sc_lv 128 signal 0 } 
	{ in_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ in_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ ch_div_K sc_in sc_lv 32 signal 1 } 
	{ height_in sc_in sc_lv 32 signal 2 } 
	{ width_in sc_in sc_lv 32 signal 3 } 
	{ Kx sc_in sc_lv 32 signal 4 } 
	{ height_out sc_in sc_lv 32 signal 5 } 
	{ width_out sc_in sc_lv 32 signal 6 } 
	{ Ky sc_in sc_lv 32 signal 7 } 
	{ ch_div_K_out_din sc_out sc_lv 32 signal 8 } 
	{ ch_div_K_out_full_n sc_in sc_logic 1 signal 8 } 
	{ ch_div_K_out_write sc_out sc_logic 1 signal 8 } 
	{ height_in_out_din sc_out sc_lv 32 signal 9 } 
	{ height_in_out_full_n sc_in sc_logic 1 signal 9 } 
	{ height_in_out_write sc_out sc_logic 1 signal 9 } 
	{ height_out_out_din sc_out sc_lv 32 signal 10 } 
	{ height_out_out_full_n sc_in sc_logic 1 signal 10 } 
	{ height_out_out_write sc_out sc_logic 1 signal 10 } 
	{ width_out_out_din sc_out sc_lv 32 signal 11 } 
	{ width_out_out_full_n sc_in sc_logic 1 signal 11 } 
	{ width_out_out_write sc_out sc_logic 1 signal 11 } 
	{ Ky_out_din sc_out sc_lv 32 signal 12 } 
	{ Ky_out_full_n sc_in sc_logic 1 signal 12 } 
	{ Ky_out_write sc_out sc_logic 1 signal 12 } 
	{ stream_tp_V_V_din sc_out sc_lv 128 signal 13 } 
	{ stream_tp_V_V_full_n sc_in sc_logic 1 signal 13 } 
	{ stream_tp_V_V_write sc_out sc_logic 1 signal 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "in_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "in_V_V", "role": "TDATA" }} , 
 	{ "name": "in_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_V_V", "role": "TVALID" }} , 
 	{ "name": "in_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_V_V", "role": "TREADY" }} , 
 	{ "name": "ch_div_K", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ch_div_K", "role": "default" }} , 
 	{ "name": "height_in", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "height_in", "role": "default" }} , 
 	{ "name": "width_in", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "width_in", "role": "default" }} , 
 	{ "name": "Kx", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Kx", "role": "default" }} , 
 	{ "name": "height_out", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "height_out", "role": "default" }} , 
 	{ "name": "width_out", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "width_out", "role": "default" }} , 
 	{ "name": "Ky", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Ky", "role": "default" }} , 
 	{ "name": "ch_div_K_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ch_div_K_out", "role": "din" }} , 
 	{ "name": "ch_div_K_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch_div_K_out", "role": "full_n" }} , 
 	{ "name": "ch_div_K_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch_div_K_out", "role": "write" }} , 
 	{ "name": "height_in_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "height_in_out", "role": "din" }} , 
 	{ "name": "height_in_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height_in_out", "role": "full_n" }} , 
 	{ "name": "height_in_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height_in_out", "role": "write" }} , 
 	{ "name": "height_out_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "height_out_out", "role": "din" }} , 
 	{ "name": "height_out_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height_out_out", "role": "full_n" }} , 
 	{ "name": "height_out_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height_out_out", "role": "write" }} , 
 	{ "name": "width_out_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "width_out_out", "role": "din" }} , 
 	{ "name": "width_out_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width_out_out", "role": "full_n" }} , 
 	{ "name": "width_out_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width_out_out", "role": "write" }} , 
 	{ "name": "Ky_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Ky_out", "role": "din" }} , 
 	{ "name": "Ky_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Ky_out", "role": "full_n" }} , 
 	{ "name": "Ky_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Ky_out", "role": "write" }} , 
 	{ "name": "stream_tp_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "stream_tp_V_V", "role": "din" }} , 
 	{ "name": "stream_tp_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_tp_V_V", "role": "full_n" }} , 
 	{ "name": "stream_tp_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_tp_V_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
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
			{"Name" : "ch_div_K_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ch_div_K_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "height_in_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "height_in_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "height_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "height_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "width_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Ky_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "Ky_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_tp_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "stream_tp_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pool_mul_64ns_32nbkb_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pool_srem_32ns_32cud_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pool_srem_32ns_32cud_U3", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		stream_tp_V_V {Type O LastRead -1 FirstWrite 43}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "443", "Max" : "443"}
	, {"Name" : "Interval", "Min" : "443", "Max" : "443"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	in_V_V { axis {  { in_V_V_TDATA in_data 0 128 }  { in_V_V_TVALID in_vld 0 1 }  { in_V_V_TREADY in_acc 1 1 } } }
	ch_div_K { ap_none {  { ch_div_K in_data 0 32 } } }
	height_in { ap_none {  { height_in in_data 0 32 } } }
	width_in { ap_none {  { width_in in_data 0 32 } } }
	Kx { ap_none {  { Kx in_data 0 32 } } }
	height_out { ap_none {  { height_out in_data 0 32 } } }
	width_out { ap_none {  { width_out in_data 0 32 } } }
	Ky { ap_none {  { Ky in_data 0 32 } } }
	ch_div_K_out { ap_fifo {  { ch_div_K_out_din fifo_data 1 32 }  { ch_div_K_out_full_n fifo_status 0 1 }  { ch_div_K_out_write fifo_update 1 1 } } }
	height_in_out { ap_fifo {  { height_in_out_din fifo_data 1 32 }  { height_in_out_full_n fifo_status 0 1 }  { height_in_out_write fifo_update 1 1 } } }
	height_out_out { ap_fifo {  { height_out_out_din fifo_data 1 32 }  { height_out_out_full_n fifo_status 0 1 }  { height_out_out_write fifo_update 1 1 } } }
	width_out_out { ap_fifo {  { width_out_out_din fifo_data 1 32 }  { width_out_out_full_n fifo_status 0 1 }  { width_out_out_write fifo_update 1 1 } } }
	Ky_out { ap_fifo {  { Ky_out_din fifo_data 1 32 }  { Ky_out_full_n fifo_status 0 1 }  { Ky_out_write fifo_update 1 1 } } }
	stream_tp_V_V { ap_fifo {  { stream_tp_V_V_din fifo_data 1 128 }  { stream_tp_V_V_full_n fifo_status 0 1 }  { stream_tp_V_V_write fifo_update 1 1 } } }
}
