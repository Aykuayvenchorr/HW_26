from flask import Flask

from views import app_bp


def create_app() -> Flask:
    app = Flask(__name__)
    app.register_blueprint(app_bp)

    return app

