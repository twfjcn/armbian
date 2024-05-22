# NanoPi R6C
BOARD_NAME="NanoPi R6C"
BOARDFAMILY="rk3588"
BOOTCONFIG="nanopi-r6c-rk3588_defconfig"
KERNEL_TARGET="vendor"
BOARD_FIRMWARE_INSTALL="-full"
BOOT_LOGO="desktop"
BOOT_FDT_FILE="rockchip/rk3588-nanopi-r6c.dtb"
IMAGE_PARTITION_TABLE="gpt"
BOOT_SCENARIO="spl-blobs"
BOOTFS_TYPE="fat"
WIREGUARD="no"

DDR_BLOB="rk35/rk3588_ddr_lp4_2112MHz_lp5_2736MHz_v1.15.bin"
BL31_BLOB="rk35/rk3588_bl31_v1.45.elf"

function post_family_config__nanopi-r6c_use_orangepi_uboot() {
        BOOTSOURCE='https://github.com/liwei19920307/u-boot-orangepi.git'
        BOOTBRANCH='branch:v2017.09-rk3588'
        BOOTDIR="u-boot-${BOARD}"
        BOOTPATCHDIR="u-boot-${BOARD}"
        BOOTDELAY=3
}