#!/usr/bin/env bash

surf -z 2.8 -r <(echo 'window.setTimeout(function() {window.scroll(0, 300);}, 1000);') \
     https://travis-ci.org/diku-dk/futhark
