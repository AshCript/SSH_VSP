package org.as.entities;

import java.io.Serializable;

import javax.persistence.*;

@Entity
public class Smartphone implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idSmartphone;
	private String marque;
	private String model;
	private String systeme;
	private String version;
	private int nombre_processeur;
	private int capaciteBatt;
	private int rom;
	private int ram;
	private double pouce;
	private int frontCam;
	private int backCam;
	private int prixMGA;
	private String pic1;
	private String pic2;
	private String pic3;
	private String pic4;
	
	public Smartphone() {
	}
	
	public Smartphone(String marque, String model, String systeme, String version, int nombre_processeur,
			int capaciteBatt, int rom, int ram, double pouce, int frontCam, int backCam, int prixMGA, String pic1,
			String pic2, String pic3, String pic4) {
		this.marque = marque;
		this.model = model;
		this.systeme = systeme;
		this.version = version;
		this.nombre_processeur = nombre_processeur;
		this.capaciteBatt = capaciteBatt;
		this.rom = rom;
		this.ram = ram;
		this.pouce = pouce;
		this.frontCam = frontCam;
		this.backCam = backCam;
		this.prixMGA = prixMGA;
		this.pic1 = pic1;
		this.pic2 = pic2;
		this.pic3 = pic3;
		this.pic4 = pic4;
	}

	public int getIdSmartphone() {
		return idSmartphone;
	}
	public void setIdSmartphone(int idSmartphone) {
		this.idSmartphone = idSmartphone;
	}
	public String getMarque() {
		return marque;
	}
	public void setMarque(String marque) {
		this.marque = marque;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getSysteme() {
		return systeme;
	}
	public void setSysteme(String systeme) {
		this.systeme = systeme;
	}
	public String getVersion() {
		return version;
	}
	public void setVersion(String version) {
		this.version = version;
	}
	public int getNombre_processeur() {
		return nombre_processeur;
	}
	public void setNombre_processeur(int nombre_processeur) {
		this.nombre_processeur = nombre_processeur;
	}
	public int getCapaciteBatt() {
		return capaciteBatt;
	}
	public void setCapaciteBatt(int capaciteBatt) {
		this.capaciteBatt = capaciteBatt;
	}
	public int getRom() {
		return rom;
	}
	public void setRom(int rom) {
		this.rom = rom;
	}
	public int getRam() {
		return ram;
	}
	public void setRam(int ram) {
		this.ram = ram;
	}
	public double getPouce() {
		return pouce;
	}
	public void setPouce(double pouce) {
		this.pouce = pouce;
	}
	public int getFrontCam() {
		return frontCam;
	}
	public void setFrontCam(int frontCam) {
		this.frontCam = frontCam;
	}
	public int getBackCam() {
		return backCam;
	}
	public void setBackCam(int backCam) {
		this.backCam = backCam;
	}
	public int getPrixMGA() {
		return prixMGA;
	}
	public void setPrixMGA(int prixMGA) {
		this.prixMGA = prixMGA;
	}

	public String getPic1() {
		return pic1;
	}

	public void setPic1(String pic1) {
		this.pic1 = pic1;
	}

	public String getPic2() {
		return pic2;
	}

	public void setPic2(String pic2) {
		this.pic2 = pic2;
	}

	public String getPic3() {
		return pic3;
	}

	public void setPic3(String pic3) {
		this.pic3 = pic3;
	}

	public String getPic4() {
		return pic4;
	}

	public void setPic4(String pic4) {
		this.pic4 = pic4;
	}
}
