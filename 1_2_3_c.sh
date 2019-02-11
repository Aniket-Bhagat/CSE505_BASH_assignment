#!/bin/bash

ifconfig | egrep -o '(([0-9a-f][0-9a-f])\:){5}([0-9a-f][0-9a-f])'
