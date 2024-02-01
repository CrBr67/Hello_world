#SPDX-FileCopyrightText: 2024 CrBr67 <lenaicjacquemin@outlook/fr>
#
#/SPDX-License-Identifier: CC-BY-SA-4.0

#!/bin/sh


file="../specs/translation.tsv"

while read -r lang translation
do
     if [ "$lang" = "fr" ]
     then
         EXPECT="$translation"
     fi
done <$file

RESULT=$(../hello_world FR)
if ! printf "%s" "$RESULT" | grep -Pq "$EXPECT"
then
    echo "Error for FR expected: $EXPECT and got: $RESULT"
    exit 1
fi
 
RESULT=$(../hello_world fr)
if ! printf "%s" "$RESULT" | grep -Pq "$EXPECT"
then
    echo "Error for fr expected: $EXPECT and got: $RESULT"
    exit 1
fi
 

RESULT=$(../hello_world Fr)
if ! printf "%s" "$RESULT" | grep -Pq "$EXPECT"
then
    echo "Error for Fr expected: $EXPECT and got: $RESULT"
    exit 1
fi
 
exit 0
