#!/usr/bin/env bash

set -e

echo
echo "CARDINAL ID - FROM STREAM NAME WITH SINGLE ID"
echo "============================================="
echo

source test/_controls.sh

stream_name=$(stream-name)

echo "Stream Name:"
echo $stream_name
echo

psql message_store -U message_store -x -c "SELECT cardinal_id('$stream_name');"

echo "= = ="
echo
