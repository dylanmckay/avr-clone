# Makefile

VHDL_SOURCES := $(shell find -name "*.vhd")

all: check

check: check_syntax

check_syntax:
	ghdl -a $(VHDL_SOURCES)
