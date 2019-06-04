package Controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Enfermedad;
import entities.Perro;
import entities.Tratamiento;
import model.EnfermedadDAO;
import model.PerroDAO;
import model.TratamientoDAO;

/**
 * Servlet implementation class TratamientoController
 */
@WebServlet("/TratamientoController")
public class TratamientoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TratamientoController() {
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
		String enfermedad = request.getParameter("enfermedad");
		String descripcion = request.getParameter("descripcion");
		String fechaInicioT = request.getParameter("fechaInicioTrat");
		String fechaFinT = request.getParameter("fechaFinTrat");
		
		Perro p = new Perro();
		PerroDAO pDao = new PerroDAO();
		
		Enfermedad e = new Enfermedad();
		EnfermedadDAO eDao = new EnfermedadDAO();
		
		Tratamiento t = new Tratamiento();
		TratamientoDAO tDao = new TratamientoDAO();
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		try {
			java.util.Date fechaN = format.parse(fechaInicioT);
			java.util.Date fechaN1 = null;
			java.sql.Date fechaNS1 = null;
			if(fechaFinT.equalsIgnoreCase("dd / mm / aaaa")) {
				fechaN1 = format.parse(fechaFinT);
				fechaNS1 = new java.sql.Date(fechaN1.getTime());
				t.setFechaFin(fechaNS1);
			}
			java.sql.Date fechaNS = new java.sql.Date(fechaN.getTime());
			t.setFechaInicio(fechaNS);
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		p = pDao.find(perro);
		e = eDao.find(Integer.parseInt(enfermedad));
		
		t.setPerro(p);
		t.setEnfermedadBean(e);
		t.setDescripcion(descripcion);
		
		tDao.insert(t);
		
		request.setAttribute("msgResultado", "Se ha registrado el tratamiento correctamente");
		request.getRequestDispatcher("/tratamiento.jsp").forward(request, response);
	}
}
