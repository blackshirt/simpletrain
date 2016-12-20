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

from pony.orm import *

__all__ = ['db', 'User', 'Pegawai']

db = Database()

path = os.path.abspath(__file__)
dir_path = os.path.dirname(path)
support = os.path.join(dir_path, "support")


class User(db.Entity):
    nama = Required(str)
    email = Optional(str)
    password = Optional(str)


class Employee(User):
    nip = Required(str)


class Workplace(db.Entity):
    nama = Required(str)


class Training(db.Entity):
    title = Required(str)


class Letter(db.Entity):
    perihal = Required(str)


class TaskLearning(db.Entity):
    perihal = Required(str)


class Instansi(db.Entity):
    id = PrimaryKey(int, auto=True)
    nama = Required(str)
    fullname = Optional(str)
    website = Optional(str)
    email = Optional(str)
    telepon = Optional(str)
    fax = Optional(str)
    kota = Required(str)
    surat = Set('Surat')
    alamat = Optional('Lokasi')


class Surat(db.Entity):
    id = PrimaryKey(int, auto=True)
    perihal = Required(str)
    tanggal = Optional(date)
    nomor = Optional(str)
    ikhtisar = Optional(str)
    instansi = Required(Instansi)
    kategori = Required('Kategori')
    lampiran = Optional(buffer)
    input_at = Optional(datetime, default=datetime.now())


class Kategori(db.Entity):
    id = PrimaryKey(int, auto=True)
    code = Required(str, unique=True)
    deskripsi = Optional(str)
    surat = Set(Surat)


class Lokasi(db.Entity):
    id = PrimaryKey(int, auto=True)
    jalan = Optional(str)
    blok = Optional(str)
    rt = Optional(str)
    rw = Optional(str)
    kelurahan = Optional(str)
    kecamatan = Optional(str)
    kota = Required(str)
    provinsi = Optional(str)
    kodepos = Optional(str)
    instansi = Optional(Instansi)


sql_debug(True)
db.bind("sqlite", "test.db", create_db=True)
db.generate_mapping(create_tables=True)


@db_session
def populate_instansi():
    if select(i for i in Instansi).count() > 0:
        return
    fd = open(os.path.join(support, "instansi.txt"))
    import csv

    reader = csv.reader(fd)
    for item in reader:
        nama = item[0]
        # noinspection PyUnusedLocal,PyUnusedLocal
        fullname = item[1]
        alamat = item[2]
        kota = item[3]
        # noinspection PyUnusedLocal,PyUnusedLocal
        loc = Lokasi(jalan=alamat, kota=kota)
        # noinspection PyUnusedLocal
        inst = Instansi(nama=nama, kota=kota, fullname=fullname, alamat=loc)


@db_session
def populate_category():
    if select(i for i in Kategori).count() > 0:
        return
    fd = open(os.path.join(support, "kategori.txt"))
    import csv

    reader = csv.reader(fd)
    for item in reader:
        # noinspection PyUnusedLocal,PyUnusedLocal
        code = item[0]
        # noinspection PyUnusedLocal,PyUnusedLocal
        deskripsi = item[1]
        # noinspection PyUnusedLocal
        cat = Kategori(code=code, deskripsi=deskripsi)


populate_instansi()
populate_category()
