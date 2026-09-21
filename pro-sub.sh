#!/bin/bash
# pro-sub: демонстрация подстановки процессов

while read attr links owner group size date time filename; do
cat <<- EOF
    Filename:    $filename
    Size:        $size
    Owner:       $owner
    Group:       $group
    Modefile:    $modefile
    Links:       $links
    Attributes:  $attr
EOF
done < <(ls -l | tail -n +2)

