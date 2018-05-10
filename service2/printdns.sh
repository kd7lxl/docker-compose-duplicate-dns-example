#!/usr/bin/env bash
trap 'exit 0' SIGTERM
while true; do
	echo Found for $DB: $(dig +short $DB | tr '\n' ',')
	sleep 3
done
