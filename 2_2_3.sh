#!/bin/bash

echo 'Following peopels born in the 80s :'
sed -En '/..\/..\/..8./Ip' address-book.csv | cut -d ',' -f 1
