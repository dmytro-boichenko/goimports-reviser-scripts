#!/bin/sh

find . -name "*.go" ! -path '*vendor*' -print0 -exec grep -iL "DO NOT EDIT" {} \; | xargs -0 -n1 -P 10 -I {} goimports-reviser -rm-unused {}