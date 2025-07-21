# Unless DEBUG is already set when invoking make, default it to 0.
DEBUG ?=0
VERSION ?= "1.5.1-SNAPSHOT"


PREFIX ?= /usr/local

INCS += -I/usr/include/libevdev-1.0

CPPFLAGS += $(INCS) -D_POSIX_C_SOURCE=200809L -DVERSION=\"$(VERSION)\"

ifeq ($(DEBUG), 1)
COMPFLAGS += -g -O0
else
COMPFLAGS += -pedantic -Wall -Wextra -Werror -O3
endif


CFLAGS += $(COMPFLAGS) -std=c99
CXXFLAGS += $(COMPFLAGS) -std=c++11

LDFLAGS += -rdynamic -lyaml-cpp -levdev

CC = cc
CXX = c++

