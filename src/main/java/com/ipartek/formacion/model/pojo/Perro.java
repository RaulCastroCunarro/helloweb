package com.ipartek.formacion.model.pojo;

public class Perro {
	private int id;
	private String nombre;
	private String foto;
	
	
	public Perro() {
		super();
		this.id = 0;
		this.nombre = "";
		this.foto = "https://st3.depositphotos.com/4265001/14374/v/1600/depositphotos_143741745-stock-illustration-dog-logo-illustration.jpg";
	}
	
	public Perro(String nombre) {
		this();
		this.nombre = nombre;
	}
	
	public Perro(String nombre, String foto) {
		this();
		this.nombre = nombre;
		this.foto = foto;
	}

	public Perro(int id, String nombre) {
		this();
		this.id = id;
		this.nombre = nombre;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getFoto() {
		return foto;
	}
	public void setFoto(String foto) {
		this.foto = foto;
	}
	@Override
	public String toString() {
		return "Perro [id=" + id + ", nombre=" + nombre + ", foto=" + foto + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((foto == null) ? 0 : foto.hashCode());
		result = prime * result + id;
		result = prime * result + ((nombre == null) ? 0 : nombre.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Perro other = (Perro) obj;
		if (foto == null) {
			if (other.foto != null)
				return false;
		} else if (!foto.equals(other.foto))
			return false;
		if (id != other.id)
			return false;
		if (nombre == null) {
			if (other.nombre != null)
				return false;
		} else if (!nombre.equals(other.nombre))
			return false;
		return true;
	}
	
	
}
