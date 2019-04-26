#!/bin/bash

mkdir -p /home/qq/
cd /home/qq

#set evironment
git config --global user.email "qq@163.com"
git config --global user.name "qq"
  
#download

mkdir -p /home/qq/phylinux
cd /home/qq/phylinux
wget ftp://ftp.phytec.de/pub/Software/Linux/Yocto/Tools/phyLinux -O phyLinux
chmod +x phyLinux

./phyLinux init -p imx6 -r PD18.1.0 <<EOF
7
EOF

#screen -S build

cd /home/qq/phylinux
source ./sources/poky/oe-init-build-env
export LANG=en_US.UTF-8

cd /home/qq/phylinux/build/
bitbake phytec-qt5demo-image 

#phyLinx help:
#-p:
#*   1: am335x
#*   2: imx6
#*   3: imx6ul
#*   4: imx8
#*   5: imx8m
#*   6: nightly
#*   7: rk3288
#*   8: topic
#
#-r:
#* Please choose one of the available Releases:
#*
#*   1: PD14.2-rc1
#*   2: PD14.2-rc2
#*   3: PD14.2-rc3
#*   4: PD15.1-rc1
#*   5: PD15.1-rc2
#*   6: PD15.1.0
#*   7: PD15.1.1
#*   8: PD15.1.2
#*   9: PD15.2-rc1
#*   10: PD15.2.0
#*   11: PD15.3-rc1
#*   12: PD15.3-rc2
#*   13: PD15.3.0
#*   14: PD15.3.1
#*   15: PD16.1-rc1
#*   16: PD16.1-rc2
#*   17: PD16.1.0
#*   18: PD16.1.1
#*   19: PD16.1.2-rc1
#*   20: PD16.1.2
#*   21: PD18.1-rc4
#*   22: PD18.1.0
#*   23: PD18.1.1-rc1
#*   24: PD18.1.1-rc2
#*   25: PD18.1.1
#*   26: PDVendor-phyBOARD-Segin-PD17.1.0
#*   27: PDVendor-phyBOARD-Segin-PD17.1.1
#*   28: PDVendor-phyBOARD-Segin-PD17.1.2
#*   29: PDphyBOARD-Segin-PD17.2.0
#*   30: PDphyBOARD-Segin-i.MX6UL-ALPHA1
#*   31: PDphyBOARD-Segin-i.MX6UL-ALPHA2
#no:        machine: description and article number
#                    distro: supported yocto distribution
#                    target: supported build target
#
# 1: phyboard-mira-imx6-10: PHYTEC phyBOARD-Mira full-featured i.MX6 Quad
#                    1GiB RAM, NAND with PEB-WLBT-01(Wifi)
#                    PB-01501-004.A1, PBA-C-06-002.A2, PCM-058-33230C0I.A3
#                    distro: yogurt
#                    target: phytec-qt5demo-image
# 2: phyboard-mira-imx6-11: PHYTEC phyBOARD-Mira full-featured i.MX6 Quad
#                    1GiB RAM, NAND with Display AC158
#                    PB-01501-005.A2, PBA-C-06-002.A2, PCM-058-33230C0I.A3
#                    distro: yogurt
#                    target: -c populate_sdk phytec-qt5demo-image
# 3: phyboard-mira-imx6-11: PHYTEC phyBOARD-Mira full-featured i.MX6 Quad
#                    1GiB RAM, NAND with Display AC158
#                    PB-01501-005.A2, PBA-C-06-002.A2, PCM-058-33230C0I.A3
#                    distro: yogurt
#                    target: barebox-hosttools-native
# 4: phyboard-mira-imx6-11: PHYTEC phyBOARD-Mira full-featured i.MX6 Quad
#                    1GiB RAM, NAND with Display AC158
#                    PB-01501-005.A2, PBA-C-06-002.A2, PCM-058-33230C0I.A3
#                    distro: yogurt
#                    target: phytec-qt5demo-image
# 5: phyboard-mira-imx6-12: PHYTEC phyBOARD-Mira full-featured i.MX6 Quad
#                    1GiB RAM, NAND with RS485
#                    PB-01501-XXX.AX, PBA-C-06-002.A2, PCM-058-33230C0I.A3
#                    distro: yogurt
#                    target: phytec-qt5demo-image
# 6: phyboard-mira-imx6-13: PHYTEC phyBOARD-Mira full-featured i.MX6 Quad
#                    1GiB RAM, NAND, Kit with AC104
#                    PB-01501-002.A2, PBA-C-06-002.A2, PCM-058-33230C0I.A3
#                    distro: yogurt
#                    target: phytec-qt5demo-image
# 7: phyboard-mira-imx6-14: PHYTEC phyBOARD-Mira full-featured i.MX6 DualLite
#                    1GiB RAM, 4GiB eMMC
#                    PBA-C-06-002.A2, PCM-058-30242C0X.A0
#                    distro: yogurt
#                    target: phytec-qt5demo-image
# 8: phyboard-mira-imx6-15: PHYTEC phyBOARD-Mira full-featured i.MX6 Solo
#                    256MiB RAM, NAND
#                    PBA-C-06-002.A2, PCM-058-12000D0C.A4
#                    distro: yogurt
#                    target: phytec-qt5demo-image
# 9: phyboard-mira-imx6-3: PHYTEC phyBOARD-Mira full-featured i.MX6 Quad
#                    1GiB RAM, NAND
#                    PB-01501-002.A2, PBA-C-06-002.A2, PCM-058-33230C0I.A3
#                    distro: yogurt
#                    target: phytec-qt5demo-image
#10: phyboard-mira-imx6-3: PHYTEC phyBOARD-Mira full-featured i.MX6 Quad
#                    1GiB RAM, NAND
#                    PB-01501-002.A2, PBA-C-06-002.A2, PCM-058-33230C0I.A3
#                    distro: yogurt
#                    target: phytec-vision-image
#11: phyboard-mira-imx6-4: PHYTEC phyBOARD-Mira low-cost i.MX6 Solo
#                    256MB RAM, NAND
#                    PB-01501-001.A2, PBA-C-06-001.A2, PCM-058-12000D0C.A3
#                    distro: yogurt
#                    target: phytec-qt5demo-image
#12: phyboard-mira-imx6-5: PHYTEC phyBOARD-Mira full-featured i.MX6 Quad
#                    2GiB RAM, 8GiB eMMC
#                    PBA-C-06-002.A2, PCM-058-40233C0I.A0
#                    distro: yogurt
#                    target: phytec-qt5demo-image
#13: phyboard-mira-imx6-8: PHYTEC phyBOARD-Mira full-featured i.MX6 Quad
#                    1GiB RAM, eMMC
#                    PBA-C-06-002.A2, PCM-058-302A3C0X.A0
#                    distro: yogurt
#                    target: phytec-qt5demo-image
#14: phyboard-mira-imx6-9: PHYTEC phyBOARD-Mira full-featured i.MX6 Quad Plus
#                    1GiB RAM, NAND, SPI-NOR
#                    PBA-C-06-002.A2, PCM-058-332B0C0I.A0
#                    distro: yogurt
#                    target: phytec-qt5demo-image
#15: phyboard-nunki-imx6-1: PHYTEC phyBOARD-Nunki i.MX6 Quad
#                    1GiB RAM, NAND
#                    PB-02301-001.A0, PBA-C-11-001.A2, PCM-058-33230C0I.A3
#                    distro: yogurt
#                    target: phytec-qt5demo-image
#16: phyboard-nunki-imx6-1: PHYTEC phyBOARD-Nunki i.MX6 Quad
#                    1GiB RAM, NAND
#                    PB-02301-001.A0, PBA-C-11-001.A2, PCM-058-33230C0I.A3
#                    distro: yogurt
#                    target: phytec-vision-image
#17: phyflex-imx6-1: PHYTEC phyFLEX-i.MX6 Quad PBA-B-01
#                    1GiB RAM two banks, 16MiB SPI-NOR
#                    PFL-A-02-23237E0.A1
#                    distro: yogurt
#                    target: phytec-qt5demo-image
#18: phyflex-imx6-10: PHYTEC phyFLEX-i.MX6 Solo PBA-B-01
#                    128MiB RAM one bank, no SPI-NOR
#                    distro: yogurt
#                    target: phytec-qt5demo-image
#19: phyflex-imx6-2: PHYTEC phyFLEX-i.MX6 Quad PBA-B-01
#                    1GiB RAM one bank, 16MiB SPI-NOR
#                    PFL-A-02-13237E0.A1
#                    distro: yogurt
#                    target: phytec-qt5demo-image
#20: phyflex-imx6-2: PHYTEC phyFLEX-i.MX6 Quad PBA-B-01
#                    1GiB RAM one bank, 16MiB SPI-NOR
#                    PFL-A-02-13237E0.A1
#                    distro: yogurt
#                    target: phytec-vision-image
#21: phyflex-imx6-3: PHYTEC phyFLEX-i.MX6 Quad PBA-B-01
#                    2GiB RAM two banks, 16MiB SPI-NOR
#                    distro: yogurt
#                    target: phytec-qt5demo-image
#22: phyflex-imx6-4: PHYTEC phyFLEX-i.MX6 Quad PBA-B-01
#                    4GiB RAM two banks, 16MiB SPI-NOR
#                    PFL-A-02-55237E0.A3
#                    distro: yogurt
#                    target: phytec-qt5demo-image
#23: phyflex-imx6-5: PHYTEC phyFLEX-i.MX6 Quad PBA-B-01
#                    512MiB RAM one bank, 16MiB SPI-NOR
#                    distro: yogurt
#                    target: phytec-qt5demo-image
#24: phyflex-imx6-6: PHYTEC phyFLEX-i.MX6 DualLite PBA-B-01
#                    1GiB RAM two banks, 16MiB SPI-NOR
#                    PFL-A-02-23247E0X.A1
#                    distro: yogurt
#                    target: phytec-qt5demo-image
#25: phyflex-imx6-7: PHYTEC phyFLEX-i.MX6 DualLite PBA-B-01
#                    1GiB RAM one bank, 16MiB SPI-NOR
#                    PFL-A-02-13247E0X.A0
#                    distro: yogurt
#                    target: phytec-qt5demo-image
#26: phyflex-imx6-8: PHYTEC phyFLEX-i.MX6 Solo PBA-B-01
#                    512MiB RAM one bank, no SPI-NOR
#                    PFL-A-02-0200541.A0
#                    distro: yogurt
#                    target: phytec-qt5demo-image
#27: phyflex-imx6-9: PHYTEC phyFLEX-i.MX6 Solo PBA-B-01
#                    256MiB RAM one bank, no SPI-NOR
#                    distro: yogurt
#                    target: phytec-qt5demo-image

