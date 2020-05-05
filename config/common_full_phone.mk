# Inherit full common Lineage stuff
$(call inherit-product, vendor/emeraldux/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include Lineage LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/emeraldux/overlay/dictionaries

$(call inherit-product, vendor/emeraldux/config/telephony.mk)
