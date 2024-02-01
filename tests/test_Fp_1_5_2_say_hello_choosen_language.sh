#SPDX-FileCopyrightText: 2023 CrBr67 <lenaicjacquemin@outlook/fr>
#
#/SPDX-License-Identifier: CC-BY-SA-4.0

#!/bin/sh

file="../specs/translation.tsv"

while read -r lang translation
do
    RESULT=$(../hello_world $lang)
    EXPECT="$translation"

    if ! printf "%s" "$RESULT" | grep -Pq "$EXPECT"
    then
        echo Something is wrong :-c
        echo We expected to find: "$EXPECT"
        echo But we have founded: "$RESULT"
        exit 1
    fi

done <$file 

exit 0
