#!/bin/bash

# Функция проверки дискового пространства
report_home_space () {

if [[ $(id -u) -eq 0 ]]; then
    cat <<-_EOF_
        <H2>Home Space Utilization (All Users)</H2>
        <PRE>$(du -sh/Home/*)</PRE>
_EOF_
else
    cat <<-_EOF_
        <H2>Home Space Utilization ($USER)</H2>
        <PRE>$(du -sh $HOME)</PRE>
_EOF_
fi
return
}
