#!/bin/bash
docker run -d -p 8080:8080 -p 8181:8181 -p 4848:4848 -w $(pwd)/data:/usr/local/glassfish4 -d glassfish:local

