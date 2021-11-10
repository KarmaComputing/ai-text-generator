#!/bin/bash
export FLASK_DEBUG=1
export FLASK_APP=main.py
. venv/bin/activate
flask run --host 0.0.0.0 --port 5000
