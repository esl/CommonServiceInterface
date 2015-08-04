PROJECT = csi
DEPS = lager

include erlang.mk

# Compile flags
# ERLC_COMPILE_OPTS= +'{parse_transform, lager_transform}' -Dlager -Ddebug +debug_info
ERLC_COMPILE_OPTS= +'{parse_transform, lager_transform}' -Dlager +debug_info

# Use the same settings for compiling releases as well as for testing
ERLC_OPTS= $(ERLC_COMPILE_OPTS)
TEST_ERLC_OPTS= $(ERLC_COMPILE_OPTS)
