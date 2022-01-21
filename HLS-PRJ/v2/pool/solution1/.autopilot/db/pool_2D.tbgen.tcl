set moduleName pool_2D
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
set C_modelName {pool_2D}
set C_modelType { void 0 }
set C_modelArgList {
	{ ch_div_K int 32 regular {fifo 0}  }
	{ height_in int 32 regular {fifo 0}  }
	{ width_out int 32 regular {fifo 0}  }
	{ Ky int 32 regular {fifo 0}  }
	{ ch_div_K_out int 32 regular {fifo 1}  }
	{ width_out_out int 32 regular {fifo 1}  }
	{ stream_tp2_V_V int 128 regular {fifo 1 volatile } {global 1}  }
	{ stream_tp_V_V int 128 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ch_div_K", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "height_in", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "width_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Ky", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ch_div_K_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "width_out_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stream_tp2_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "stream_tp_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ch_div_K_dout sc_in sc_lv 32 signal 0 } 
	{ ch_div_K_empty_n sc_in sc_logic 1 signal 0 } 
	{ ch_div_K_read sc_out sc_logic 1 signal 0 } 
	{ height_in_dout sc_in sc_lv 32 signal 1 } 
	{ height_in_empty_n sc_in sc_logic 1 signal 1 } 
	{ height_in_read sc_out sc_logic 1 signal 1 } 
	{ width_out_dout sc_in sc_lv 32 signal 2 } 
	{ width_out_empty_n sc_in sc_logic 1 signal 2 } 
	{ width_out_read sc_out sc_logic 1 signal 2 } 
	{ Ky_dout sc_in sc_lv 32 signal 3 } 
	{ Ky_empty_n sc_in sc_logic 1 signal 3 } 
	{ Ky_read sc_out sc_logic 1 signal 3 } 
	{ ch_div_K_out_din sc_out sc_lv 32 signal 4 } 
	{ ch_div_K_out_full_n sc_in sc_logic 1 signal 4 } 
	{ ch_div_K_out_write sc_out sc_logic 1 signal 4 } 
	{ width_out_out_din sc_out sc_lv 32 signal 5 } 
	{ width_out_out_full_n sc_in sc_logic 1 signal 5 } 
	{ width_out_out_write sc_out sc_logic 1 signal 5 } 
	{ stream_tp2_V_V_din sc_out sc_lv 128 signal 6 } 
	{ stream_tp2_V_V_full_n sc_in sc_logic 1 signal 6 } 
	{ stream_tp2_V_V_write sc_out sc_logic 1 signal 6 } 
	{ stream_tp_V_V_dout sc_in sc_lv 128 signal 7 } 
	{ stream_tp_V_V_empty_n sc_in sc_logic 1 signal 7 } 
	{ stream_tp_V_V_read sc_out sc_logic 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ch_div_K_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ch_div_K", "role": "dout" }} , 
 	{ "name": "ch_div_K_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch_div_K", "role": "empty_n" }} , 
 	{ "name": "ch_div_K_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch_div_K", "role": "read" }} , 
 	{ "name": "height_in_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "height_in", "role": "dout" }} , 
 	{ "name": "height_in_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height_in", "role": "empty_n" }} , 
 	{ "name": "height_in_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height_in", "role": "read" }} , 
 	{ "name": "width_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "width_out", "role": "dout" }} , 
 	{ "name": "width_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width_out", "role": "empty_n" }} , 
 	{ "name": "width_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width_out", "role": "read" }} , 
 	{ "name": "Ky_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Ky", "role": "dout" }} , 
 	{ "name": "Ky_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Ky", "role": "empty_n" }} , 
 	{ "name": "Ky_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Ky", "role": "read" }} , 
 	{ "name": "ch_div_K_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ch_div_K_out", "role": "din" }} , 
 	{ "name": "ch_div_K_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch_div_K_out", "role": "full_n" }} , 
 	{ "name": "ch_div_K_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch_div_K_out", "role": "write" }} , 
 	{ "name": "width_out_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "width_out_out", "role": "din" }} , 
 	{ "name": "width_out_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width_out_out", "role": "full_n" }} , 
 	{ "name": "width_out_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width_out_out", "role": "write" }} , 
 	{ "name": "stream_tp2_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "stream_tp2_V_V", "role": "din" }} , 
 	{ "name": "stream_tp2_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_tp2_V_V", "role": "full_n" }} , 
 	{ "name": "stream_tp2_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_tp2_V_V", "role": "write" }} , 
 	{ "name": "stream_tp_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "stream_tp_V_V", "role": "dout" }} , 
 	{ "name": "stream_tp_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_tp_V_V", "role": "empty_n" }} , 
 	{ "name": "stream_tp_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_tp_V_V", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
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
		"Port" : [
			{"Name" : "ch_div_K", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ch_div_K_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "height_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "height_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "width_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Ky", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "Ky_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ch_div_K_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ch_div_K_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "width_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_tp2_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "stream_tp2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "buf_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "stream_tp_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "stream_tp_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pool_mul_64ns_32nbkb_U20", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pool_srem_32ns_32cud_U21", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pool_srem_32ns_32cud_U22", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	pool_2D {
		ch_div_K {Type I LastRead 0 FirstWrite -1}
		height_in {Type I LastRead 0 FirstWrite -1}
		width_out {Type I LastRead 0 FirstWrite -1}
		Ky {Type I LastRead 0 FirstWrite -1}
		ch_div_K_out {Type O LastRead -1 FirstWrite 0}
		width_out_out {Type O LastRead -1 FirstWrite 0}
		stream_tp2_V_V {Type O LastRead -1 FirstWrite 44}
		buf_V {Type IO LastRead -1 FirstWrite -1}
		stream_tp_V_V {Type I LastRead 43 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "244", "Max" : "244"}
	, {"Name" : "Interval", "Min" : "244", "Max" : "244"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	ch_div_K { ap_fifo {  { ch_div_K_dout fifo_data 0 32 }  { ch_div_K_empty_n fifo_status 0 1 }  { ch_div_K_read fifo_update 1 1 } } }
	height_in { ap_fifo {  { height_in_dout fifo_data 0 32 }  { height_in_empty_n fifo_status 0 1 }  { height_in_read fifo_update 1 1 } } }
	width_out { ap_fifo {  { width_out_dout fifo_data 0 32 }  { width_out_empty_n fifo_status 0 1 }  { width_out_read fifo_update 1 1 } } }
	Ky { ap_fifo {  { Ky_dout fifo_data 0 32 }  { Ky_empty_n fifo_status 0 1 }  { Ky_read fifo_update 1 1 } } }
	ch_div_K_out { ap_fifo {  { ch_div_K_out_din fifo_data 1 32 }  { ch_div_K_out_full_n fifo_status 0 1 }  { ch_div_K_out_write fifo_update 1 1 } } }
	width_out_out { ap_fifo {  { width_out_out_din fifo_data 1 32 }  { width_out_out_full_n fifo_status 0 1 }  { width_out_out_write fifo_update 1 1 } } }
	stream_tp2_V_V { ap_fifo {  { stream_tp2_V_V_din fifo_data 1 128 }  { stream_tp2_V_V_full_n fifo_status 0 1 }  { stream_tp2_V_V_write fifo_update 1 1 } } }
	stream_tp_V_V { ap_fifo {  { stream_tp_V_V_dout fifo_data 0 128 }  { stream_tp_V_V_empty_n fifo_status 0 1 }  { stream_tp_V_V_read fifo_update 1 1 } } }
}
