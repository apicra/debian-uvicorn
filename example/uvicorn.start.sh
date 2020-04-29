#!/bin/bash
python3 -m venv env && \
#virtualenv env -distribute
. ./env/bin/activate && \
python3 -m pip install -r src/requirements.txt && \
gunicorn -w 2 -b 127.0.0.1:8000 -k uvicorn.workers.UvicornWorker src.jwt:app
