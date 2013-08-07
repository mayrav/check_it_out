#!/usr/bin/env python3
import os
import sys
import sqlite3
from bottle import route, run, template, static_file, request, post


current_dir = os.path.dirname(os.path.abspath(__file__))
os.chdir(current_dir)
sys.path.append(current_dir)

cur = sqlite3.connect("database.db").cursor()

@route('/static/<filename:path>')
def server_static(filename):
        return static_file(filename, root=os.path.join(current_dir, "static"))


@route('/')
def index():
    return "hello world"


if __name__ == '__main__':
    run(host='localhost', port=8000, debug=True)
