# SPDX-FileCopyrightText: 2023 CrBr67 <lenaicjacquemin@outlook.fr>
#
# SPDX-License-Identifier: CC-BY-SA-4.0

all: results/hello_world.tap


results/hello_world.tap: $(wildcard test_F*) | results
	./test_harness.sh $^ > $@


results:
	mkdir $@


.PHONY: clean

