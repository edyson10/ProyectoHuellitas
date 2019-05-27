package model;

import entities.Tratamiento;
import util.Conexion;

public class TratamientoDAO extends Conexion<Tratamiento> implements GenericDAO<Tratamiento> {
	
	public TratamientoDAO() {
		super(Tratamiento.class);
	}
}