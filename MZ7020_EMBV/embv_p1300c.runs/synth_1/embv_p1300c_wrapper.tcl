# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z020clg400-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir F:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.cache/wt [current_project]
set_property parent.project_path F:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_repo_paths f:/Avnet/hdl/IP [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
add_files F:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/embv_p1300c.bd
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_processing_system7_0_0/embv_p1300c_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_v_cfa_0_0/embv_p1300c_v_cfa_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_v_cfa_0_0/embv_p1300c_v_cfa_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_v_cresample_0_0/embv_p1300c_v_cresample_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_v_cresample_0_0/embv_p1300c_v_cresample_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_v_osd_0_0/embv_p1300c_v_osd_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_v_osd_0_0/embv_p1300c_v_osd_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_v_rgb2ycrcb_0_0/embv_p1300c_v_rgb2ycrcb_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_v_rgb2ycrcb_0_0/embv_p1300c_v_rgb2ycrcb_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_v_tc_0_0/embv_p1300c_v_tc_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_v_tc_0_0/embv_p1300c_v_tc_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_v_tpg_0_0/embv_p1300c_v_tpg_0_0.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_v_tpg_0_0/embv_p1300c_v_tpg_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_xbar_0/embv_p1300c_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_axi_vdma_0_0/embv_p1300c_axi_vdma_0_0.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_axi_vdma_0_0/embv_p1300c_axi_vdma_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_axi_vdma_0_0/embv_p1300c_axi_vdma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_axi_vdma_1_0/embv_p1300c_axi_vdma_1_0.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_axi_vdma_1_0/embv_p1300c_axi_vdma_1_0_clocks.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_axi_vdma_1_0/embv_p1300c_axi_vdma_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_axis_tdata_subset_0/embv_p1300c_axis_tdata_subset_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_clk_wiz_0_0/embv_p1300c_clk_wiz_0_0_board.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_clk_wiz_0_0/embv_p1300c_clk_wiz_0_0.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_clk_wiz_0_0/embv_p1300c_clk_wiz_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_xbar_1/embv_p1300c_xbar_1_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_rst_processing_system7_0_108M_0/embv_p1300c_rst_processing_system7_0_108M_0_board.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_rst_processing_system7_0_108M_0/embv_p1300c_rst_processing_system7_0_108M_0.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_rst_processing_system7_0_108M_0/embv_p1300c_rst_processing_system7_0_108M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_rst_processing_system7_0_149M_0/embv_p1300c_rst_processing_system7_0_149M_0_board.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_rst_processing_system7_0_149M_0/embv_p1300c_rst_processing_system7_0_149M_0.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_rst_processing_system7_0_149M_0/embv_p1300c_rst_processing_system7_0_149M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_rst_processing_system7_0_76M_0/embv_p1300c_rst_processing_system7_0_76M_0_board.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_rst_processing_system7_0_76M_0/embv_p1300c_rst_processing_system7_0_76M_0.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_rst_processing_system7_0_76M_0/embv_p1300c_rst_processing_system7_0_76M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_v_axi4s_vid_out_0_0/embv_p1300c_v_axi4s_vid_out_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_v_axi4s_vid_out_0_0/embv_p1300c_v_axi4s_vid_out_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_v_vid_in_axi4s_0_0/embv_p1300c_v_vid_in_axi4s_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_v_vid_in_axi4s_0_0/embv_p1300c_v_vid_in_axi4s_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_auto_pc_0/embv_p1300c_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_auto_cc_0/embv_p1300c_auto_cc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_auto_cc_0/embv_p1300c_auto_cc_0_clocks.xdc]
set_property used_in_implementation false [get_files -all f:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/ip/embv_p1300c_auto_pc_1/embv_p1300c_auto_pc_1_ooc.xdc]
set_property used_in_implementation false [get_files -all F:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/embv_p1300c_ooc.xdc]
set_property is_locked true [get_files F:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/embv_p1300c.bd]

read_vhdl -library xil_defaultlib F:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/hdl/embv_p1300c_wrapper.vhd
read_xdc F:/Avnet/hdl/Projects/embv_p1300c/embv_python1300.xdc
set_property used_in_implementation false [get_files F:/Avnet/hdl/Projects/embv_p1300c/embv_python1300.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
compile_c [get_files F:/Avnet/hdl/Projects/embv_p1300c/MZ7020_EMBV/embv_p1300c.srcs/sources_1/bd/embv_p1300c/embv_p1300c.bd
]
synth_design -top embv_p1300c_wrapper -part xc7z020clg400-1
write_checkpoint -noxdef embv_p1300c_wrapper.dcp
catch { report_utilization -file embv_p1300c_wrapper_utilization_synth.rpt -pb embv_p1300c_wrapper_utilization_synth.pb }