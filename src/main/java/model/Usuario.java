package model;

public class Usuario {
	private int ID, monedas; 
	private String nombre;
	private double tiempo; 
	private boolean admin;
	
	
	
	public Usuario(int iD, int monedas, String nombre, double tiempo, boolean admin) {
		ID = iD;
		this.monedas = monedas;
		this.nombre = nombre;
		this.tiempo = tiempo;
		this.admin = admin;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public int getMonedas() {
		return monedas;
	}
	public void setMonedas(int monedas) {
		this.monedas = monedas;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public double getTiempo() {
		return tiempo;
	}
	public void setTiempo(double tiempo) {
		this.tiempo = tiempo;
	}
	public boolean isAdmin() {
		return admin;
	}
	public void setAdmin(boolean admin) {
		this.admin = admin;
	}
	@Override
	public String toString() {
		return "Usuario [ID=" + ID + ", nombre=" + nombre + ", monedas=" + monedas + ", tiempo=" + tiempo + ", admin="
				+ admin + "]";
	}
	
	
	
}
