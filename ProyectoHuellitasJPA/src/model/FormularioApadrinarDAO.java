package model;

import entities.Formularioapadrinar;
import util.Conexion;

public class FormularioApadrinarDAO extends Conexion<Formularioapadrinar> implements GenericDAO<Formularioapadrinar> {
	
	public FormularioApadrinarDAO() {
		super(Formularioapadrinar.class);
	}
}
