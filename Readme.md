Kv260-Pmod-gpio-emio
=======================================================================

This Repository provides example for pmod-gpio(with emio) and ZynqMP-FPGA-Linux.

Overvier
------------------------------------------------------------------------------------

### Diagram

[Fig.1 Diagram](./kv260-pmod-gpio-emio-diagram.png)

### Requirement

* Board: any of the following
  - Kv260
* OS: any of the following
  - https://github.com/ikwzm/ZynqMP-FPGA-Debian13
  
### Licensing

Distributed under the BSD 2-Clause License.

Build Bitstream file
------------------------------------------------------------------------------------

### Requirement

* Xilinx Vivado 2025.1 or 2025.1.1

### Download Kv260-Pmod-gpio-emio

```console
shell$ git clone --depth 1 --recursive https://github.com/ikwzm/Kv260-Pmod-gpio-emio
shell$ cd Kv260-Pmod-gpio-emio
```

### Build kv260-Pmod-gpio-emio.bin

#### Create Project

```
Vivado > Tools > Run Tcl Script... > fpga/create_project.tcl
```

#### Implementation

```
Vivado > Tools > Run Tcl Script... > fpga/implementation.tcl
```

#### Convert from Bitstream File to Binary File

```console
vivado% cd fpga
vivado% bootgen -image kv260-pmod-gpio-emio.bif -arch zynqmp -o ../kv260-pmod-gpio-emio.bin
vivado% cd ..
```

#### Compress kv260-pmod-gpio-emio.bin to kv260-pmod-gpio-emio.bin.gz

```console
vivado% gzip kv260-pmod-gpio-emio.bin
```

