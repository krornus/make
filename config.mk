CC := gcc

TARGET := target

OBJ :=
DEP := $(OBJ:.o=.d)

CFLAGS := -std=c99
CFLAGS += -Wall -Wpedantic -Wextra
CFLAGS += -MMD
CFLAGS += -D_GNU_SOURCE

CFLAGS_DEBUG   := -O0 -ggdb
CFLAGS_RELEASE := -O2

ifeq ($(DEBUG),1)
CFLAGS += $(CFLAGS_DEBUG)
else
CFLAGS += $(CFLAGS_RELEASE)
endif

LDLIBS :=
LDFLAGS :=
