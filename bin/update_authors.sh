#!/bin/bash

set -ex

tmpfile=$(mktemp)

head -n 5 AUTHORS > $tmpfile
git log --reverse --format="%aN <%aE>" | awk ' !x[$0]++' >> $tmpfile
mv $tmpfile AUTHORS
