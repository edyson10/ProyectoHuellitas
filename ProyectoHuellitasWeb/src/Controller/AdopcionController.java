package Controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Adopcion;
import entities.Perro;
import entities.Persona;
import model.AdopcionDAO;
import model.PerroDAO;
import model.PersonaDAO;

/**
 * Servlet implementation class AdopcionController
 */
@WebServlet("/AdopcionController")
public class AdopcionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdopcionController() {
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
		
		String perro = request.getParameter("perro");
		String persona = request.getParameter("persona");
		String fechaIncio = request.getParameter("fechaInicioAdop");
		
		Perro p = new Perro();
		PerroDAO pDao = new PerroDAO();
		
		Persona pe = new Persona();
		PersonaDAO peDao = new PersonaDAO();
		
		Adopcion a =new Adopcion();
		AdopcionDAO aDao = new AdopcionDAO();
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		try {
			java.util.Date fechaN = format.parse(fechaIncio);
			java.sql.Date fechaNS = new java.sql.Date(fechaN.getTime());
			a.setFechaInicioAdop(fechaNS);
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		p = pDao.find(perro);
		pe = peDao.find(persona);
		
		a.setPerro(p);
		a.setPersona(pe);
		
		aDao.insert(a);
		
		request.setAttribute("msgResultado", "Se ha registrado el adoptador correctamente");
		request.getRequestDispatcher("/agregarAdoptador.jsp").forward(request, response);
	}
}
