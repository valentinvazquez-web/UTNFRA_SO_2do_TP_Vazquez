#!/bin/bash
# Script para levantar la imagen web1-vazquez en Docker
docker run -d -p 8080:80 --name web1-vazquez-container valenvazz11/web1-vazquez:latest


