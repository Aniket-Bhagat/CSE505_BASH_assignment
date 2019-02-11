#!/bin/bash

sed -n -e 's/[[:punct:]]/*/g; s/[[:digit:]]/?/gp' address-book.csv
