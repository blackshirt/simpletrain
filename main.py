import os
import bottle
from bottle import Bottle, template, static_file
from pony.orm.integration.bottle_plugin import PonyPlugin

from controllers import surat

path = os.path.abspath(__file__)
dir_path = os.path.dirname(path)
templates_dir = os.path.join(dir_path, 'views')
if templates_dir not in bottle.TEMPLATE_PATH:
    bottle.TEMPLATE_PATH.insert(0, templates_dir)


app = Bottle()
pony_plugin = PonyPlugin()
app.install(pony_plugin)


def setup_route(application):
    application.route('/static/<filename:path>', callback=send_static)
    application.route('/', callback=index)
    application.route('/favicon.ico', 'GET', callback=favicon)
    application.route('/surat', 'GET', callback=surat.semua_surat)
    application.route('/surat/new', ['GET', 'POST'], callback=surat.surat_baru)
    application.route('/surat/<id>', 'GET', callback=surat.info_surat)
    application.route('/surat/<id>/edit', 'GET', callback=surat.edit_surat)
    application.route('/surat/<id>/delete', 'GET', callback=surat.delete_surat)


def send_static(filename):
    return static_file(filename, root=os.path.join(os.path.dirname(__file__), 'static'))


def favicon():
    return send_static('favicon.ico')


def index():
    return template('index')


if __name__ == "__main__":
    setup_route(app)
    app.run(debug=True, reloader=True)
