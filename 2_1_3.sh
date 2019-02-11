#!/bin/bash

sed -En '/^[aeiou].*[aeiou]$|^[aeiou]$/Ip' /usr/share/dict/words