#!/bin/sh

while true; do
	yes "hi" | nc -l -p 8080
done
