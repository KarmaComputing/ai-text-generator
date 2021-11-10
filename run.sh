#!/bin/bash
export FLASK_DEBUG=1
export FLASK_APP=app.py
. venv/bin/activate
flask run --host 0.0.0.0 --port 5000
