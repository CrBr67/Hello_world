#SPDX-FileCopyrightText: 2023 CrBr67 <lenaicjacquemin@outlook/fr>
#
#/SPDX-License-Identifier: CC-BY-SA-4.0

#!/bin/sh

RESULT=$(../hello_world)
EXPECT="\033\[0m$"

if printf "%s" "$RESULT" | grep -Pq "$EXPECT"
then
	exit 0
else
	echo Something is wrong :-c
	echo We expected to find: "$EXPECT"
	echo But we have founded: "$RESULT"
	exit 1
fi
