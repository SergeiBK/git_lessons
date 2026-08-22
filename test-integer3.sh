#!/bin/bash
# test-integer3: проверка вхождения целочисленного значения
# в определенный диапазон.

MIN_VAL=1
MAX_VAL=100
INT=50

if [[ "$INT" =~ ^-?[0-9]+$ ]]; then
    if [[ INT -ge MIN_VAL && INT -le MAX_VAL ]]; then
        echo "$INT is within $MIN_VAL to $MAX_VAL."
    else 
        echo "$INT ia out of range."
    fi
else
    echo "INT is not an integer." >&2
    exit 1
fi
