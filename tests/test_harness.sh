#!/bin/sh

# SPDX-FileCopyrightText: 2023 Youyou0701 <ayyoubayyadi@hotmail.fr>
#
# SPDX-License-Identifier: CC-BY-SA-4.0

count=1

echo "TAP version 14"

echo "1..$#"

make_test ()
{
    executable=$1

    if message=$(./$executable)
    then
        echo "ok $count - $executable $message" 
    else 
        echo "not ok $count - $executable $message"
    fi
}


for item in $@
do
    make_test $item
    count=$((count + 1))
done
 
