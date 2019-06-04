package Controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Ciudad;
import entities.Formularioapadrinar;
import entities.Perro;
import entities.Persona;
import model.CiudadDAO;
import model.FormularioApadrinarDAO;
import model.PerroDAO;
import model.PersonaDAO;

/**
 * Servlet implementation class FormApadrinarController
 */
@WebServlet("/FormApadrinarController")
public class FormApadrinarController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormApadrinarController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String nombre = request.getParameter("nombreA");
		String apellido = request.getParameter("apellidoA");
		String cedula = request.getParameter("cedulaA");
		String ciudad = request.getParameter("ciudadA");
		String fechaNacimiento = request.getParameter("fechaNacA");
		String barrio = request.getParameter("barrioA");
		String direccion = request.getParameter("direccionA");
		String telefono = request.getParameter("fijoA");
		String celular = request.getParameter("celularA");
		String profesion = request.getParameter("profesionA");
		String trabajo = request.getParameter("trabajoA");
		
		String perro = request.getParameter("perroA");
		String tipoperro = request.getParameter("tipoperroA");
		String perrosantes = request.getParameter("perroAntesA");
		String porqueapadrinar = request.getParameter("porqueapadrinarA");
		String visitas = request.getParameter("visitasMesA");
		String diamensualidad = request.getParameter("diamensualidadA");
		
		Persona p = new Persona();
		Formularioapadrinar fa = new Formularioapadrinar();
		
		Ciudad c = new Ciudad();
		Perro pe = new Perro();
		CiudadDAO cDao = new CiudadDAO();
		PerroDAO peDao = new PerroDAO();
		
		pe = peDao.find(perro);
		c = cDao.find(Integer.parseInt(ciudad));
		
		p.setNombre(nombre);
		p.setApellido(apellido);
		p.setCedula(cedula);
		p.setCiudad(c);
		p.setBarrio(barrio);
		p.setDireccion(direccion);
		p.setTelefono(telefono);
		p.setCelular(celular);
		p.setProfesion(profesion);
		p.setTrabajo(trabajo);
		
		fa.setPerro(pe);
		fa.setTipoperro(tipoperro);
		fa.setPerroantes(perrosantes);
		fa.setPorqueadoptar(porqueapadrinar);
		fa.setVisitaspormes(visitas);
		fa.setDiamensualidad(diamensualidad);
		fa.setPersona(p);
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		try {
			java.util.Date fechaN = format.parse(fechaNacimiento);
			java.sql.Date fechaNS = new java.sql.Date(fechaN.getTime());
			p.setFechaNacimiento(fechaNS);
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		PersonaDAO pDao = new PersonaDAO();
		FormularioApadrinarDAO fDao = new FormularioApadrinarDAO(); 
		
		pDao.insert(p);
		fDao.insert(fa);
		
		request.setAttribute("msgResultado", "Se ha enviado el formulario correctamente");
		request.getRequestDispatcher("/Formularioapadrinar.jsp").forward(request, response);
	}
}
