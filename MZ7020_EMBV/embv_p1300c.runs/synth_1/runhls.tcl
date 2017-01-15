open_project embv_p1300c_v_tpg_0_0
set_top v_tpg
add_files -cflags " -I f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_v_tpg_0_0/src " f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_v_tpg_0_0/src/v_tpg_config.h
add_files -cflags " -I f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_v_tpg_0_0/src " f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_v_tpg_0_0/src/v_tpg.cpp
add_files -cflags " -I f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_v_tpg_0_0/src " f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_v_tpg_0_0/src/v_tpg.h
add_files -cflags " -I f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_v_tpg_0_0/src " f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_v_tpg_0_0/src/v_tpg_zoneplate.h

open_solution "prj"
set_part {xc7z020clg400-1}
create_clock -period 7 -name ap_clk


config_rtl -form_dsp
config_schedule -verbose

set_directive_interface -mode axis -register v_tpg m_axis_video 
config_interface -output_reg_mode both


config_rtl -prefix embv_p1300c_v_tpg_0_0_
csynth_design
export_design -format ip_catalog -vendor xilinx.com -library ip -version 7.0
exit
