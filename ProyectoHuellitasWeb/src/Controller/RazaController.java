package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Raza;
import model.RazaDAO;

/**
 * Servlet implementation class RazaController
 */
@WebServlet("/RazaController")
public class RazaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RazaController() {
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
		
		String nom_raza = request.getParameter("raza");
		
		//System.out.println("La raza es: " + nom_raza);
		
		Raza ra = new Raza();
		ra.setNombreRaza(nom_raza);
		
		RazaDAO rDao = new RazaDAO();
		rDao.insert(ra);
		
		request.setAttribute("msgResultado", "Se ha registrado la raza correctamente");
		request.getRequestDispatcher("/agregar.jsp").forward(request, response);
	}

}
