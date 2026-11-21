# Original license override for cairo-gobject must use BPN for multilib.
#This can be corrected by replacing ${PN} with ${BPN} without modifying the license
LICENSE:${MLPREFIX}${BPN}-gobject = "MPL-1.1 | LGPL-2.1-only"
