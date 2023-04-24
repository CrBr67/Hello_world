# SPDX-FileCopyrightText: 2023 CrBr67 <lenaicjacquemin@outlook.fr>
#
# SPDX-License-Identifier: CC-BY-SA-4.0

all: specs tests
	reuse lint

build: hello_world.adb
	gnatmake $<

specs:
	$(MAKE) -C specs

tests: build
	$(MAKE) -C tests

clean:
	$(MAKE) -C specs clean


.PHONY: specs tests clean

