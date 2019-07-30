
source $ad_hdl_dir/projects/common/zc706/zc706_system_bd.tcl

source ../common/adin1300_dual_bd.tcl

ad_ip_parameter clk_wiz CONFIG.CLKOUT1_REQUESTED_OUT_FREQ 200
ad_ip_parameter clk_wiz CONFIG.MMCM_DIVCLK_DIVIDE 1
ad_ip_parameter clk_wiz CONFIG.MMCM_CLKFBOUT_MULT_F 8
ad_ip_parameter clk_wiz CONFIG.MMCM_CLKIN2_PERIOD 10.0
ad_ip_parameter clk_wiz CONFIG.MMCM_CLKOUT0_DIVIDE_F 5
ad_ip_parameter clk_wiz CONFIG.CLKOUT1_JITTER 109.241
ad_ip_parameter clk_wiz CONFIG.CLKOUT1_PHASE_ERROR 96.948

ad_ip_parameter sys_ps7 CONFIG.PCW_QSPI_GRP_IO1_ENABLE 1
ad_ip_parameter sys_ps7 CONFIG.PCW_ENET0_ENET0_IO EMIO
ad_ip_parameter sys_ps7 CONFIG.PCW_ENET0_GRP_MDIO_IO EMIO
ad_ip_parameter sys_ps7 CONFIG.PCW_ENET1_PERIPHERAL_ENABLE 1
ad_ip_parameter sys_ps7 CONFIG.PCW_ENET1_GRP_MDIO_ENABLE 1

ad_connect sys_ps7/GMII_ETHERNET_0 gmii_to_rgmii_0/GMII
ad_connect sys_ps7/MDIO_ETHERNET_0 gmii_to_rgmii_0/MDIO_GEM
ad_connect sys_ps7/GMII_ETHERNET_1 gmii_to_rgmii_1/GMII
ad_connect sys_ps7/MDIO_ETHERNET_1 gmii_to_rgmii_1/MDIO_GEM

