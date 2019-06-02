package entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the enfermedad database table.
 * 
 */
@Entity
@NamedQuery(name="Enfermedad.findAll", query="SELECT e FROM Enfermedad e")
public class Enfermedad implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_enfermedad")
	private int idEnfermedad;

	@Column(name="nombre_enfermedad")
	private String nombreEnfermedad;

	public Enfermedad() {
	}

	public int getIdEnfermedad() {
		return this.idEnfermedad;
	}

	public void setIdEnfermedad(int idEnfermedad) {
		this.idEnfermedad = idEnfermedad;
	}

	public String getNombreEnfermedad() {
		return this.nombreEnfermedad;
	}

	public void setNombreEnfermedad(String nombreEnfermedad) {
		this.nombreEnfermedad = nombreEnfermedad;
	}

}