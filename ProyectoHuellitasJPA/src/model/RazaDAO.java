package model;

import entities.Raza;
import util.Conexion;

public class RazaDAO extends Conexion<Raza> implements GenericDAO<Raza>{

	public RazaDAO() {
		super(Raza.class);
	}
}