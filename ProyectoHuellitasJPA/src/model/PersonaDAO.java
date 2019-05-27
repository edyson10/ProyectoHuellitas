package model;

import entities.Persona;
import util.Conexion;

public class PersonaDAO extends Conexion<Persona> implements GenericDAO<Persona> {

	public PersonaDAO() {
		super(Persona.class);
	}
}