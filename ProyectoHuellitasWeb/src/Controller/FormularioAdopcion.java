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
import entities.Formularioadopcion;
import entities.Perro;
import entities.Persona;
import model.CiudadDAO;
import model.FormularioAdopcionDAO;
import model.PerroDAO;
import model.PersonaDAO;

/**
 * Servlet implementation class FormularioAdopcion
 */
@WebServlet("/FormularioAdopcion")
public class FormularioAdopcion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormularioAdopcion() {
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
		
		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		String cedula = request.getParameter("cedula");
		String ciudad = request.getParameter("ciudad");
		String fechaNacimiento = request.getParameter("fechaNac");
		String barrio = request.getParameter("barrio");
		String direccion = request.getParameter("direccion");
		String telefono = request.getParameter("fijo");
		String celular = request.getParameter("celular");
		String profesion = request.getParameter("profesion");
		String trabajo = request.getParameter("trabajo");
		
		String adultos = request.getParameter("adultos");
		String ninos = request.getParameter("ninos");
		String edadninos = request.getParameter("edades");
		String perro = request.getParameter("perro");
		String tipoperro = request.getParameter("tipoperro");
		String perrosantes = request.getParameter("perroAntes");
		String porqueadoptar = request.getParameter("porqueadoptar");
		String responsabilidadperro = request.getParameter("responsabilidad");
		String visitas = request.getParameter("visita");
		
		//System.out.println(nombre + apellido + cedula + ciudad + fechaNacimiento + barrio + direccion + telefono + celular + profesion + trabajo);
		//System.out.println(adultos + ninos + edadninos + perro + tipoperro + perrosantes + porqueadoptar + responsabilidadperro + visitas);
		
		Persona p = new Persona();
		Formularioadopcion fa = new Formularioadopcion();
		
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
		
		fa.setAdulto(Integer.parseInt(adultos));
		fa.setNinos(Integer.parseInt(ninos));
		fa.setEdadninos(Integer.parseInt(edadninos));
		fa.setPerro(pe);
		fa.setTipoperro(tipoperro);
		fa.setPerrosantes(perrosantes);
		fa.setPorqueadoptar(porqueadoptar);
		fa.setResponsabilidadperro(responsabilidadperro);
		fa.setVisitas(visitas);
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
		FormularioAdopcionDAO faDao = new FormularioAdopcionDAO();
		
		pDao.insert(p);
		faDao.insert(fa);
		
		request.setAttribute("msgResultado", "Se ha enviado el formulario correctamente");
		request.getRequestDispatcher("/Formularioadopcion.jsp").forward(request, response);
		
	}
}
