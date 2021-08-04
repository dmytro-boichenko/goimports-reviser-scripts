#!/bin/sh

find $1 -name "*.go" ! -path '*vendor*' | xargs -n1 -P 10 -I {} goimports-reviser -file-path {} -rm-unused -local github.com/karhoo