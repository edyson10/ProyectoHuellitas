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
import entities.Persona;
import model.CiudadDAO;
import model.PersonaDAO;

/**
 * Servlet implementation class PersonaController
 */
@WebServlet("/PersonaController")
public class PersonaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PersonaController() {
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
		
		String cedula = request.getParameter("cedula");
		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		String direccion = request.getParameter("direccion");
		String telefono = request.getParameter("telefono");
		String ciudad = request.getParameter("ciudad");
		String fechaNac = request.getParameter("fechanacimiento");
		
		System.out.println(cedula + nombre +apellido + direccion+ telefono + ciudad + fechaNac );
		
		Persona pers = new Persona();
		Ciudad c = new Ciudad();
		CiudadDAO cDao = new CiudadDAO();
		
		c = cDao.find(Integer.parseInt(ciudad));
		pers.setNombre(nombre);
		pers.setApellido(apellido);
		pers.setCedula(cedula);
		pers.setDireccion(direccion);
		pers.setTelefono(telefono);
		pers.setCiudad(c);
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		try {
			java.util.Date fechaN = format.parse(fechaNac);
			java.sql.Date fechaNS = new java.sql.Date(fechaN.getTime());
			pers.setFechaNacimiento(fechaNS);
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		PersonaDAO perDao = new PersonaDAO();
		perDao.insert(pers);
		
		request.setAttribute("msgResultado", "Se ha registrado la persona correctamente");
		request.getRequestDispatcher("/persona.jsp").forward(request, response);
	}
}
