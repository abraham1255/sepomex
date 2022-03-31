from flask import Flask
from flask import jsonify
from app.config import config
from app.models import db
from app.models import *
from flask import request
from flask_jwt_extended import create_access_token
from flask_jwt_extended import get_jwt_identity
from flask_jwt_extended import jwt_required
from flask_jwt_extended import JWTManager

def create_app(enviroment):
    app = Flask(__name__)
    app.config.from_object(enviroment)
    with app.app_context():
        db.init_app(app)
        db.create_all()
    return app

enviroment = config['development']
app = create_app(enviroment)
jwt = JWTManager(app)
    
# metodo login para obtener token
@app.route("/api/v1/login", methods=["POST"])
def login():
    username = request.json.get("username", None)
    password = request.json.get("password", None)
    if username != "test" or password != "test":
        return jsonify({"msg": "Bad username or password"}), 401

    access_token = create_access_token(identity=username)
    return jsonify(access_token=access_token)

# metodo para obtener colonias por CP requiere enviar token en header
@app.route('/api/v1/colonias/<cp>', methods=['GET'])
@jwt_required()
def get_colonias(cp):
    search = "%{}%".format(cp)
    colonias = CodigoPostal.query.filter(CodigoPostal.codigo_postal.ilike(search)).all()
    if not colonias:
        return jsonify(colonias),204
    return jsonify(colonias)


@app.route('/api/v1/coloniasByName/<nombre>', methods=['GET'])
# metodo para obtener colonias por nombre requiere enviar token en header
@jwt_required()
def get_coloniasByName(nombre):
    search = "%{}%".format(nombre)
    colonias = CodigoPostal.query.filter(CodigoPostal.colonia.ilike(search)).all()
    if not colonias:
        return jsonify(colonias),204
    return jsonify(colonias)

@app.route('/api/v1/municipiosByName/<nombre>', methods=['GET'])
# metodo para obtener municipios por nombre requiere enviar token en header
@jwt_required()
def get_municipiosByName(nombre):
    search = "%{}%".format(nombre)
    municipios = Municipio.query.filter(Municipio.nombre.ilike(search)).all()
    if not municipios:
        return jsonify(municipios),204
    return jsonify(municipios)

@app.route('/api/v1/estadosByName/<nombre>', methods=['GET'])
# metodo para obtener estados por nombre requiere enviar token en header
@jwt_required()
def get_estadosByName(nombre):
    search = "%{}%".format(nombre)
    estados = Estado.query.filter(Estado.nombre.ilike(search)).all()
    if not estados:
        return jsonify(estados),204
    return jsonify(estados)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80, debug=True)
