#!/bin/sh

find . -name "*.go" ! -path '*vendor*' -print0 -exec grep -iL "DO NOT EDIT" {} \; | xargs -n1 -P 10 -I {} goimports-reviser -rm-unused -company-prefixes github.com/karhoo {}