package model;

import util.Conexion;
import entities.Adopcion;

public class AdopcionDAO extends Conexion<Adopcion> implements GenericDAO<Adopcion>{

	public AdopcionDAO() {
		super(Adopcion.class);
	}
}