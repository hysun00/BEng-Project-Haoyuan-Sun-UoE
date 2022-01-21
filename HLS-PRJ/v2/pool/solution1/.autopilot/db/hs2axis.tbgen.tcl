set moduleName hs2axis
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
set C_modelName {hs2axis}
set C_modelType { void 0 }
set C_modelArgList {
	{ out_V_data_V int 128 regular {axi_s 1 volatile  { out_r Data } }  }
	{ out_V_last int 1 regular {axi_s 1 volatile  { out_r Last } }  }
	{ ch_div_K int 32 regular {fifo 0}  }
	{ height_out int 32 regular {fifo 0}  }
	{ width_out int 32 regular {fifo 0}  }
	{ stream_tp2_V_V int 128 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "out_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_V_last", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ch_div_K", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "height_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "width_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "stream_tp2_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ out_r_TDATA sc_out sc_lv 128 signal 0 } 
	{ out_r_TVALID sc_out sc_logic 1 outvld 1 } 
	{ out_r_TREADY sc_in sc_logic 1 outacc 0 } 
	{ out_r_TLAST sc_out sc_logic 1 signal 1 } 
	{ ch_div_K_dout sc_in sc_lv 32 signal 2 } 
	{ ch_div_K_empty_n sc_in sc_logic 1 signal 2 } 
	{ ch_div_K_read sc_out sc_logic 1 signal 2 } 
	{ height_out_dout sc_in sc_lv 32 signal 3 } 
	{ height_out_empty_n sc_in sc_logic 1 signal 3 } 
	{ height_out_read sc_out sc_logic 1 signal 3 } 
	{ width_out_dout sc_in sc_lv 32 signal 4 } 
	{ width_out_empty_n sc_in sc_logic 1 signal 4 } 
	{ width_out_read sc_out sc_logic 1 signal 4 } 
	{ stream_tp2_V_V_dout sc_in sc_lv 128 signal 5 } 
	{ stream_tp2_V_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ stream_tp2_V_V_read sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "out_r_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "out_V_data_V", "role": "default" }} , 
 	{ "name": "out_r_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_V_last", "role": "D" }} , 
 	{ "name": "out_r_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_V_data_V", "role": "default" }} , 
 	{ "name": "out_r_TLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V_last", "role": "" }} , 
 	{ "name": "ch_div_K_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ch_div_K", "role": "dout" }} , 
 	{ "name": "ch_div_K_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch_div_K", "role": "empty_n" }} , 
 	{ "name": "ch_div_K_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch_div_K", "role": "read" }} , 
 	{ "name": "height_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "height_out", "role": "dout" }} , 
 	{ "name": "height_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height_out", "role": "empty_n" }} , 
 	{ "name": "height_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height_out", "role": "read" }} , 
 	{ "name": "width_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "width_out", "role": "dout" }} , 
 	{ "name": "width_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width_out", "role": "empty_n" }} , 
 	{ "name": "width_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width_out", "role": "read" }} , 
 	{ "name": "stream_tp2_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "stream_tp2_V_V", "role": "dout" }} , 
 	{ "name": "stream_tp2_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_tp2_V_V", "role": "empty_n" }} , 
 	{ "name": "stream_tp2_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_tp2_V_V", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
		"Port" : [
			{"Name" : "out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_r_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_last", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ch_div_K", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ch_div_K_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "height_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "height_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "width_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_tp2_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "stream_tp2_V_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	hs2axis {
		out_V_data_V {Type O LastRead -1 FirstWrite 5}
		out_V_last {Type O LastRead -1 FirstWrite 5}
		ch_div_K {Type I LastRead 0 FirstWrite -1}
		height_out {Type I LastRead 0 FirstWrite -1}
		width_out {Type I LastRead 0 FirstWrite -1}
		stream_tp2_V_V {Type I LastRead 5 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "206", "Max" : "206"}
	, {"Name" : "Interval", "Min" : "206", "Max" : "206"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	out_V_data_V { axis {  { out_r_TDATA out_data 1 128 }  { out_r_TREADY out_acc 0 1 } } }
	out_V_last { axis {  { out_r_TVALID out_vld 1 1 }  { out_r_TLAST out_data 1 1 } } }
	ch_div_K { ap_fifo {  { ch_div_K_dout fifo_data 0 32 }  { ch_div_K_empty_n fifo_status 0 1 }  { ch_div_K_read fifo_update 1 1 } } }
	height_out { ap_fifo {  { height_out_dout fifo_data 0 32 }  { height_out_empty_n fifo_status 0 1 }  { height_out_read fifo_update 1 1 } } }
	width_out { ap_fifo {  { width_out_dout fifo_data 0 32 }  { width_out_empty_n fifo_status 0 1 }  { width_out_read fifo_update 1 1 } } }
	stream_tp2_V_V { ap_fifo {  { stream_tp2_V_V_dout fifo_data 0 128 }  { stream_tp2_V_V_empty_n fifo_status 0 1 }  { stream_tp2_V_V_read fifo_update 1 1 } } }
}
