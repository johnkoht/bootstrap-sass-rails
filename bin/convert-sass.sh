#!/bin/bash

for F in $(find ./app/assets -name '*.scss'); do export FILENAME=${F##*/} && bundle exec sass-convert $F ${F%$FILENAME}`basename "${F}" ".scss"`.css.sass && rm $F; done
