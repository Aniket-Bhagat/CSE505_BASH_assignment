#!/bin/bash

read pattern
sed -En '/(([0-9a-f][0-9a-f])\:){5}([0-9a-f][0-9a-f])/p' <<< $pattern
