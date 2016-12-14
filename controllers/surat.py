from pony.orm import *
from bottle import template, request, HTTPResponse
from models import Surat, Kategori, Instansi


def semua_surat():
    # Get the list of all products from the database
    surat = select(s for s in Surat).order_by(desc(Surat.input_at))
    return template("surat/daftar", surat=surat)


def surat_baru():
    category = select(s for s in Kategori)
    instansi = select(p for p in Instansi)
    if request.method == "POST":
        nomor = request.forms.get('nomor')
        tanggal = request.forms.get('tanggal')
        perihal = request.forms.get('perihal')
        ikhtisar = request.forms.get('ikhtisar')
        category = request.forms.get('category')
        pengirim = request.forms.get('pengirim')
        cat = Kategori.get(code=category)
        sender = Instansi[pengirim]
        # noinspection PyUnusedLocal
        surat = Surat(perihal=perihal, nomor=nomor, tanggal=tanggal, ikhtisar=ikhtisar, kategori=cat,
                      instansi=sender)
        return HTTPResponse(status=200, body={'message': 'Successfully submited'})
    return template("surat/new", category=category, instansi=instansi)


def info_surat(sid):
    surat = Surat[sid]
    return template("surat/info", surat=surat)


def edit_surat(sid):
    surat = Surat[sid]
    return template("surat/edit", surat=surat)


def delete_surat(sid):
    surat = Surat[sid]
    return template("surat/delete", surat=surat)
