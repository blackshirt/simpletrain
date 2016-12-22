'''
Permission module
'''

from pony.orm import user_groups_getter, user_roles_getter, obj_labels_getter

from models import db, User, Pegawai, Training


@user_groups_getter(User)
def user_groups(user):
    if user.admin:
        return ['admin', 'user']
    return ['user']


@user_roles_getter(User, Training)
def user_roles(user, diklat):
    if user in diklat.peserta:
        return ['peserta']
    return ['nonpeserta']


@obj_labels_getter(Training)
def obj_labels(diklat):
    if diklat.finished:
        return ['finished']
    return ['process']
