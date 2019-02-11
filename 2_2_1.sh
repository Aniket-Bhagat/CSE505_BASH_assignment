#!/bin/bash

echo 'Pearson(s) living in a city named Anycity :' 
sed -En '/Anycity/Ip' address-book.csv | cut -d ',' -f 1
