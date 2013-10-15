package com.magnabyte.intranet.model;

import org.springframework.web.multipart.MultipartFile;

public class SelloDigital {
	private MultipartFile keyFile;
	private MultipartFile cerFile;
	private String password;
	private String mensajeValidacion;

	public MultipartFile getKeyFile() {
		return keyFile;
	}

	public void setKeyFile(MultipartFile keyFile) {
		this.keyFile = keyFile;
	}

	public MultipartFile getCerFile() {
		return cerFile;
	}

	public void setCerFile(MultipartFile cerFile) {
		this.cerFile = cerFile;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMensajeValidacion() {
		return mensajeValidacion;
	}

	public void setMensajeValidacion(String mensajeValidacion) {
		this.mensajeValidacion = mensajeValidacion;
	}

}
