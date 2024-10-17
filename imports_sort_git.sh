#!/bin/sh

git status -s | grep .go | rev | cut -f1 -d ' ' | rev | xargs -n1 -P 10 -I {} goimports-reviser --rm-unused -company-prefixes "GOIMPORTS_REVISER_COMPANY_PREFIXES" -format {}