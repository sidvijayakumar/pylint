#!/bin/sh -l

# Parameterss
# $3 - use-pylint


if [ "$3" = true ]; then

    echo Running: pylint --disable=duplicate-code --disable=too-many-instance-attributes $6 $2
    pylint script.py | grep rated
    pylint --disable=duplicate-code --disable=too-many-instance-attributes $6 $2
    exit_code=$?

    if [ "$exit_code" = "0" ]; then
        echo "Pylint ok"
    else
        echo "Pylint error"
        exit $exit_code
    fi

fi