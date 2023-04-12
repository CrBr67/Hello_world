# SPDX-FileCopyrightText: 2023 CrBr67 <lenaicjacquemin@outlook.fr>
#
# SPDX-License-Identifier: CC-BY-SA-4.0

all: specs tests
	reuse lint

specs:
	$(MAKE) -C specs

tests:
	$(MAKE) -C tests

clean:
	$(MAKE) -C specs clean


.PHONY: specs tests clean

