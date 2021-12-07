package controller.usuario;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import dao.UsuarioDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Usuario;

@WebServlet("/usuario/agregar.do")
public class CrearUsuarioServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5510125201743054397L;
	private UsuarioDAO usrDAO = new UsuarioDAO();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/views/usuarios/nuevo.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String nombre = req.getParameter("nombre");
		Integer monedas = Integer.parseInt(req.getParameter("monedas"));
		Double tiempo = Double.parseDouble(req.getParameter("tiempo"));
		
		try {
			System.out.println(usrDAO.insert(nombre, monedas, tiempo, 0));
			List<Usuario> usuarios = usrDAO.findAll();
			req.getSession().setAttribute("usuarios", usuarios);
			resp.sendRedirect("/crudbase/views/usuarios/index.jsp");
		}catch (Exception e) {
			e.printStackTrace();
		}
				
	}
	
	


}
