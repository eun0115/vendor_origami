# Inherit mini common Lineage stuff
$(call inherit-product, vendor/origami/config/common_mini.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

$(call inherit-product, vendor/origami/config/telephony.mk)
