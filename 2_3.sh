#!/bin/bash

sed -E 's/^([^#\{\}])/    &/' code.c
