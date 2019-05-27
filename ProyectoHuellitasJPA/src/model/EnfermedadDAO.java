package model;

import entities.Enfermedad;
import util.Conexion;

public class EnfermedadDAO extends Conexion<Enfermedad> implements GenericDAO<Enfermedad> {

	public EnfermedadDAO() {
		super(Enfermedad.class);
	}
}
