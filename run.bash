#!/usr/bin/env bash

docker run -ti --rm \
           -p 80:80 \
           --name webserver_image webserver_image \
	   bash
