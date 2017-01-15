-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2015.4
-- Copyright (C) 2015 Xilinx Inc. All rights reserved.
-- 
-- ==============================================================

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity embv_p1300c_v_tpg_0_0_v_tpg_CTRL_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 8;
    C_S_AXI_DATA_WIDTH    : INTEGER := 32);
port (
    -- axi4 lite slave signals
    ACLK                  :in   STD_LOGIC;
    ARESET                :in   STD_LOGIC;
    ACLK_EN               :in   STD_LOGIC;
    AWADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    AWVALID               :in   STD_LOGIC;
    AWREADY               :out  STD_LOGIC;
    WDATA                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    WSTRB                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH/8-1 downto 0);
    WVALID                :in   STD_LOGIC;
    WREADY                :out  STD_LOGIC;
    BRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    BVALID                :out  STD_LOGIC;
    BREADY                :in   STD_LOGIC;
    ARADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    ARVALID               :in   STD_LOGIC;
    ARREADY               :out  STD_LOGIC;
    RDATA                 :out  STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    RRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    RVALID                :out  STD_LOGIC;
    RREADY                :in   STD_LOGIC;
    interrupt             :out  STD_LOGIC;
    -- user signals
    height                :out  STD_LOGIC_VECTOR(15 downto 0);
    width                 :out  STD_LOGIC_VECTOR(15 downto 0);
    bckgndId              :out  STD_LOGIC_VECTOR(7 downto 0);
    ovrlayId              :out  STD_LOGIC_VECTOR(7 downto 0);
    maskId                :out  STD_LOGIC_VECTOR(7 downto 0);
    motionSpeed           :out  STD_LOGIC_VECTOR(7 downto 0);
    colorFormat           :out  STD_LOGIC_VECTOR(7 downto 0);
    crossHairX            :out  STD_LOGIC_VECTOR(15 downto 0);
    crossHairY            :out  STD_LOGIC_VECTOR(15 downto 0);
    ZplateHorContStart    :out  STD_LOGIC_VECTOR(15 downto 0);
    ZplateHorContDelta    :out  STD_LOGIC_VECTOR(15 downto 0);
    ZplateVerContStart    :out  STD_LOGIC_VECTOR(15 downto 0);
    ZplateVerContDelta    :out  STD_LOGIC_VECTOR(15 downto 0);
    boxSize               :out  STD_LOGIC_VECTOR(15 downto 0);
    boxColorR             :out  STD_LOGIC_VECTOR(15 downto 0);
    boxColorG             :out  STD_LOGIC_VECTOR(15 downto 0);
    boxColorB             :out  STD_LOGIC_VECTOR(15 downto 0);
    ap_start              :out  STD_LOGIC;
    ap_done               :in   STD_LOGIC;
    ap_ready              :in   STD_LOGIC;
    ap_idle               :in   STD_LOGIC
);
end entity embv_p1300c_v_tpg_0_0_v_tpg_CTRL_s_axi;

-- ------------------------Address Info-------------------
-- 0x00 : Control signals
--        bit 0  - ap_start (Read/Write/COH)
--        bit 1  - ap_done (Read/COR)
--        bit 2  - ap_idle (Read)
--        bit 3  - ap_ready (Read)
--        bit 7  - auto_restart (Read/Write)
--        others - reserved
-- 0x04 : Global Interrupt Enable Register
--        bit 0  - Global Interrupt Enable (Read/Write)
--        others - reserved
-- 0x08 : IP Interrupt Enable Register (Read/Write)
--        bit 0  - Channel 0 (ap_done)
--        bit 1  - Channel 1 (ap_ready)
--        others - reserved
-- 0x0c : IP Interrupt Status Register (Read/TOW)
--        bit 0  - Channel 0 (ap_done)
--        bit 1  - Channel 1 (ap_ready)
--        others - reserved
-- 0x10 : Data signal of height
--        bit 15~0 - height[15:0] (Read/Write)
--        others   - reserved
-- 0x14 : reserved
-- 0x18 : Data signal of width
--        bit 15~0 - width[15:0] (Read/Write)
--        others   - reserved
-- 0x1c : reserved
-- 0x20 : Data signal of bckgndId
--        bit 7~0 - bckgndId[7:0] (Read/Write)
--        others  - reserved
-- 0x24 : reserved
-- 0x28 : Data signal of ovrlayId
--        bit 7~0 - ovrlayId[7:0] (Read/Write)
--        others  - reserved
-- 0x2c : reserved
-- 0x30 : Data signal of maskId
--        bit 7~0 - maskId[7:0] (Read/Write)
--        others  - reserved
-- 0x34 : reserved
-- 0x38 : Data signal of motionSpeed
--        bit 7~0 - motionSpeed[7:0] (Read/Write)
--        others  - reserved
-- 0x3c : reserved
-- 0x40 : Data signal of colorFormat
--        bit 7~0 - colorFormat[7:0] (Read/Write)
--        others  - reserved
-- 0x44 : reserved
-- 0x48 : Data signal of crossHairX
--        bit 15~0 - crossHairX[15:0] (Read/Write)
--        others   - reserved
-- 0x4c : reserved
-- 0x50 : Data signal of crossHairY
--        bit 15~0 - crossHairY[15:0] (Read/Write)
--        others   - reserved
-- 0x54 : reserved
-- 0x58 : Data signal of ZplateHorContStart
--        bit 15~0 - ZplateHorContStart[15:0] (Read/Write)
--        others   - reserved
-- 0x5c : reserved
-- 0x60 : Data signal of ZplateHorContDelta
--        bit 15~0 - ZplateHorContDelta[15:0] (Read/Write)
--        others   - reserved
-- 0x64 : reserved
-- 0x68 : Data signal of ZplateVerContStart
--        bit 15~0 - ZplateVerContStart[15:0] (Read/Write)
--        others   - reserved
-- 0x6c : reserved
-- 0x70 : Data signal of ZplateVerContDelta
--        bit 15~0 - ZplateVerContDelta[15:0] (Read/Write)
--        others   - reserved
-- 0x74 : reserved
-- 0x78 : Data signal of boxSize
--        bit 15~0 - boxSize[15:0] (Read/Write)
--        others   - reserved
-- 0x7c : reserved
-- 0x80 : Data signal of boxColorR
--        bit 15~0 - boxColorR[15:0] (Read/Write)
--        others   - reserved
-- 0x84 : reserved
-- 0x88 : Data signal of boxColorG
--        bit 15~0 - boxColorG[15:0] (Read/Write)
--        others   - reserved
-- 0x8c : reserved
-- 0x90 : Data signal of boxColorB
--        bit 15~0 - boxColorB[15:0] (Read/Write)
--        others   - reserved
-- 0x94 : reserved
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of embv_p1300c_v_tpg_0_0_v_tpg_CTRL_s_axi is
    type states is (wridle, wrdata, wrresp, rdidle, rddata);  -- read and write fsm states
    signal wstate, wnext, rstate, rnext: states;
    constant ADDR_AP_CTRL                   : INTEGER := 16#00#;
    constant ADDR_GIE                       : INTEGER := 16#04#;
    constant ADDR_IER                       : INTEGER := 16#08#;
    constant ADDR_ISR                       : INTEGER := 16#0c#;
    constant ADDR_HEIGHT_DATA_0             : INTEGER := 16#10#;
    constant ADDR_HEIGHT_CTRL               : INTEGER := 16#14#;
    constant ADDR_WIDTH_DATA_0              : INTEGER := 16#18#;
    constant ADDR_WIDTH_CTRL                : INTEGER := 16#1c#;
    constant ADDR_BCKGNDID_DATA_0           : INTEGER := 16#20#;
    constant ADDR_BCKGNDID_CTRL             : INTEGER := 16#24#;
    constant ADDR_OVRLAYID_DATA_0           : INTEGER := 16#28#;
    constant ADDR_OVRLAYID_CTRL             : INTEGER := 16#2c#;
    constant ADDR_MASKID_DATA_0             : INTEGER := 16#30#;
    constant ADDR_MASKID_CTRL               : INTEGER := 16#34#;
    constant ADDR_MOTIONSPEED_DATA_0        : INTEGER := 16#38#;
    constant ADDR_MOTIONSPEED_CTRL          : INTEGER := 16#3c#;
    constant ADDR_COLORFORMAT_DATA_0        : INTEGER := 16#40#;
    constant ADDR_COLORFORMAT_CTRL          : INTEGER := 16#44#;
    constant ADDR_CROSSHAIRX_DATA_0         : INTEGER := 16#48#;
    constant ADDR_CROSSHAIRX_CTRL           : INTEGER := 16#4c#;
    constant ADDR_CROSSHAIRY_DATA_0         : INTEGER := 16#50#;
    constant ADDR_CROSSHAIRY_CTRL           : INTEGER := 16#54#;
    constant ADDR_ZPLATEHORCONTSTART_DATA_0 : INTEGER := 16#58#;
    constant ADDR_ZPLATEHORCONTSTART_CTRL   : INTEGER := 16#5c#;
    constant ADDR_ZPLATEHORCONTDELTA_DATA_0 : INTEGER := 16#60#;
    constant ADDR_ZPLATEHORCONTDELTA_CTRL   : INTEGER := 16#64#;
    constant ADDR_ZPLATEVERCONTSTART_DATA_0 : INTEGER := 16#68#;
    constant ADDR_ZPLATEVERCONTSTART_CTRL   : INTEGER := 16#6c#;
    constant ADDR_ZPLATEVERCONTDELTA_DATA_0 : INTEGER := 16#70#;
    constant ADDR_ZPLATEVERCONTDELTA_CTRL   : INTEGER := 16#74#;
    constant ADDR_BOXSIZE_DATA_0            : INTEGER := 16#78#;
    constant ADDR_BOXSIZE_CTRL              : INTEGER := 16#7c#;
    constant ADDR_BOXCOLORR_DATA_0          : INTEGER := 16#80#;
    constant ADDR_BOXCOLORR_CTRL            : INTEGER := 16#84#;
    constant ADDR_BOXCOLORG_DATA_0          : INTEGER := 16#88#;
    constant ADDR_BOXCOLORG_CTRL            : INTEGER := 16#8c#;
    constant ADDR_BOXCOLORB_DATA_0          : INTEGER := 16#90#;
    constant ADDR_BOXCOLORB_CTRL            : INTEGER := 16#94#;
    constant ADDR_BITS         : INTEGER := 8;

    signal waddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal wmask               : UNSIGNED(31 downto 0);
    signal aw_hs               : STD_LOGIC;
    signal w_hs                : STD_LOGIC;
    signal rdata_data          : UNSIGNED(31 downto 0);
    signal ar_hs               : STD_LOGIC;
    signal raddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal AWREADY_t           : STD_LOGIC;
    signal WREADY_t            : STD_LOGIC;
    signal ARREADY_t           : STD_LOGIC;
    signal RVALID_t            : STD_LOGIC;
    -- internal registers
    signal int_ap_idle         : STD_LOGIC;
    signal int_ap_ready        : STD_LOGIC;
    signal int_ap_done         : STD_LOGIC;
    signal int_ap_start        : STD_LOGIC;
    signal int_auto_restart    : STD_LOGIC;
    signal int_gie             : STD_LOGIC;
    signal int_ier             : UNSIGNED(1 downto 0);
    signal int_isr             : UNSIGNED(1 downto 0);
    signal int_height          : UNSIGNED(15 downto 0);
    signal int_width           : UNSIGNED(15 downto 0);
    signal int_bckgndId        : UNSIGNED(7 downto 0);
    signal int_ovrlayId        : UNSIGNED(7 downto 0);
    signal int_maskId          : UNSIGNED(7 downto 0);
    signal int_motionSpeed     : UNSIGNED(7 downto 0);
    signal int_colorFormat     : UNSIGNED(7 downto 0);
    signal int_crossHairX      : UNSIGNED(15 downto 0);
    signal int_crossHairY      : UNSIGNED(15 downto 0);
    signal int_ZplateHorContStart : UNSIGNED(15 downto 0);
    signal int_ZplateHorContDelta : UNSIGNED(15 downto 0);
    signal int_ZplateVerContStart : UNSIGNED(15 downto 0);
    signal int_ZplateVerContDelta : UNSIGNED(15 downto 0);
    signal int_boxSize         : UNSIGNED(15 downto 0);
    signal int_boxColorR       : UNSIGNED(15 downto 0);
    signal int_boxColorG       : UNSIGNED(15 downto 0);
    signal int_boxColorB       : UNSIGNED(15 downto 0);


begin
-- ----------------------- Instantiation------------------

-- ----------------------- AXI WRITE ---------------------
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata else '0';
    WREADY    <=  WREADY_t;
    BRESP     <=  "00";  -- OKAY
    BVALID    <=  '1' when wstate = wrresp else '0';
    wmask     <=  (31 downto 24 => WSTRB(3), 23 downto 16 => WSTRB(2), 15 downto 8 => WSTRB(1), 7 downto 0 => WSTRB(0));
    aw_hs     <=  AWVALID and AWREADY_t;
    w_hs      <=  WVALID and WREADY_t;

    -- write FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wstate <= wridle;
            elsif (ACLK_EN = '1') then
                wstate <= wnext;
            end if;
        end if;
    end process;

    process (wstate, AWVALID, WVALID, BREADY)
    begin
        case (wstate) is
        when wridle =>
            if (AWVALID = '1') then
                wnext <= wrdata;
            else
                wnext <= wridle;
            end if;
        when wrdata =>
            if (WVALID = '1') then
                wnext <= wrresp;
            else
                wnext <= wrdata;
            end if;
        when wrresp =>
            if (BREADY = '1') then
                wnext <= wridle;
            else
                wnext <= wrresp;
            end if;
        when others =>
            wnext <= wridle;
        end case;
    end process;

    waddr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
            if (aw_hs = '1') then
                waddr <= UNSIGNED(AWADDR(ADDR_BITS-1 downto 0));
            end if;
        end if;
    end process;

-- ----------------------- AXI READ ----------------------
    ARREADY_t <= '1' when (rstate = rdidle) else '0';
    ARREADY <= ARREADY_t;
    RDATA   <= STD_LOGIC_VECTOR(rdata_data);
    RRESP   <= "00";  -- OKAY
    RVALID_t  <= '1' when (rstate = rddata) else '0';
    RVALID    <= RVALID_t;
    ar_hs   <= ARVALID and ARREADY_t;
    raddr   <= UNSIGNED(ARADDR(ADDR_BITS-1 downto 0));

    -- read FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rstate <= rdidle;
            elsif (ACLK_EN = '1') then
                rstate <= rnext;
            end if;
        end if;
    end process;

    process (rstate, ARVALID, RREADY, RVALID_t)
    begin
        case (rstate) is
        when rdidle =>
            if (ARVALID = '1') then
                rnext <= rddata;
            else
                rnext <= rdidle;
            end if;
        when rddata =>
            if (RREADY = '1' and RVALID_t = '1') then
                rnext <= rdidle;
            else
                rnext <= rddata;
            end if;
        when others =>
            rnext <= rdidle;
        end case;
    end process;

    rdata_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
            if (ar_hs = '1') then
                case (TO_INTEGER(raddr)) is
                when ADDR_AP_CTRL =>
                    rdata_data <= (7 => int_auto_restart, 3 => int_ap_ready, 2 => int_ap_idle, 1 => int_ap_done, 0 => int_ap_start, others => '0');
                when ADDR_GIE =>
                    rdata_data <= (0 => int_gie, others => '0');
                when ADDR_IER =>
                    rdata_data <= (1 => int_ier(1), 0 => int_ier(0), others => '0');
                when ADDR_ISR =>
                    rdata_data <= (1 => int_isr(1), 0 => int_isr(0), others => '0');
                when ADDR_HEIGHT_DATA_0 =>
                    rdata_data <= RESIZE(int_height(15 downto 0), 32);
                when ADDR_WIDTH_DATA_0 =>
                    rdata_data <= RESIZE(int_width(15 downto 0), 32);
                when ADDR_BCKGNDID_DATA_0 =>
                    rdata_data <= RESIZE(int_bckgndId(7 downto 0), 32);
                when ADDR_OVRLAYID_DATA_0 =>
                    rdata_data <= RESIZE(int_ovrlayId(7 downto 0), 32);
                when ADDR_MASKID_DATA_0 =>
                    rdata_data <= RESIZE(int_maskId(7 downto 0), 32);
                when ADDR_MOTIONSPEED_DATA_0 =>
                    rdata_data <= RESIZE(int_motionSpeed(7 downto 0), 32);
                when ADDR_COLORFORMAT_DATA_0 =>
                    rdata_data <= RESIZE(int_colorFormat(7 downto 0), 32);
                when ADDR_CROSSHAIRX_DATA_0 =>
                    rdata_data <= RESIZE(int_crossHairX(15 downto 0), 32);
                when ADDR_CROSSHAIRY_DATA_0 =>
                    rdata_data <= RESIZE(int_crossHairY(15 downto 0), 32);
                when ADDR_ZPLATEHORCONTSTART_DATA_0 =>
                    rdata_data <= RESIZE(int_ZplateHorContStart(15 downto 0), 32);
                when ADDR_ZPLATEHORCONTDELTA_DATA_0 =>
                    rdata_data <= RESIZE(int_ZplateHorContDelta(15 downto 0), 32);
                when ADDR_ZPLATEVERCONTSTART_DATA_0 =>
                    rdata_data <= RESIZE(int_ZplateVerContStart(15 downto 0), 32);
                when ADDR_ZPLATEVERCONTDELTA_DATA_0 =>
                    rdata_data <= RESIZE(int_ZplateVerContDelta(15 downto 0), 32);
                when ADDR_BOXSIZE_DATA_0 =>
                    rdata_data <= RESIZE(int_boxSize(15 downto 0), 32);
                when ADDR_BOXCOLORR_DATA_0 =>
                    rdata_data <= RESIZE(int_boxColorR(15 downto 0), 32);
                when ADDR_BOXCOLORG_DATA_0 =>
                    rdata_data <= RESIZE(int_boxColorG(15 downto 0), 32);
                when ADDR_BOXCOLORB_DATA_0 =>
                    rdata_data <= RESIZE(int_boxColorB(15 downto 0), 32);
                when others =>
                    rdata_data <= (others => '0');
                end case;
            end if;
        end if;
    end process;

-- ----------------------- Register logic ----------------
    interrupt            <= int_gie and (int_isr(0) or int_isr(1));
    ap_start             <= int_ap_start;
    int_ap_idle          <= ap_idle;
    int_ap_ready         <= ap_ready;
    height               <= STD_LOGIC_VECTOR(int_height);
    width                <= STD_LOGIC_VECTOR(int_width);
    bckgndId             <= STD_LOGIC_VECTOR(int_bckgndId);
    ovrlayId             <= STD_LOGIC_VECTOR(int_ovrlayId);
    maskId               <= STD_LOGIC_VECTOR(int_maskId);
    motionSpeed          <= STD_LOGIC_VECTOR(int_motionSpeed);
    colorFormat          <= STD_LOGIC_VECTOR(int_colorFormat);
    crossHairX           <= STD_LOGIC_VECTOR(int_crossHairX);
    crossHairY           <= STD_LOGIC_VECTOR(int_crossHairY);
    ZplateHorContStart   <= STD_LOGIC_VECTOR(int_ZplateHorContStart);
    ZplateHorContDelta   <= STD_LOGIC_VECTOR(int_ZplateHorContDelta);
    ZplateVerContStart   <= STD_LOGIC_VECTOR(int_ZplateVerContStart);
    ZplateVerContDelta   <= STD_LOGIC_VECTOR(int_ZplateVerContDelta);
    boxSize              <= STD_LOGIC_VECTOR(int_boxSize);
    boxColorR            <= STD_LOGIC_VECTOR(int_boxColorR);
    boxColorG            <= STD_LOGIC_VECTOR(int_boxColorG);
    boxColorB            <= STD_LOGIC_VECTOR(int_boxColorB);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_start <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1' and WDATA(0) = '1') then
                    int_ap_start <= '1';
                elsif (int_ap_ready = '1') then
                    int_ap_start <= int_auto_restart; -- clear on handshake/auto restart
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (ap_done = '1') then
                    int_ap_done <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_ap_done <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_auto_restart <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1') then
                    int_auto_restart <= WDATA(7);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_gie <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GIE and WSTRB(0) = '1') then
                    int_gie <= WDATA(0);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ier <= "00";
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IER and WSTRB(0) = '1') then
                    int_ier <= UNSIGNED(WDATA(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(0) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(0) = '1' and ap_done = '1') then
                    int_isr(0) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(0) <= int_isr(0) xor WDATA(0); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(1) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(1) = '1' and ap_ready = '1') then
                    int_isr(1) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(1) <= int_isr(1) xor WDATA(1); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_HEIGHT_DATA_0) then
                    int_height(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_height(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_WIDTH_DATA_0) then
                    int_width(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_width(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BCKGNDID_DATA_0) then
                    int_bckgndId(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_bckgndId(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_OVRLAYID_DATA_0) then
                    int_ovrlayId(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_ovrlayId(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_MASKID_DATA_0) then
                    int_maskId(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_maskId(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_MOTIONSPEED_DATA_0) then
                    int_motionSpeed(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_motionSpeed(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_COLORFORMAT_DATA_0) then
                    int_colorFormat(7 downto 0) <= (UNSIGNED(WDATA(7 downto 0)) and wmask(7 downto 0)) or ((not wmask(7 downto 0)) and int_colorFormat(7 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_CROSSHAIRX_DATA_0) then
                    int_crossHairX(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_crossHairX(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_CROSSHAIRY_DATA_0) then
                    int_crossHairY(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_crossHairY(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_ZPLATEHORCONTSTART_DATA_0) then
                    int_ZplateHorContStart(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_ZplateHorContStart(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_ZPLATEHORCONTDELTA_DATA_0) then
                    int_ZplateHorContDelta(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_ZplateHorContDelta(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_ZPLATEVERCONTSTART_DATA_0) then
                    int_ZplateVerContStart(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_ZplateVerContStart(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_ZPLATEVERCONTDELTA_DATA_0) then
                    int_ZplateVerContDelta(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_ZplateVerContDelta(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BOXSIZE_DATA_0) then
                    int_boxSize(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_boxSize(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BOXCOLORR_DATA_0) then
                    int_boxColorR(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_boxColorR(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BOXCOLORG_DATA_0) then
                    int_boxColorG(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_boxColorG(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BOXCOLORB_DATA_0) then
                    int_boxColorB(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_boxColorB(15 downto 0));
                end if;
            end if;
        end if;
    end process;


-- ----------------------- Memory logic ------------------

end architecture behave;
