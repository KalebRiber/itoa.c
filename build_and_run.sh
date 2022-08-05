#!/usr/bin/env bash

#                                                                       #
#    ____ _   _ _   _   ____    _    ____  _   _   ____   _   _  __     #
#   / ___| \ | | | | | | __ )  / \  / ___|| | | | | ___| / | / |/ /_    #
#  | |  _|  \| | | | | |  _ \ / _ \ \___ \| |_| | |___ \ | | | | '_ \   #
#  | |_| | |\  | |_| | | |_) / ___ \ ___) |  _  |  ___) || |_| | (_) |  #
#   \____|_| \_|\___/  |____/_/   \_\____/|_| |_| |____(_)_(_)_|\___/   #
#                                                                       #
# - Bourne Again Shell, 2022.                                           #


name=$1

function compile(){
    gcc ${name}.c -o ${name}
    ./${name}
}

if [ -z ${name} ] ; then
    echo -e "to compile and run: $0 source_code.c\r\nexiting..."
    exit
elif [ -f "${name}.c" ] ; then
    compile
else
    echo -e "file ${name}.c doesn't exist!\r\nexiting..."
fi
