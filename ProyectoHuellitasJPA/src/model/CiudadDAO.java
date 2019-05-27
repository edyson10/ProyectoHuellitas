package model;

import entities.Ciudad;
import util.Conexion;

public class CiudadDAO extends Conexion<Ciudad> implements GenericDAO<Ciudad> {

	public CiudadDAO() {
		super(Ciudad.class);
	}
}