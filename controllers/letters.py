__author__ = 'BKD Kab Kebumen'

'''
Letter module
'''

from bottle import template,request

from .surat import all_letters


def letter():
    data = all_letters()
    return template('surat/letter', data=data)

def add_letter():
    return template('surat/add')