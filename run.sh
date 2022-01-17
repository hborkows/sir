#!/bin/bash
cd /home/pi/sir
source env/bin/activate
./sensor_reader | python3 ./main.py

