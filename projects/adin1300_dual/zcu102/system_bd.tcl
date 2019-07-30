
source $ad_hdl_dir/projects/common/zcu102/zcu102_system_bd.tcl

connect_bd_net [get_bd_pins sys_ps8/maxihpm0_lpd_aclk] [get_bd_pins sys_ps8/pl_clk0]

# configuring one parameter at a time will end in a validation proces halt
set_property -dict [list \
  CONFIG.PSU__ENET0__GRP_MDIO__ENABLE {1} \
  CONFIG.PSU__ENET0__GRP_MDIO__IO {EMIO} \
  CONFIG.PSU__ENET0__PERIPHERAL__ENABLE {1} \
  CONFIG.PSU__ENET0__PERIPHERAL__IO {EMIO} \
  CONFIG.PSU__ENET1__PERIPHERAL__ENABLE {1} \
  CONFIG.PSU__ENET1__PERIPHERAL__IO {EMIO} \
  CONFIG.PSU__ENET1__GRP_MDIO__ENABLE {1} \
  CONFIG.PSU__ENET1__GRP_MDIO__IO {EMIO}] [get_bd_cells sys_ps8]


source ../common/adin1300_dual_bd.tcl

ad_connect gmii_to_rgmii_0/GMII sys_ps8/GMII_ENET0
ad_connect gmii_to_rgmii_1/GMII sys_ps8/GMII_ENET1
ad_connect gmii_to_rgmii_0/MDIO_GEM sys_ps8/MDIO_ENET0
ad_connect gmii_to_rgmii_1/MDIO_GEM sys_ps8/MDIO_ENET1

