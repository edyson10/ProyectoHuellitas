package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Ciudad;
import model.CiudadDAO;

/**
 * Servlet implementation class CiudadController
 */
@WebServlet("/CiudadController")
public class CiudadController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CiudadController() {
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
		
		String ciudad = request.getParameter("ciudad");
		
		//System.out.println(ciudad);
		Ciudad c = new Ciudad();
		c.setNombreCiudad(ciudad);
		
		CiudadDAO cDao = new CiudadDAO();
		cDao.insert(c);
		
		request.setAttribute("msgResultado", "Se ha registrado la ciudad correctamente");
		request.getRequestDispatcher("/agregar.jsp").forward(request, response);
	}
}
