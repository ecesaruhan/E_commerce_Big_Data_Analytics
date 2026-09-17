#!/bin/bash

awk -F'\t' '
{
    count[$1] += $2
}
END {
    for (event in count)
        print event "\t" count[event]
}
'