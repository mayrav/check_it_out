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
    loans = cur.execute('select * from loans').fetchall()
    return template('templates/home.tpl', loans=loans, form_ext="loans")


@route('/people')
def manage_people():
    people = cur.execute('select * from persons').fetchall()
    form_ext = request.fullpath.split('/')[1]
    return template('templates/people.tpl', people=people, form_ext=form_ext)


@route('/items')
def manage_items():
    items = cur.execute('select * from items').fetchall()
    form_ext = request.fullpath.split('/')[1]
    return template('templates/items.tpl', items=items, form_ext=form_ext)

@route('/add_form/<table>')
def add_form(table):
    column_list = []
    for columns in cur.description:
        column_list.append(columns[0])
    return template('templates/addform.tpl', column_list=column_list, table=table)

@post('/added/<table>')
def added(table):
    try:
        ext_data = []
        ext_data.append(table)
        column_data = request.forms
        for key in cur.description:
            ext_data.append(column_data[key[0]])
	import pdb; pdb.set_trace()
        cmd = "insert into %s values ('%s', '%s', '%s', '%s', '%s')" % tuple(ext_data)
        cur.execute(cmd)
        sqlite3.connect("database.db").commit()
        cur.close
    except:
        print("error")
    return index()

if __name__ == '__main__':
    run(host='localhost', port=8000, debug=True)
