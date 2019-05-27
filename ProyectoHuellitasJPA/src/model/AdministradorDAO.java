package model;

import util.Conexion;
import entities.Administrador;;

public class AdministradorDAO extends Conexion<Administrador> implements GenericDAO<Administrador> {

	public AdministradorDAO() {
		super(Administrador.class);
	}
}
