#!/bin/bash

sed -En '/^[aeiou].*/Ip' /usr/share/dict/words | wc -l
