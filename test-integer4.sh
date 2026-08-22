#!/bin/bash

# test-integer4: проверка выхода целочисленного значения
# за границы определенного диапазона.

MIN_VAL=1
MAX_VAL=100
INT=50

if (( INT < MIN_VAL || INT > MAX_VAL )); then
    echo "$INT is outside $MIN_VAL to $MAX_VAL."
else 
    echo "$INT is in range."
   
fi
