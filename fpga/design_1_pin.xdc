#|          property             |            port name             | Kv260 Sch.       | Net Name | SOM240 Connector |
#|-------------------------------|----------------------------------|------------------|----------|------------------|
set_property PACKAGE_PIN A12      [get_ports "FAN_EN"]              ;# FUN             | HDA20    | C24,som240_1_c24 |
set_property IOSTANDARD  LVCMOS33 [get_ports "FAN_EN"]              ;
set_property DRIVE       16       [get_ports "FAN_EN"]              ;

#|          property             |            port name             | Pmod | Kv260 Sch.| Net Name | SOM240 Connector |
#|-------------------------------|----------------------------------|------|-----------|----------|------------------|
set_property PACKAGE_PIN H12      [get_ports "PMOD_GPIO_tri_io[0]"] ;# S1A | J2.1      | HDA11    | A17,som240_1_a17 |
set_property IOSTANDARD  LVCMOS33 [get_ports "PMOD_GPIO_tri_io[0]"] ;
set_property DRIVE       16       [get_ports "PMOD_GPIO_tri_io[0]"] ;
set_property PACKAGE_PIN E10      [get_ports "PMOD_GPIO_tri_io[1]"] ;# S2A | J2.3      | HDA12    | D20,som240_1_d20 |
set_property IOSTANDARD  LVCMOS33 [get_ports "PMOD_GPIO_tri_io[1]"] ;
set_property DRIVE       16       [get_ports "PMOD_GPIO_tri_io[1]"] ;
set_property PACKAGE_PIN D10      [get_ports "PMOD_GPIO_tri_io[2]"] ;# S3A | J2.5      | HDA13    | D21,som240_1_d21 |
set_property IOSTANDARD  LVCMOS33 [get_ports "PMOD_GPIO_tri_io[2]"] ;
set_property DRIVE       16       [get_ports "PMOD_GPIO_tri_io[2]"] ;
set_property PACKAGE_PIN C11      [get_ports "PMOD_GPIO_tri_io[3]"] ;# S4A | J2.7      | HDA14    | D22,som240_1_d22 |	
set_property IOSTANDARD  LVCMOS33 [get_ports "PMOD_GPIO_tri_io[3]"] ;
set_property DRIVE       16       [get_ports "PMOD_GPIO_tri_io[3]"] ;
set_property PACKAGE_PIN B10      [get_ports "PMOD_GPIO_tri_io[4]"] ;# S1B | J2.2      | HDA15    | B20,som240_1_b20 |
set_property IOSTANDARD  LVCMOS33 [get_ports "PMOD_GPIO_tri_io[4]"] ;
set_property DRIVE       16       [get_ports "PMOD_GPIO_tri_io[4]"] ;
set_property PACKAGE_PIN E12      [get_ports "PMOD_GPIO_tri_io[5]"] ;# S2B | J2.4      | HDA16_CC | B21,som240_1_b21 |
set_property IOSTANDARD  LVCMOS33 [get_ports "PMOD_GPIO_tri_io[5]"] ;
set_property DRIVE       16       [get_ports "PMOD_GPIO_tri_io[5]"] ;
set_property PACKAGE_PIN D11      [get_ports "PMOD_GPIO_tri_io[6]"] ;# S3B | J2.6      | HDA17    | B22,som240_1_b22 |
set_property IOSTANDARD  LVCMOS33 [get_ports "PMOD_GPIO_tri_io[6]"] ;
set_property DRIVE       16       [get_ports "PMOD_GPIO_tri_io[6]"] ;
set_property PACKAGE_PIN B11      [get_ports "PMOD_GPIO_tri_io[7]"] ;# S4B | J2.8      | HDA18    | C22,som240_1_c22 |
set_property IOSTANDARD  LVCMOS33 [get_ports "PMOD_GPIO_tri_io[7]"] ;
set_property DRIVE       16       [get_ports "PMOD_GPIO_tri_io[7]"] ;
