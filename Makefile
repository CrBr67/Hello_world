# SPDX-FileCopyrightText: 2023 CrBr67 <lenaicjacquemin@outlook.fr>
#
# SPDX-License-Identifier: CC-BY-SA-4.0

all: specs
	reuse lint

specs:
	$(MAKE) -C specs

clean:
	$(MAKE) -C specs clean


.PHONY: specs clean

