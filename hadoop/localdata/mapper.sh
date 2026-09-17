#!/bin/bash

awk -F',' '
NR > 1 {
    print $2 "\t1"
}
'