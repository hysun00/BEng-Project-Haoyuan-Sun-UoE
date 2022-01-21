# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_AXILiteS {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
CHin_V { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
Hin_V { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
Win_V { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
CHout_V { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
Kx_V { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
Ky_V { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
Sx_V { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
Sy_V { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 72
	offset_end 79
}
mode_V { 
	dir I
	width 1
	depth 1
	mode ap_none
	offset 80
	offset_end 87
}
relu_en_V { 
	dir I
	width 1
	depth 1
	mode ap_none
	offset 88
	offset_end 95
}
feature_in_V { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 96
	offset_end 103
}
feature_in_precision_V { 
	dir I
	width 4
	depth 1
	mode ap_none
	offset 104
	offset_end 111
}
W_V { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 112
	offset_end 119
}
W_precision_V { 
	dir I
	width 4
	depth 1
	mode ap_none
	offset 120
	offset_end 127
}
B_V { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 128
	offset_end 135
}
B_precision_V { 
	dir I
	width 4
	depth 1
	mode ap_none
	offset 136
	offset_end 143
}
feature_out_V { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 144
	offset_end 151
}
feature_out_precision_V { 
	dir I
	width 4
	depth 1
	mode ap_none
	offset 152
	offset_end 159
}
}
dict set axilite_register_dict AXILiteS $port_AXILiteS


