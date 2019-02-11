#!/bin/bash

sed -En '/^([a-z]).*\1$|^.$/Ip' /usr/share/dict/words