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


def send_static(filename):
    return static_file(filename, root=os.path.join(os.path.dirname(__file__), 'static'))


def favicon():
    return send_static('favicon.ico')


def index():
    return template('index')


if __name__ == "__main__":
    setup_route(app)
    app.run(debug=True, reloader=True)
