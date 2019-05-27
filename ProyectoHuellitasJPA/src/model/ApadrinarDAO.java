package model;

import util.Conexion;
import entities.Apadrinar;

public class ApadrinarDAO extends Conexion<Apadrinar> implements GenericDAO<Apadrinar> {

	public ApadrinarDAO() {
		super(Apadrinar.class);
	}
}