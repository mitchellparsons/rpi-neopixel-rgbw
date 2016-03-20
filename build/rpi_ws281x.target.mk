# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := rpi_ws281x
### Rules for action "not_supported_msg":
quiet_cmd_binding_gyp_rpi_ws281x_target_not_supported_msg = ACTION **** YOU ARE INSTALLING THIS MODULE ON AN UNSUPPORTED PLATFORM **** $@
cmd_binding_gyp_rpi_ws281x_target_not_supported_msg = LD_LIBRARY_PATH=$(builddir)/lib.host:$(builddir)/lib.target:$$LD_LIBRARY_PATH; export LD_LIBRARY_PATH; cd $(srcdir)/.; true

--nothing-being-built--: obj := $(abs_obj)
--nothing-being-built--: builddir := $(abs_builddir)
--nothing-being-built--: export BUILT_FRAMEWORKS_DIR := ${abs_builddir}
--nothing-being-built--: export BUILT_PRODUCTS_DIR := ${abs_builddir}
--nothing-being-built--: export CONFIGURATION := ${BUILDTYPE}
--nothing-being-built--: export DYLIB_INSTALL_NAME_BASE := @rpath
--nothing-being-built--: export EXECUTABLE_NAME := rpi_ws281x.node
--nothing-being-built--: export EXECUTABLE_PATH := rpi_ws281x.node
--nothing-being-built--: export FULL_PRODUCT_NAME := rpi_ws281x.node
--nothing-being-built--: export LD_DYLIB_INSTALL_NAME := @rpath/rpi_ws281x.node
--nothing-being-built--: export MACH_O_TYPE := mh_bundle
--nothing-being-built--: export PRODUCT_NAME := rpi_ws281x
--nothing-being-built--: export PRODUCT_TYPE := com.apple.product-type.library.dynamic
--nothing-being-built--: export SDKROOT := 
--nothing-being-built--: export SRCROOT := ${abs_srcdir}/
--nothing-being-built--: export SOURCE_ROOT := ${SRCROOT}
--nothing-being-built--: export TARGET_BUILD_DIR := ${abs_builddir}
--nothing-being-built--: export TEMP_DIR := ${TMPDIR}
--nothing-being-built--: TOOLSET := $(TOOLSET)
--nothing-being-built--:  FORCE_DO_CMD
	$(call do_cmd,binding_gyp_rpi_ws281x_target_not_supported_msg)

all_deps += --nothing-being-built--
action_binding_gyp_rpi_ws281x_target_not_supported_msg_outputs := --nothing-being-built--


### Rules for final target.
# Build our special outputs first.
$(builddir)/rpi_ws281x.node: | $(action_binding_gyp_rpi_ws281x_target_not_supported_msg_outputs)

# Preserve order dependency of special output on deps.
$(action_binding_gyp_rpi_ws281x_target_not_supported_msg_outputs): | 

LDFLAGS_Debug := \
	-undefined dynamic_lookup \
	-Wl,-search_paths_first \
	-mmacosx-version-min=10.5 \
	-arch x86_64 \
	-L$(builddir)

LIBTOOLFLAGS_Debug := \
	-undefined dynamic_lookup \
	-Wl,-search_paths_first

LDFLAGS_Release := \
	-undefined dynamic_lookup \
	-Wl,-search_paths_first \
	-mmacosx-version-min=10.5 \
	-arch x86_64 \
	-L$(builddir)

LIBTOOLFLAGS_Release := \
	-undefined dynamic_lookup \
	-Wl,-search_paths_first

LIBS :=

$(builddir)/rpi_ws281x.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/rpi_ws281x.node: LIBS := $(LIBS)
$(builddir)/rpi_ws281x.node: GYP_LIBTOOLFLAGS := $(LIBTOOLFLAGS_$(BUILDTYPE))
$(builddir)/rpi_ws281x.node: TOOLSET := $(TOOLSET)
$(builddir)/rpi_ws281x.node:  FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(builddir)/rpi_ws281x.node
# Add target alias
.PHONY: rpi_ws281x
rpi_ws281x: $(builddir)/rpi_ws281x.node

# Short alias for building this executable.
.PHONY: rpi_ws281x.node
rpi_ws281x.node: $(builddir)/rpi_ws281x.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/rpi_ws281x.node
