package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Perro;
import entities.Raza;
import model.PerroDAO;
import model.RazaDAO;


/**
 * Servlet implementation class PerroController
 */
@WebServlet("/PerroController")
public class PerroController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PerroController() {
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
		
		String nombre_can = request.getParameter("nombre");
		String edad = request.getParameter("edad");
		String estado = request.getParameter("estado");
		String costo = request.getParameter("costo");
		String raza = request.getParameter("raza");
		
		//System.out.println(nombre_can + edad + estado + costo + raza);
		
		Perro pe = new Perro();
		Raza ra = new Raza();
		PerroDAO pDao = new PerroDAO();
		RazaDAO rDao = new RazaDAO();
		
		ra = rDao.find(Integer.parseInt(raza));
		pe.setNombre(nombre_can);
		pe.setEdad(Integer.parseInt(edad));
		pe.setCostoApadrinar(Integer.parseInt(costo));
		pe.setEstado(estado);
		pe.setRaza(ra);
		pDao.insert(pe);
		request.setAttribute("msgResultado", "Se ha registrado el perro correctamente");
		request.getRequestDispatcher("/perro.jsp").forward(request, response);
	}
}
