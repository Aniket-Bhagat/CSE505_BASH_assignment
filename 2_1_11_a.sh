#!/bin/bash

read pattern
sed -En '/^([0-9]{3}\.){3}([0-9]{3})$/p' <<< $pattern
