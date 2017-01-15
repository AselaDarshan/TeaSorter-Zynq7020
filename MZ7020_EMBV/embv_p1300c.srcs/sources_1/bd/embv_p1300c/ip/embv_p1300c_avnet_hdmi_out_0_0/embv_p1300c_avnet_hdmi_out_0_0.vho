-- (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: avnet:avnet_hdmi:avnet_hdmi_out:3.1
-- IP Revision: 1

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT embv_p1300c_avnet_hdmi_out_0_0
  PORT (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    oe : IN STD_LOGIC;
    embed_syncs : IN STD_LOGIC;
    audio_spdif : IN STD_LOGIC;
    video_vblank : IN STD_LOGIC;
    video_hblank : IN STD_LOGIC;
    video_de : IN STD_LOGIC;
    video_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    io_hdmio_spdif : OUT STD_LOGIC;
    io_hdmio_video : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    io_hdmio_clk : OUT STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : embv_p1300c_avnet_hdmi_out_0_0
  PORT MAP (
    clk => clk,
    reset => reset,
    oe => oe,
    embed_syncs => embed_syncs,
    audio_spdif => audio_spdif,
    video_vblank => video_vblank,
    video_hblank => video_hblank,
    video_de => video_de,
    video_data => video_data,
    io_hdmio_spdif => io_hdmio_spdif,
    io_hdmio_video => io_hdmio_video,
    io_hdmio_clk => io_hdmio_clk
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

