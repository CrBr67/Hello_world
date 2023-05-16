# SPDX-FileCopyrightText: 2023 CrBr67 <lenaicjacquemin@outlook.fr>
#
# SPDX-License-Identifier: CC-BY-SA-4.0

DOCUMENT=hello_world-specs
ASCIIDOCTOR_OPTION=-r asciidoctor-diagram

all:  $(DOCUMENT).html $(DOCUMENT).pdf

%.html: %.adoc Makefile
	asciidoctor $< $(ASCIIDOCTOR_OPTION)

%.pdf: %.adoc Makefile 
	asciidoctor-pdf $< $(ASCIIDOCTOR_OPTION)

clean: 
	rm -f *.html *.pdf

.PHONY: all clean
# avec PHONY il fait le programme all clean sans regarder si c'est déjà effectué
#
