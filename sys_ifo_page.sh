#!/bin/bash

usage () {
    echo "$PROGNAME: usage: $PROGNAME [-f file | -i]"
    return
}

# обработка параметров командной строки
interactive=
filename=

while [[ -n $1 ]]; do
    case $1 in
        -f | --file)        shift
                            filename=$1
                            ;;
        -i | --interactive) interactive=1
                            ;;
        -h | --help)        usage
                            exit
                            ;;
        *)                  usage >&2
                            exit !
                            ;;
    esac
    shift
done   
