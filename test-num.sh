#!/bin/bash
# test-integer: проверка целых чисел

INT=5

if [ "$INT" -eq 5 ]; then
    echo "INT равно 5"
fi

if [ "$INT" -gt 0 ]; then
    echo "INT больше 0"
fi

if [ "$INT" -le 10 ]; then
    echo "INT меньше или равно 10"
fi

