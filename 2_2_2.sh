#!/bin/bash

sed -En '/^[^aeiou]/Ip' address-book.csv
