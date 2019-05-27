package model;

import entities.Formularioadopcion;
import util.Conexion;

public class FormularioAdopcionDAO extends Conexion<Formularioadopcion> implements GenericDAO<Formularioadopcion> {

	public FormularioAdopcionDAO() {
		super(Formularioadopcion.class);
	}
}
