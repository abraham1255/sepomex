from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import Column, Integer, String, Float, ForeignKey, TIMESTAMP, text
from sqlalchemy.orm import relationship
from dataclasses import dataclass
# session db 
db = SQLAlchemy()
#dataclass decorador para 3.7 python auxiliar en metodos __str__
@dataclass
class Estado(db.Model):
    __tablename__ = 'estado'
    id_estado: int
    nombre: str
    siglasrenapo: str

    id_estado = db.Column(db.Integer, primary_key=True)
    nombre = db.Column(db.String(255), nullable=False) 
    siglasrenapo = db.Column(db.String(255), nullable=False) 
    numero_oficial = db.Column(db.Integer)

@dataclass
class Municipio(db.Model):
    __tablename__ = 'municipio'
  
    id_municipio: int
    nombre: str
    estado: Estado

    id_municipio = db.Column(db.Integer, primary_key=True)
    nombre = db.Column(db.String(255), nullable=False) 
    estado_id = db.Column(db.Integer, db.ForeignKey('estado.id_estado'))
    estado = db.relationship(Estado)  # User model would need a db.ForeignKey field

@dataclass
class CodigoPostal(db.Model):
    __tablename__ = 'codigo_postal'
    id_codigo_postal : int
    colonia : str
    ciudad : str
    municipio : Municipio
    asentamiento :  str
    codigo_postal : str

    id_codigo_postal = db.Column(db.Integer, primary_key=True)
    colonia = db.Column(db.String(255), nullable=False)
    ciudad = db.Column(db.String(255), nullable=False)
    municipio_id = db.Column(db.Integer, db.ForeignKey('municipio.id_municipio'))
    municipio = db.relationship(Municipio)
    asentamiento =  db.Column(db.String(255), nullable=False)
    codigo_postal = db.Column(db.String(5), nullable=False)

