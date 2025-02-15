package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Enfermedad;
import model.EnfermedadDAO;

/**
 * Servlet implementation class EnfermedadController
 */
@WebServlet("/EnfermedadController")
public class EnfermedadController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnfermedadController() {
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
		
		String enfermedad = request.getParameter("enfermedad");
		
		Enfermedad e = new Enfermedad();
		e.setNombreEnfermedad(enfermedad);
		
		EnfermedadDAO eDao = new EnfermedadDAO();
		eDao.insert(e);
		
		request.setAttribute("msgResultado", "Se ha registrado la enfermedad correctamente");
		request.getRequestDispatcher("/agregar.jsp").forward(request, response);
	}

}
