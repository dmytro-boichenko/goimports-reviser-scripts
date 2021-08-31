#!/bin/sh

find $1 -name "*.go" ! -path '*vendor*' -exec grep -iL "DO NOT EDIT" {} \; | xargs -n1 -P 10 -I {} goimports-reviser -file-path {} -rm-unused