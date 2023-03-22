#!/bin/bash

rm -rf .unhealth
while true; do
    /bin/is-health && echo "health: yes" || echo "health: no"
    sleep 1
done
