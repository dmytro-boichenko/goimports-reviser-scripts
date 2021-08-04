#!/bin/sh

git status -s | grep .go | rev | cut -f1 -d ' ' | rev | xargs -n1 -P 10 -I {} goimports-reviser -file-path {} -rm-unused -local github.com/karhoo