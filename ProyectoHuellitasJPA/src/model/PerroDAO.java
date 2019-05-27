package model;

import entities.Perro;
import util.Conexion;

public class PerroDAO extends Conexion<Perro> implements GenericDAO<Perro> {

	public PerroDAO() {
		super(Perro.class);
	}
}