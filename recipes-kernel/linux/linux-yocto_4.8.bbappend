FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

PR := "${PR}.1"

COMPATIBLE_MACHINE_mymips = "mymips"



KERNEL_FEATURES_append_mymips += " cfg/smp.scc"

SRC_URI += "file://mymips-standard.scc \
            file://mymips-user-config.cfg \
            file://mymips-user-features.scc \
           "

# replace these SRCREVs with the real commit ids once you've had
# the appropriate changes committed to the upstream linux-yocto repo
SRCREV_machine_pn-linux-yocto_mymips ?= "${AUTOREV}"
SRCREV_meta_pn-linux-yocto_mymips ?= "${AUTOREV}"
#LINUX_VERSION = "4.8"
