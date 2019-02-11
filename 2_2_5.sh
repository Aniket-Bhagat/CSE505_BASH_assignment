#!/bin/bash

sed -E 's/^(\S+,+)(\S+,+)/\2\1/' address-book.csv 
