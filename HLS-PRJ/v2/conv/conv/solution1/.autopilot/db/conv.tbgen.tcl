set moduleName conv
set isTopModule 1
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
set C_modelName {conv}
set C_modelType { void 0 }
set C_modelArgList {
	{ AXI_F int 128 regular {axi_master 2}  }
	{ AXI_W int 128 regular {axi_master 0}  }
	{ gmem int 16 regular {axi_master 0}  }
	{ CHin_V int 16 regular {axi_slave 0}  }
	{ Hin_V int 16 regular {axi_slave 0}  }
	{ Win_V int 16 regular {axi_slave 0}  }
	{ CHout_V int 16 regular {axi_slave 0}  }
	{ Kx_V int 8 regular {axi_slave 0}  }
	{ Ky_V int 8 regular {axi_slave 0}  }
	{ Sx_V int 8 regular {axi_slave 0}  }
	{ Sy_V int 8 regular {axi_slave 0}  }
	{ mode_V int 1 regular {axi_slave 0}  }
	{ relu_en_V int 1 regular {axi_slave 0}  }
	{ feature_in_V int 32 regular {axi_slave 0}  }
	{ feature_in_precision_V int 4 regular {axi_slave 0}  }
	{ W_V int 32 regular {axi_slave 0}  }
	{ W_precision_V int 4 regular {axi_slave 0}  }
	{ B_V int 32 regular {axi_slave 0}  }
	{ B_precision_V int 4 regular {axi_slave 0}  }
	{ feature_out_V int 32 regular {axi_slave 0}  }
	{ feature_out_precision_V int 4 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "AXI_F", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "feature_in.V","cData": "int128","bit_use": { "low": 0,"up": 127},"offset": { "type": "dynamic","port_name": "feature_in_V","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 99,"step" : 1}]},{"cName": "feature_out.V","cData": "int128","bit_use": { "low": 0,"up": 127},"offset": { "type": "dynamic","port_name": "feature_out_V","bundle": "AXILiteS"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 99,"step" : 1}]}]}]} , 
 	{ "Name" : "AXI_W", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "W.V","cData": "int128","bit_use": { "low": 0,"up": 127},"offset": { "type": "dynamic","port_name": "W_V","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 24,"step" : 1}]}]}]} , 
 	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "B.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "B_V","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 24,"step" : 1}]}]}]} , 
 	{ "Name" : "CHin_V", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "CHin.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "Hin_V", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "Hin.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "Win_V", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "Win.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "CHout_V", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "CHout.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "Kx_V", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "Kx.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "Ky_V", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "Ky.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "Sx_V", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "Sx.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "Sy_V", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "Sy.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":72}, "offset_end" : {"in":79}} , 
 	{ "Name" : "mode_V", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "mode.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":80}, "offset_end" : {"in":87}} , 
 	{ "Name" : "relu_en_V", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "relu_en.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":88}, "offset_end" : {"in":95}} , 
 	{ "Name" : "feature_in_V", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":96}, "offset_end" : {"in":103}} , 
 	{ "Name" : "feature_in_precision_V", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "feature_in_precision.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":104}, "offset_end" : {"in":111}} , 
 	{ "Name" : "W_V", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":112}, "offset_end" : {"in":119}} , 
 	{ "Name" : "W_precision_V", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "W_precision.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":120}, "offset_end" : {"in":127}} , 
 	{ "Name" : "B_V", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":128}, "offset_end" : {"in":135}} , 
 	{ "Name" : "B_precision_V", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "B_precision.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":136}, "offset_end" : {"in":143}} , 
 	{ "Name" : "feature_out_V", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":144}, "offset_end" : {"in":151}} , 
 	{ "Name" : "feature_out_precision_V", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "feature_out_precision.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":152}, "offset_end" : {"in":159}} ]}
# RTL Port declarations: 
set portNum 155
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_AXI_F_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_AXI_F_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_AXI_F_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_AXI_F_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_AXI_F_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_AXI_F_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_AXI_F_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_AXI_F_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_AXI_F_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_AXI_F_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_AXI_F_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_AXI_F_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_AXI_F_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_AXI_F_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_AXI_F_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_AXI_F_WDATA sc_out sc_lv 128 signal 0 } 
	{ m_axi_AXI_F_WSTRB sc_out sc_lv 16 signal 0 } 
	{ m_axi_AXI_F_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_AXI_F_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_AXI_F_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_AXI_F_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_AXI_F_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_AXI_F_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_AXI_F_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_AXI_F_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_AXI_F_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_AXI_F_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_AXI_F_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_AXI_F_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_AXI_F_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_AXI_F_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_AXI_F_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_AXI_F_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_AXI_F_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_AXI_F_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_AXI_F_RDATA sc_in sc_lv 128 signal 0 } 
	{ m_axi_AXI_F_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_AXI_F_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_AXI_F_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_AXI_F_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_AXI_F_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_AXI_F_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_AXI_F_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_AXI_F_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_AXI_F_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_AXI_W_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_AXI_W_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_AXI_W_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_AXI_W_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_AXI_W_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_AXI_W_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_AXI_W_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_AXI_W_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_AXI_W_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_AXI_W_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_AXI_W_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_AXI_W_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_AXI_W_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_AXI_W_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_AXI_W_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_AXI_W_WDATA sc_out sc_lv 128 signal 1 } 
	{ m_axi_AXI_W_WSTRB sc_out sc_lv 16 signal 1 } 
	{ m_axi_AXI_W_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_AXI_W_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_AXI_W_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_AXI_W_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_AXI_W_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_AXI_W_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_AXI_W_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_AXI_W_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_AXI_W_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_AXI_W_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_AXI_W_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_AXI_W_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_AXI_W_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_AXI_W_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_AXI_W_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_AXI_W_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_AXI_W_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_AXI_W_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_AXI_W_RDATA sc_in sc_lv 128 signal 1 } 
	{ m_axi_AXI_W_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_AXI_W_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_AXI_W_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_AXI_W_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_AXI_W_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_AXI_W_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_AXI_W_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_AXI_W_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_AXI_W_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 2 } 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_AXILiteS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXILiteS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"conv","role":"start","value":"0","valid_bit":"0"},{"name":"conv","role":"continue","value":"0","valid_bit":"4"},{"name":"conv","role":"auto_start","value":"0","valid_bit":"7"},{"name":"CHin_V","role":"data","value":"16"},{"name":"Hin_V","role":"data","value":"24"},{"name":"Win_V","role":"data","value":"32"},{"name":"CHout_V","role":"data","value":"40"},{"name":"Kx_V","role":"data","value":"48"},{"name":"Ky_V","role":"data","value":"56"},{"name":"Sx_V","role":"data","value":"64"},{"name":"Sy_V","role":"data","value":"72"},{"name":"mode_V","role":"data","value":"80"},{"name":"relu_en_V","role":"data","value":"88"},{"name":"feature_in_V","role":"data","value":"96"},{"name":"feature_in_precision_V","role":"data","value":"104"},{"name":"W_V","role":"data","value":"112"},{"name":"W_precision_V","role":"data","value":"120"},{"name":"B_V","role":"data","value":"128"},{"name":"B_precision_V","role":"data","value":"136"},{"name":"feature_out_V","role":"data","value":"144"},{"name":"feature_out_precision_V","role":"data","value":"152"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[{"name":"conv","role":"start","value":"0","valid_bit":"0"},{"name":"conv","role":"done","value":"0","valid_bit":"1"},{"name":"conv","role":"idle","value":"0","valid_bit":"2"},{"name":"conv","role":"ready","value":"0","valid_bit":"3"},{"name":"conv","role":"auto_start","value":"0","valid_bit":"7"}] },
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
 	{ "name": "m_axi_AXI_F_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_F", "role": "AWVALID" }} , 
 	{ "name": "m_axi_AXI_F_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_F", "role": "AWREADY" }} , 
 	{ "name": "m_axi_AXI_F_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXI_F", "role": "AWADDR" }} , 
 	{ "name": "m_axi_AXI_F_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_F", "role": "AWID" }} , 
 	{ "name": "m_axi_AXI_F_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "AXI_F", "role": "AWLEN" }} , 
 	{ "name": "m_axi_AXI_F_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AXI_F", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_AXI_F_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXI_F", "role": "AWBURST" }} , 
 	{ "name": "m_axi_AXI_F_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXI_F", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_AXI_F_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_F", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_AXI_F_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AXI_F", "role": "AWPROT" }} , 
 	{ "name": "m_axi_AXI_F_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_F", "role": "AWQOS" }} , 
 	{ "name": "m_axi_AXI_F_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_F", "role": "AWREGION" }} , 
 	{ "name": "m_axi_AXI_F_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_F", "role": "AWUSER" }} , 
 	{ "name": "m_axi_AXI_F_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_F", "role": "WVALID" }} , 
 	{ "name": "m_axi_AXI_F_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_F", "role": "WREADY" }} , 
 	{ "name": "m_axi_AXI_F_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "AXI_F", "role": "WDATA" }} , 
 	{ "name": "m_axi_AXI_F_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "AXI_F", "role": "WSTRB" }} , 
 	{ "name": "m_axi_AXI_F_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_F", "role": "WLAST" }} , 
 	{ "name": "m_axi_AXI_F_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_F", "role": "WID" }} , 
 	{ "name": "m_axi_AXI_F_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_F", "role": "WUSER" }} , 
 	{ "name": "m_axi_AXI_F_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_F", "role": "ARVALID" }} , 
 	{ "name": "m_axi_AXI_F_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_F", "role": "ARREADY" }} , 
 	{ "name": "m_axi_AXI_F_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXI_F", "role": "ARADDR" }} , 
 	{ "name": "m_axi_AXI_F_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_F", "role": "ARID" }} , 
 	{ "name": "m_axi_AXI_F_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "AXI_F", "role": "ARLEN" }} , 
 	{ "name": "m_axi_AXI_F_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AXI_F", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_AXI_F_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXI_F", "role": "ARBURST" }} , 
 	{ "name": "m_axi_AXI_F_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXI_F", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_AXI_F_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_F", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_AXI_F_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AXI_F", "role": "ARPROT" }} , 
 	{ "name": "m_axi_AXI_F_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_F", "role": "ARQOS" }} , 
 	{ "name": "m_axi_AXI_F_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_F", "role": "ARREGION" }} , 
 	{ "name": "m_axi_AXI_F_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_F", "role": "ARUSER" }} , 
 	{ "name": "m_axi_AXI_F_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_F", "role": "RVALID" }} , 
 	{ "name": "m_axi_AXI_F_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_F", "role": "RREADY" }} , 
 	{ "name": "m_axi_AXI_F_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "AXI_F", "role": "RDATA" }} , 
 	{ "name": "m_axi_AXI_F_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_F", "role": "RLAST" }} , 
 	{ "name": "m_axi_AXI_F_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_F", "role": "RID" }} , 
 	{ "name": "m_axi_AXI_F_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_F", "role": "RUSER" }} , 
 	{ "name": "m_axi_AXI_F_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXI_F", "role": "RRESP" }} , 
 	{ "name": "m_axi_AXI_F_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_F", "role": "BVALID" }} , 
 	{ "name": "m_axi_AXI_F_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_F", "role": "BREADY" }} , 
 	{ "name": "m_axi_AXI_F_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXI_F", "role": "BRESP" }} , 
 	{ "name": "m_axi_AXI_F_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_F", "role": "BID" }} , 
 	{ "name": "m_axi_AXI_F_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_F", "role": "BUSER" }} , 
 	{ "name": "m_axi_AXI_W_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_W", "role": "AWVALID" }} , 
 	{ "name": "m_axi_AXI_W_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_W", "role": "AWREADY" }} , 
 	{ "name": "m_axi_AXI_W_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXI_W", "role": "AWADDR" }} , 
 	{ "name": "m_axi_AXI_W_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_W", "role": "AWID" }} , 
 	{ "name": "m_axi_AXI_W_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "AXI_W", "role": "AWLEN" }} , 
 	{ "name": "m_axi_AXI_W_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AXI_W", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_AXI_W_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXI_W", "role": "AWBURST" }} , 
 	{ "name": "m_axi_AXI_W_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXI_W", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_AXI_W_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_W", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_AXI_W_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AXI_W", "role": "AWPROT" }} , 
 	{ "name": "m_axi_AXI_W_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_W", "role": "AWQOS" }} , 
 	{ "name": "m_axi_AXI_W_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_W", "role": "AWREGION" }} , 
 	{ "name": "m_axi_AXI_W_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_W", "role": "AWUSER" }} , 
 	{ "name": "m_axi_AXI_W_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_W", "role": "WVALID" }} , 
 	{ "name": "m_axi_AXI_W_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_W", "role": "WREADY" }} , 
 	{ "name": "m_axi_AXI_W_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "AXI_W", "role": "WDATA" }} , 
 	{ "name": "m_axi_AXI_W_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "AXI_W", "role": "WSTRB" }} , 
 	{ "name": "m_axi_AXI_W_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_W", "role": "WLAST" }} , 
 	{ "name": "m_axi_AXI_W_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_W", "role": "WID" }} , 
 	{ "name": "m_axi_AXI_W_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_W", "role": "WUSER" }} , 
 	{ "name": "m_axi_AXI_W_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_W", "role": "ARVALID" }} , 
 	{ "name": "m_axi_AXI_W_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_W", "role": "ARREADY" }} , 
 	{ "name": "m_axi_AXI_W_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXI_W", "role": "ARADDR" }} , 
 	{ "name": "m_axi_AXI_W_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_W", "role": "ARID" }} , 
 	{ "name": "m_axi_AXI_W_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "AXI_W", "role": "ARLEN" }} , 
 	{ "name": "m_axi_AXI_W_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AXI_W", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_AXI_W_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXI_W", "role": "ARBURST" }} , 
 	{ "name": "m_axi_AXI_W_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXI_W", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_AXI_W_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_W", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_AXI_W_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AXI_W", "role": "ARPROT" }} , 
 	{ "name": "m_axi_AXI_W_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_W", "role": "ARQOS" }} , 
 	{ "name": "m_axi_AXI_W_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_W", "role": "ARREGION" }} , 
 	{ "name": "m_axi_AXI_W_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_W", "role": "ARUSER" }} , 
 	{ "name": "m_axi_AXI_W_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_W", "role": "RVALID" }} , 
 	{ "name": "m_axi_AXI_W_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_W", "role": "RREADY" }} , 
 	{ "name": "m_axi_AXI_W_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "AXI_W", "role": "RDATA" }} , 
 	{ "name": "m_axi_AXI_W_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_W", "role": "RLAST" }} , 
 	{ "name": "m_axi_AXI_W_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_W", "role": "RID" }} , 
 	{ "name": "m_axi_AXI_W_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_W", "role": "RUSER" }} , 
 	{ "name": "m_axi_AXI_W_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXI_W", "role": "RRESP" }} , 
 	{ "name": "m_axi_AXI_W_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_W", "role": "BVALID" }} , 
 	{ "name": "m_axi_AXI_W_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_W", "role": "BREADY" }} , 
 	{ "name": "m_axi_AXI_W_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXI_W", "role": "BRESP" }} , 
 	{ "name": "m_axi_AXI_W_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_W", "role": "BID" }} , 
 	{ "name": "m_axi_AXI_W_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_W", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32"],
		"CDFG" : "conv",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "AXI_F", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "AXI_F_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "AXI_F_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "AXI_F_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "AXI_F_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "AXI_F_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_W", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "AXI_W_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "AXI_W_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "CHin_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "Hin_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "Win_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "CHout_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "Kx_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ky_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sx_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sy_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "mode_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "relu_en_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "feature_in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "feature_in_precision_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_precision_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_precision_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "feature_out_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "feature_out_precision_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_AXILiteS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_AXI_F_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_AXI_W_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_gmem_m_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_sdiv_19s_9nsbkb_U1", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_sdiv_19s_9nsbkb_U2", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_urem_48ns_16cud_U3", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_8ns_dEe_U4", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_8ns_eOg_U5", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16nsfYi_U6", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16nsfYi_U7", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16nsfYi_U8", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mac_mul_sub_g8j_U9", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16s_hbi_U10", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_8ns_ibs_U11", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16nsjbC_U12", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16s_kbM_U13", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16s_kbM_U14", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_8ns_dEe_U15", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16nsjbC_U16", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_8ns_lbW_U17", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mac_muladd_2mb6_U18", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_8ns_lbW_U19", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mac_muladd_1ncg_U20", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16s_ocq_U21", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mac_muladd_1ncg_U22", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16s_ocq_U23", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mac_muladd_1ncg_U24", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16s_ocq_U25", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mac_muladd_1ncg_U26", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16s_ocq_U27", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16nspcA_U28", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv {
		AXI_F {Type IO LastRead 94 FirstWrite 90}
		AXI_W {Type I LastRead 93 FirstWrite -1}
		gmem {Type I LastRead 82 FirstWrite -1}
		CHin_V {Type I LastRead 0 FirstWrite -1}
		Hin_V {Type I LastRead 0 FirstWrite -1}
		Win_V {Type I LastRead 0 FirstWrite -1}
		CHout_V {Type I LastRead 0 FirstWrite -1}
		Kx_V {Type I LastRead 0 FirstWrite -1}
		Ky_V {Type I LastRead 0 FirstWrite -1}
		Sx_V {Type I LastRead 0 FirstWrite -1}
		Sy_V {Type I LastRead 0 FirstWrite -1}
		mode_V {Type I LastRead 0 FirstWrite -1}
		relu_en_V {Type I LastRead 0 FirstWrite -1}
		feature_in_V {Type I LastRead 0 FirstWrite -1}
		feature_in_precision_V {Type I LastRead 0 FirstWrite -1}
		W_V {Type I LastRead 0 FirstWrite -1}
		W_precision_V {Type I LastRead 0 FirstWrite -1}
		B_V {Type I LastRead 0 FirstWrite -1}
		B_precision_V {Type I LastRead 0 FirstWrite -1}
		feature_out_V {Type I LastRead 0 FirstWrite -1}
		feature_out_precision_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	AXI_F { m_axi {  { m_axi_AXI_F_AWVALID VALID 1 1 }  { m_axi_AXI_F_AWREADY READY 0 1 }  { m_axi_AXI_F_AWADDR ADDR 1 32 }  { m_axi_AXI_F_AWID ID 1 1 }  { m_axi_AXI_F_AWLEN LEN 1 8 }  { m_axi_AXI_F_AWSIZE SIZE 1 3 }  { m_axi_AXI_F_AWBURST BURST 1 2 }  { m_axi_AXI_F_AWLOCK LOCK 1 2 }  { m_axi_AXI_F_AWCACHE CACHE 1 4 }  { m_axi_AXI_F_AWPROT PROT 1 3 }  { m_axi_AXI_F_AWQOS QOS 1 4 }  { m_axi_AXI_F_AWREGION REGION 1 4 }  { m_axi_AXI_F_AWUSER USER 1 1 }  { m_axi_AXI_F_WVALID VALID 1 1 }  { m_axi_AXI_F_WREADY READY 0 1 }  { m_axi_AXI_F_WDATA DATA 1 128 }  { m_axi_AXI_F_WSTRB STRB 1 16 }  { m_axi_AXI_F_WLAST LAST 1 1 }  { m_axi_AXI_F_WID ID 1 1 }  { m_axi_AXI_F_WUSER USER 1 1 }  { m_axi_AXI_F_ARVALID VALID 1 1 }  { m_axi_AXI_F_ARREADY READY 0 1 }  { m_axi_AXI_F_ARADDR ADDR 1 32 }  { m_axi_AXI_F_ARID ID 1 1 }  { m_axi_AXI_F_ARLEN LEN 1 8 }  { m_axi_AXI_F_ARSIZE SIZE 1 3 }  { m_axi_AXI_F_ARBURST BURST 1 2 }  { m_axi_AXI_F_ARLOCK LOCK 1 2 }  { m_axi_AXI_F_ARCACHE CACHE 1 4 }  { m_axi_AXI_F_ARPROT PROT 1 3 }  { m_axi_AXI_F_ARQOS QOS 1 4 }  { m_axi_AXI_F_ARREGION REGION 1 4 }  { m_axi_AXI_F_ARUSER USER 1 1 }  { m_axi_AXI_F_RVALID VALID 0 1 }  { m_axi_AXI_F_RREADY READY 1 1 }  { m_axi_AXI_F_RDATA DATA 0 128 }  { m_axi_AXI_F_RLAST LAST 0 1 }  { m_axi_AXI_F_RID ID 0 1 }  { m_axi_AXI_F_RUSER USER 0 1 }  { m_axi_AXI_F_RRESP RESP 0 2 }  { m_axi_AXI_F_BVALID VALID 0 1 }  { m_axi_AXI_F_BREADY READY 1 1 }  { m_axi_AXI_F_BRESP RESP 0 2 }  { m_axi_AXI_F_BID ID 0 1 }  { m_axi_AXI_F_BUSER USER 0 1 } } }
	AXI_W { m_axi {  { m_axi_AXI_W_AWVALID VALID 1 1 }  { m_axi_AXI_W_AWREADY READY 0 1 }  { m_axi_AXI_W_AWADDR ADDR 1 32 }  { m_axi_AXI_W_AWID ID 1 1 }  { m_axi_AXI_W_AWLEN LEN 1 8 }  { m_axi_AXI_W_AWSIZE SIZE 1 3 }  { m_axi_AXI_W_AWBURST BURST 1 2 }  { m_axi_AXI_W_AWLOCK LOCK 1 2 }  { m_axi_AXI_W_AWCACHE CACHE 1 4 }  { m_axi_AXI_W_AWPROT PROT 1 3 }  { m_axi_AXI_W_AWQOS QOS 1 4 }  { m_axi_AXI_W_AWREGION REGION 1 4 }  { m_axi_AXI_W_AWUSER USER 1 1 }  { m_axi_AXI_W_WVALID VALID 1 1 }  { m_axi_AXI_W_WREADY READY 0 1 }  { m_axi_AXI_W_WDATA DATA 1 128 }  { m_axi_AXI_W_WSTRB STRB 1 16 }  { m_axi_AXI_W_WLAST LAST 1 1 }  { m_axi_AXI_W_WID ID 1 1 }  { m_axi_AXI_W_WUSER USER 1 1 }  { m_axi_AXI_W_ARVALID VALID 1 1 }  { m_axi_AXI_W_ARREADY READY 0 1 }  { m_axi_AXI_W_ARADDR ADDR 1 32 }  { m_axi_AXI_W_ARID ID 1 1 }  { m_axi_AXI_W_ARLEN LEN 1 8 }  { m_axi_AXI_W_ARSIZE SIZE 1 3 }  { m_axi_AXI_W_ARBURST BURST 1 2 }  { m_axi_AXI_W_ARLOCK LOCK 1 2 }  { m_axi_AXI_W_ARCACHE CACHE 1 4 }  { m_axi_AXI_W_ARPROT PROT 1 3 }  { m_axi_AXI_W_ARQOS QOS 1 4 }  { m_axi_AXI_W_ARREGION REGION 1 4 }  { m_axi_AXI_W_ARUSER USER 1 1 }  { m_axi_AXI_W_RVALID VALID 0 1 }  { m_axi_AXI_W_RREADY READY 1 1 }  { m_axi_AXI_W_RDATA DATA 0 128 }  { m_axi_AXI_W_RLAST LAST 0 1 }  { m_axi_AXI_W_RID ID 0 1 }  { m_axi_AXI_W_RUSER USER 0 1 }  { m_axi_AXI_W_RRESP RESP 0 2 }  { m_axi_AXI_W_BVALID VALID 0 1 }  { m_axi_AXI_W_BREADY READY 1 1 }  { m_axi_AXI_W_BRESP RESP 0 2 }  { m_axi_AXI_W_BID ID 0 1 }  { m_axi_AXI_W_BUSER USER 0 1 } } }
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 32 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN LEN 1 8 }  { m_axi_gmem_AWSIZE SIZE 1 3 }  { m_axi_gmem_AWBURST BURST 1 2 }  { m_axi_gmem_AWLOCK LOCK 1 2 }  { m_axi_gmem_AWCACHE CACHE 1 4 }  { m_axi_gmem_AWPROT PROT 1 3 }  { m_axi_gmem_AWQOS QOS 1 4 }  { m_axi_gmem_AWREGION REGION 1 4 }  { m_axi_gmem_AWUSER USER 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA DATA 1 32 }  { m_axi_gmem_WSTRB STRB 1 4 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER USER 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 32 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN LEN 1 8 }  { m_axi_gmem_ARSIZE SIZE 1 3 }  { m_axi_gmem_ARBURST BURST 1 2 }  { m_axi_gmem_ARLOCK LOCK 1 2 }  { m_axi_gmem_ARCACHE CACHE 1 4 }  { m_axi_gmem_ARPROT PROT 1 3 }  { m_axi_gmem_ARQOS QOS 1 4 }  { m_axi_gmem_ARREGION REGION 1 4 }  { m_axi_gmem_ARUSER USER 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA DATA 0 32 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER USER 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ AXI_F { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ AXI_W { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ gmem { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ AXI_F 1 }
	{ AXI_W 1 }
	{ gmem 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ AXI_F 1 }
	{ AXI_W 1 }
	{ gmem 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
