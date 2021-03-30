package org.as.entities;

import java.io.Serializable;

import javax.persistence.*;

@Entity
public class Client implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.TABLE)
	private int idClient;
	private String nom;
	private String prenom;
	private String cin;
	private char sexe;
	private String adresse;
	private String ville;
	

	public Client() {
	}
	public Client(String nom, String prenom, String cin, char sexe, String adresse, String ville) {
		this.nom = nom;
		this.prenom = prenom;
		this.cin = cin;
		this.sexe = sexe;
		this.adresse = adresse;
		this.ville = ville;
	}
	public int getIdClient() {
		return idClient;
	}
	public void setIdClient(int idClient) {
		this.idClient = idClient;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getCIN() {
		return cin;
	}
	public void setCIN(String cin) {
		this.cin = cin;
	}
	public char getSexe() {
		return sexe;
	}
	public void setSexe(char sexe) {
		this.sexe = sexe;
	}
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public String getVille() {
		return ville;
	}
	public void setVille(String ville) {
		this.ville = ville;
	}
}
