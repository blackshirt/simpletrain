'''
Database Models

Models defined here
===================

1. User
2. Employee
3. Workplace
4. Training
5. Letter
6. TaskLearning

'''

import os
from datetime import date, datetime

from pony.orm import Database, sql_debug
from pony.orm import Required, Optional

__all__ = ['db', 'User', 'Employee', 'Workplace', 'Training', 'Letter',
           'LearningAssignment']

db = Database()

path = os.path.abspath(__file__)
dir_path = os.path.dirname(path)
support_dir = os.path.join(dir_path, "support")


class User(db.Entity):
    name = Required(str)
    email = Optional(str)
    password = Optional(str)
    dob = Optional(date)
    pob = Optional(str)


class Employee(User):
    nip = Required(str)


class Workplace(db.Entity):
    name = Required(str)


class SendRecvMixin(User, Workplace):
    pass


class SenderReceiver(SendRecvMixin):
    letters = Set("Letter")


class Training(db.Entity):
    title = Required(str)


class Letter(db.Entity):
    about = Required(str)
    dol = Optional(date)
    sender = Optional(SenderReceiver)
    receiver = Optional(SenderReceiver)
    inputed_at = Optional(datetime, default=datetime.now)
    last_updated = Optional(datetime, default=datetime.now)


class LearningAssignment(db.Entity):
    about = Required(str)


sql_debug(True)
db.bind("sqlite", "test.db", create_db=True)
db.generate_mapping(create_tables=True)