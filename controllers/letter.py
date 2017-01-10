__author__ = 'BKD Kab Kebumen'

'''
Letter module
'''

from bottle import template

from .surat import all_letters


def letter():
    data = all_letters()
    return template('letter', data=data)