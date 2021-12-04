package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import model.Usuario;


public class UsuarioDAO {
	
	public int countAll() throws Exception {
		try {
			String sql = "SELECT COUNT(1) AS TOTAL FROM usuarios";
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement statement = conn.prepareStatement(sql);
			ResultSet resultados = statement.executeQuery();

			resultados.next();
			int total = resultados.getInt("TOTAL");

			return total;
		} catch (Exception e) {
			throw new Exception(e);
		}
	}
	
	public List<Usuario> findAll() throws Exception{
		try {
			String sql = "SELECT * FROM USUARIOS";
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement statement = conn.prepareStatement(sql);
			ResultSet resultados = statement.executeQuery();

			List<Usuario> usuarios = new ArrayList<Usuario>();
			while (resultados.next()) {
				usuarios.add(toUsuario(resultados));
			}

			return usuarios;
		} catch (Exception e) {
			throw e;
		}
	}
	
	private Usuario toUsuario(ResultSet resultados) throws SQLException {
		int isAdmin = resultados.getInt("isAdmin");
		Boolean admin = (isAdmin == 1)? true : false;
		return new Usuario(resultados.getInt("ID"),
				resultados.getInt("monedas"),
				resultados.getString("nombre"), 				
				resultados.getDouble("tiempo"),
				admin);
	}
	
	public Usuario findUsuarioByNombre(String nombre) throws Exception {
		try {
			String sql = "SELECT * FROM usuarios WHERE nombre = ?";
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, nombre);
			ResultSet resultados = statement.executeQuery();

			Usuario usuario = null;

			if (resultados.next()) {
				usuario = toUsuario(resultados);
			}

			return usuario;
		} catch (Exception e) {
			throw new Exception(e);
		}
		
	}

}
