PRODUCT_VERSION = 0.0.1
ifneq ($(RR_BUILDTYPE),)
EMERALDUX_VERSION := EmeraldUX-10-v$(PRODUCT_VERSION)-$(shell date +%Y%m%d)-$(RR_BUILD)-$(RR_BUILDTYPE)
else
EMERALDUX_VERSION := EmeraldUX-10-v$(PRODUCT_VERSION)-$(shell date +%Y%m%d)-$(RR_BUILD)-Unofficial
EMERALDUX_BUILDTYPE=Unofficial

endif
# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_BUILD_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# EmeraldUX System Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.emeraldux.version=$(EMERALDUX_VERSION) \
    ro.emeraldux.releasetype=$(EMERALDUX_BUILDTYPE) \
    ro.emeraldux.build.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.modversion=$(EMERALDUX_VERSION) \

# EmeraldUX Platform Display Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.emeraldux.display.version=$(EMERALDUX_DISPLAY_VERSION)

# EmeraldUX Platform SDK Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.emeraldux.build.version.plat.sdk=$(LINEAGE_PLATFORM_SDK_VERSION)

# EmeraldUX Platform Internal Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.emeraldux.build.version.plat.rev=$(LINEAGE_PLATFORM_REV)
