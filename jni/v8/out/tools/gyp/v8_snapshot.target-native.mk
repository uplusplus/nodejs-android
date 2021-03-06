# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := v8_snapshot
### Rules for action "run_mksnapshot":
quiet_cmd_v8_snapshot_run_mksnapshot = ACTION v8_snapshot_run_mksnapshot $@
cmd_v8_snapshot_run_mksnapshot = export LD_LIBRARY_PATH=$(builddir)/lib.host:$(builddir)/lib.target:$$LD_LIBRARY_PATH; cd $(srcdir)/tools/gyp; mkdir -p $(obj).$(TOOLSET)/geni; "$(builddir)/mksnapshot" --log-snapshot-positions --logfile "$(obj).$(TOOLSET)/geni/snapshot.log" "$(obj).$(TOOLSET)/geni/snapshot.cc"

$(obj).$(TOOLSET)/geni/snapshot.cc: obj := $(abs_obj)

$(obj).$(TOOLSET)/geni/snapshot.cc: export TARGET_BUILD_DIR := ../../$(abs_builddir)
$(obj).$(TOOLSET)/geni/snapshot.cc: export FULL_PRODUCT_NAME := libv8_snapshot.a
$(obj).$(TOOLSET)/geni/snapshot.cc: export EXECUTABLE_PATH := libv8_snapshot.a
$(obj).$(TOOLSET)/geni/snapshot.cc: export SRCROOT := .
$(obj).$(TOOLSET)/geni/snapshot.cc: export BUILT_PRODUCTS_DIR := ../../$(abs_builddir)
$(obj).$(TOOLSET)/geni/snapshot.cc: export TEMP_DIR := $(TMPDIR)
$(obj).$(TOOLSET)/geni/snapshot.cc: export CONFIGURATION := $(BUILDTYPE)
$(obj).$(TOOLSET)/geni/snapshot.cc: export PRODUCT_NAME := libv8_snapshot.a
$(obj).$(TOOLSET)/geni/snapshot.cc: builddir := $(abs_builddir)

$(obj).$(TOOLSET)/geni/snapshot.cc: TOOLSET := $(TOOLSET)
$(obj).$(TOOLSET)/geni/snapshot.cc: $(builddir)/mksnapshot FORCE_DO_CMD
	$(call do_cmd,v8_snapshot_run_mksnapshot)

all_deps += $(obj).$(TOOLSET)/geni/snapshot.cc
action_v8_snapshot_run_mksnapshot_outputs := $(obj).$(TOOLSET)/geni/snapshot.cc


DEFS_Debug := '-DENABLE_DEBUGGER_SUPPORT' \
	'-DDEBUG' \
	'-DENABLE_DISASSEMBLER' \
	'-DV8_ENABLE_CHECKS' \
	'-DOBJECT_PRINT'

# Flags passed to all source files.
CFLAGS_Debug := -gdwarf-2 \
	-fvisibility=hidden \
	-Werror \
	-Wnewline-eof \
	-mmacosx-version-min=10.4 \
	-arch i386 \
	-fno-strict-aliasing \
	-Wall \
	-Wendif-labels \
	-W \
	-Wno-unused-parameter \
	-Wnon-virtual-dtor

# Flags passed to only C files.
CFLAGS_C_Debug := -std=ansi

# Flags passed to only C++ files.
CFLAGS_CC_Debug := -fno-rtti \
	-fno-exceptions \
	-fvisibility-inlines-hidden \
	-fno-threadsafe-statics

# Flags passed to only ObjC files.
CFLAGS_OBJC_Debug := 

# Flags passed to only ObjC++ files.
CFLAGS_OBJCC_Debug := 

INCS_Debug := -I$(srcdir)/src

DEFS_Release := '-DENABLE_DEBUGGER_SUPPORT'

# Flags passed to all source files.
CFLAGS_Release := -O3 \
	-gdwarf-2 \
	-fvisibility=hidden \
	-Werror \
	-Wnewline-eof \
	-mmacosx-version-min=10.4 \
	-arch i386 \
	-fno-strict-aliasing \
	-Wall \
	-Wendif-labels \
	-W \
	-Wno-unused-parameter \
	-Wnon-virtual-dtor

# Flags passed to only C files.
CFLAGS_C_Release := -std=ansi

# Flags passed to only C++ files.
CFLAGS_CC_Release := -fno-rtti \
	-fno-exceptions \
	-fvisibility-inlines-hidden \
	-fno-threadsafe-statics

# Flags passed to only ObjC files.
CFLAGS_OBJC_Release := 

# Flags passed to only ObjC++ files.
CFLAGS_OBJCC_Release := 

INCS_Release := -I$(srcdir)/src

OBJS := $(obj).target/$(TARGET)/gen/libraries.o \
	$(obj).target/$(TARGET)/gen/experimental-libraries.o \
	$(obj).$(TOOLSET)/geni/snapshot.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(builddir)/mksnapshot $(obj).target/tools/gyp/js2c.stamp

# Make sure our actions/rules run before any of us.
$(OBJS): | $(action_v8_snapshot_run_mksnapshot_outputs)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE)) $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE)) $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))
$(OBJS): GYP_OBJCFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE)) $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE)) $(CFLAGS_OBJC_$(BUILDTYPE))
$(OBJS): GYP_OBJCXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE)) $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE)) $(CFLAGS_OBJCC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
# Build our special outputs first.
$(builddir)/libv8_snapshot.a: | $(action_v8_snapshot_run_mksnapshot_outputs)

# Preserve order dependency of special output on deps.
$(action_v8_snapshot_run_mksnapshot_outputs): | $(builddir)/mksnapshot $(obj).target/tools/gyp/js2c.stamp

LDFLAGS_Debug := -mmacosx-version-min=10.4 \
	-arch i386 \
	-L$(builddir)

LDFLAGS_Release := -mmacosx-version-min=10.4 \
	-arch i386 \
	-L$(builddir)

LIBS := 

$(builddir)/libv8_snapshot.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/libv8_snapshot.a: LIBS := $(LIBS)
$(builddir)/libv8_snapshot.a: TOOLSET := $(TOOLSET)
$(builddir)/libv8_snapshot.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink)

all_deps += $(builddir)/libv8_snapshot.a
# Add target alias
.PHONY: v8_snapshot
v8_snapshot: $(builddir)/libv8_snapshot.a

# Add target alias to "all" target.
.PHONY: all
all: v8_snapshot

