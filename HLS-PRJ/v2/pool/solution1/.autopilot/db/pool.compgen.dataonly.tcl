# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_AXILiteS {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
ch_div_K { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
height_in { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
width_in { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
height_out { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
width_out { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
Kx { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
Ky { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
}
dict set axilite_register_dict AXILiteS $port_AXILiteS


