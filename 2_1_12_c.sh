#!/bin/bash

ifconfig | sed -En 's/.*((([0-9a-f][0-9a-f])\:){5}([0-9a-f][0-9a-f])).*/\1/p'
