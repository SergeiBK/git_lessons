#!/bin/bash

file="test_if.sh"

if [ -e "$file" ]; then
    echo "Файл $file существует."
fi

if [ -f "$file" ]; then
    echo "Файл $file - это обычный файл."
fi

if [ -x "$file" ]; then
    echo "$file исполняемый."
else
    echo "$file НЕ исполняемый."
fi
