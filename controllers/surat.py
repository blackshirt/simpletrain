from pony.orm import select

from models import db, Letter


def all_letters():
    letters = select(ltr for ltr in Letter).order_by(Letter.inputed_at)
    return db.to_json(letters)


def letter(*args, **kwargs):
    letter = Letter.get(*args, **kwargs)
    return db.to_json(letter)
