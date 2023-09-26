# SPDX-FileCopyrightText: 2023 CrBr67 <lenaicjacquemin@outlook.fr>
#
# SPDX-License-Identifier: CC-BY-SA-4.0

all: check

check: results/hello_world.tap
	tappy -v $<
	reqflow stat -s

results/hello_world.tap:  $(wildcard test_F*) ../hello_world | results
	./test_harness.sh $(wildcard test_F*) > $@


results:
	mkdir $@

clean:
	$(RM) -rf results 


.PHONY: all clean check

