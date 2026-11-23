FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append = " file://bluez-5.48-071-migrate_ble_pairing_data_to_securePath.patch \
                   file://bt_secure_path_setup.sh \
           "

SRC_URI:remove:rpi = "file://0004-Move-the-hciattach-firmware-into-lib-firmware.patch"
SRC_URI:append:rpi = " file://0004-hciattach-bcm43xx-use-lib-firmware.patch"

do_install:append() {
    mkdir -p ${D}${sysconfdir}/bluetooth/
    install -m 0755 ${UNPACKDIR}/bt_secure_path_setup.sh ${D}${sysconfdir}/bluetooth/
}
FILES:${PN} += "${sysconfdir}/bluetooth/bt_secure_path_setup.sh"
