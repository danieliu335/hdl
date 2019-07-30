
source $ad_hdl_dir/projects/common/zed/zed_system_bd.tcl

ad_ip_parameter sys_ps7 CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE 1
ad_ip_parameter sys_ps7 CONFIG.PCW_ENET0_ENET0_IO EMIO
ad_ip_parameter sys_ps7 CONFIG.PCW_ENET0_GRP_MDIO_IO EMIO
ad_ip_parameter sys_ps7 CONFIG.PCW_ENET1_PERIPHERAL_ENABLE 1
ad_ip_parameter sys_ps7 CONFIG.PCW_ENET1_GRP_MDIO_ENABLE 1
ad_ip_parameter sys_ps7 CONFIG.PCW_SPI0_PERIPHERAL_ENABLE 0
ad_ip_parameter sys_ps7 CONFIG.PCW_SPI1_PERIPHERAL_ENABLE 0

# using the ETH(EMIO) of the ps7 will have to give up the SPI
delete_bd_objs [get_bd_nets spi0_clk_i_1] \
               [get_bd_nets sys_ps7_SPI0_SCLK_O] \
               [get_bd_nets spi0_sdo_i_1] \
               [get_bd_nets sys_ps7_SPI0_MOSI_O] \
               [get_bd_nets spi0_sdi_i_1] \
               [get_bd_nets spi0_csn_i_1] \
               [get_bd_nets sys_ps7_SPI0_SS_O] \
               [get_bd_nets sys_ps7_SPI0_SS1_O] \
               [get_bd_nets sys_ps7_SPI0_SS2_O] \
               [get_bd_nets spi1_clk_i_1] \
               [get_bd_nets sys_ps7_SPI1_SCLK_O] \
               [get_bd_nets spi1_sdo_i_1] \
               [get_bd_nets sys_ps7_SPI1_MOSI_O] \
               [get_bd_nets spi1_sdi_i_1] \
               [get_bd_nets spi1_csn_i_1] \
               [get_bd_nets sys_ps7_SPI1_SS_O] \
               [get_bd_nets sys_ps7_SPI1_SS1_O] \
               [get_bd_nets sys_ps7_SPI1_SS2_O]

source ../common/adin1300_dual_bd.tcl

ad_ip_parameter clk_wiz CONFIG.CLKOUT1_REQUESTED_OUT_FREQ 200
ad_ip_parameter clk_wiz CONFIG.MMCM_DIVCLK_DIVIDE 1
ad_ip_parameter clk_wiz CONFIG.MMCM_CLKFBOUT_MULT_F 8
ad_ip_parameter clk_wiz CONFIG.MMCM_CLKIN2_PERIOD 10.0
ad_ip_parameter clk_wiz CONFIG.MMCM_CLKOUT0_DIVIDE_F 5
ad_ip_parameter clk_wiz CONFIG.CLKOUT1_JITTER 109.241
ad_ip_parameter clk_wiz CONFIG.CLKOUT1_PHASE_ERROR 96.948

ad_connect sys_ps7/GMII_ETHERNET_0 gmii_to_rgmii_0/GMII
ad_connect sys_ps7/MDIO_ETHERNET_0 gmii_to_rgmii_0/MDIO_GEM
ad_connect sys_ps7/GMII_ETHERNET_1 gmii_to_rgmii_1/GMII
ad_connect sys_ps7/MDIO_ETHERNET_1 gmii_to_rgmii_1/MDIO_GEM

