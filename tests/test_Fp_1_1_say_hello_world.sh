#!/bin/sh -e

#SPDX-FileCopyrightText: 2023 CrBr67 <lenaicjacquemin@outlook/fr>
#
#/SPDX-License-Identifier: CC-BY-SA-4.0

RESULT=$(../hello_world)
EXPECT="Hello World !!!"

if [ "$RESULT" = "$EXPECT" ]
then
	exit 0
else
	echo Something is wrong :-c
	echo We expected to find: "$EXPECT"
	echo But we have founded: "$RESULT"
	exit 1
fi

