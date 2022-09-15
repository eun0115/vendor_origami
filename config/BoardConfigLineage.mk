include vendor/origami/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/origami/config/BoardConfigQcom.mk
endif

include vendor/origami/config/BoardConfigSoong.mk
