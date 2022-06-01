#!/bin/bash

go generate ./gendoc &

until nc -vz localhost 6060 >/dev/null 2>&1; do
    echo waiting...
    sleep 5
done

wget -np -k -p -q -r http://localhost:6060/pkg/hoge/gendoc/
killall godoc
