#!/bin/bash
# hours : сценарий для подсчета файлов по времени изучения

usage () {
    echo "usage: $(basename $0) directory" >&2
}

# Убедиться, что аргумент является каталогом
if [[ ! -d $1 ]]; then 
    usage
    exit 1
fi

# инициализировать массив
for i in {0..23}; do hours[i]=0; done

# собрать данные
for i in $(stat -c %y "$1"/* | cut -c 12-13); do
    j=${i/#0}
    ((++hours[j]))
    ((++count))
done

# вывести данные
echo -e "Hour\tFiles\tHour\tFiles"
echo -e "----\t----\t----\t----"
for i in {0..11}; do
    j=$((i + 12))
    printf "%02d\t%d\t%02d\td\n" $i ${hours[i]} $j ${hours[j]}
done
printf "\nTotal files = %d\n" $count

