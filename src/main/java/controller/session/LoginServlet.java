package controller.session;

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

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = -4945509064646183544L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String usuario = req.getParameter("usuario");
		String clave = req.getParameter("clave");
		UsuarioDAO usrDAO = new UsuarioDAO();
		Usuario usr = null;
		List<Usuario> usuarios = new ArrayList<Usuario>();
		
		try {
			usr = usrDAO.findUsuarioByNombre(usuario);
			usuarios = usrDAO.findAll();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			
			e.printStackTrace();
		}
		
		if (usr != null && usr.getNombre().equals(clave)) {
			req.getSession().setAttribute("usuario", usr);	
			req.getSession().setAttribute("usuarios", usuarios);
			resp.sendRedirect("views/usuarios/index.jsp");
		} else {
			req.setAttribute("flash", "Nombre de usuario o contraseña incorrectos");
    		
    		RequestDispatcher dispatcher = getServletContext()
      		      .getRequestDispatcher("/login.jsp");
    			
    		   	dispatcher.forward(req, resp);
		}
	}



   

}
