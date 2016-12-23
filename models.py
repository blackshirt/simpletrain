'''
Database Models

Models defined here
===================

1. User
2. Employee
3. Workplace
4. Training
5. Letter
6. LearningAssignment

'''

import os
from datetime import date, datetime

from pony.orm import Database, sql_debug
from pony.orm import Required, Optional, Set

__all__ = ['db', 'User', 'Employee', 'Workplace', 'Training', 'Letter',
           'LearningAssignment']

db = Database()

path = os.path.abspath(__file__)
dir_path = os.path.dirname(path)
support_dir = os.path.join(dir_path, "support")


class Base(db.Entity):
    name = Required(str)


class User(Base):
    email = Optional(str)
    password = Optional(str)
    dob = Optional(date)
    pob = Optional(str)
    utype = Optional(str, default='guest')

class Employee(User):
    nip = Required(str)


class Workplace(Base):
    address = Optional(str)
    city = Optional(str)


class SendRecvMixin(User, Workplace):
    pass


class Sender(SendRecvMixin):
    letter = Set("Letter")


class Receiver(SendRecvMixin):
    letter = Set("Letter")


class Letter(db.Entity):
    about = Required(str)
    date = Optional(date)
    number = Optional(str)
    sender = Optional(Sender)
    receiver = Set(Receiver)
    inputed_at = Optional(datetime, default=datetime.now)
    last_updated = Optional(datetime, default=datetime.now)


class Training(db.Entity):
    title = Required(str)


class LearningAssignment(db.Entity):
    about = Required(str)


sql_debug(True)
db.bind("sqlite", ":memory:", create_db=True)
db.generate_mapping(create_tables=True)
