#!/bin/sh
NAME=speedtest-cli-docker
docker build ./ -t ${NAME}:latest -t ${NAME}:armv7l
