#!/bin/bash
lsof -Pi :8000 -sTCP:LISTEN -t
#lsof -Pi :8000 -sTCP:LISTEN -t >/dev/null ;
