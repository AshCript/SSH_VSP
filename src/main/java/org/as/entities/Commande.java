package org.as.entities;

import java.util.Date;

import javax.persistence.*;

@Entity
@Table
public class Commande {
	@Id
	@GeneratedValue(strategy=GenerationType.TABLE)
	private int idCommande;
	
	private String color;
	private int quantite;
	private int prixMGA;
	private Date dateCommande;
	
	@ManyToOne
	@JoinColumn
	private Client client;
	
	@ManyToOne
	@JoinColumn
	private Smartphone smartphone;
	
	public Commande() {
	}
	public Commande(String color, int quantite, int prixMGA, Date dateCommande) {
		this.color = color;
		this.quantite = quantite;
		this.prixMGA = prixMGA;
		this.dateCommande = dateCommande;
	}
	public int getIdCommande() {
		return idCommande;
	}
	public void setIdCommande(int idCommande) {
		this.idCommande = idCommande;
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
	public Date getDateCommande() {
		return dateCommande;
	}
	public void setDateCommande(Date dateCommande) {
		this.dateCommande = dateCommande;
	}
}
