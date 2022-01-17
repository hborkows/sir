#!/bin/bash
cd /home/pi/sir
source env/bin/activate
pip install -r requirements.txt

./sensor_reader | python3 ./main.py

