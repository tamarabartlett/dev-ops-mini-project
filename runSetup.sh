#!/bin/bash
if ! hash docker 2>/dev/null; 
	then echo "Can't find docker. Please install at https://docs.docker.com/engine/installation/"
fi

if ! hash docker-compose 2>/dev/null; 
	then echo "Can't find docker-compose. Please install at https://docs.docker.com/compose/install/"
fi

docker-compose up