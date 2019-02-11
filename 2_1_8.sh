#!/bin/bash

sed -En '/^[a-z]{5}$|^[a-z]{10}$/p' /usr/share/dict/words