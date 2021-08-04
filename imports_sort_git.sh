#!/bin/sh

git status -s | cut -f3 -d ' ' | grep .go | xargs -n1 -P 10 -I {} goimports-reviser -file-path {} -rm-unused -local github.com/karhoo