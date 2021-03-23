package org.as.entities;

import java.util.Date;

import javax.persistence.*;

@Entity
public class Commande {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@ManyToOne
	@JoinColumn
	private Client client;
	
	@ManyToOne
	@JoinColumn
	private Smartphone smartphone;
	private String color;
	private int quantite;
	private int prixMGA;
	private Date date;
	
	public Commande() {
	}
	public Commande(String color, int quantite, int prixMGA, Date date) {
		this.color = color;
		this.quantite = quantite;
		this.prixMGA = prixMGA;
		this.date = date;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Client getClient() {
		return client;
	}
	public void setClient(Client client) {
		this.client = client;
	}
	public Smartphone getSmartphone() {
		return smartphone;
	}
	public void setSmartphone(Smartphone smartphone) {
		this.smartphone = smartphone;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public int getQuantite() {
		return quantite;
	}
	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}
	public int getPrixMGA() {
		return prixMGA;
	}
	public void setPrixMGA(int prixMGA) {
		this.prixMGA = prixMGA;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
}
