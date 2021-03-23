package org.as.web;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;

import org.as.entities.Client;
import org.as.entities.Commande;
import org.as.entities.Smartphone;
import org.as.metier.ICommandeMetier;
import org.springframework.beans.factory.annotation.Autowired;
import com.opensymphony.xwork2.ActionSupport;

public class CommandeAction extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private ICommandeMetier metierCmd;
	public Commande commande;
	public int id;
	public Client client;
	public Smartphone smartphone;
	public String color;
	public int quantite;
	public int prixMGA;
	public Date date;
	public List<Commande> listCommandes;
	public List<Client> listClients;
	public List<Smartphone> listSmartphones;
	public int idClient;
	public int idSmartphone;
	public boolean editMode;
	public boolean cmdIsAdded;
	public boolean cmdIsUpdated;
	public boolean cmdIsDeleted;
	
	public String getClientSp() {
		listCommandes = metierCmd.getAllCommandes();
		listClients = metierCmd.getAllClients();
		listSmartphones = metierCmd.getAllSmartphones();
		return SUCCESS;
	}
	public String saveCmd() {
		client = metierCmd.getClient(idClient);
		reloadNotifStatus();
		smartphone = metierCmd.getSmartphone(idSmartphone);
		commande = new Commande(color, quantite, prixMGA, date);
		if(editMode == true) {
			commande.setId(id);
			metierCmd.updateCommande(commande, client, smartphone);
			cmdIsUpdated = true;
		}else {
			commande = new Commande(color, quantite, prixMGA, date);
			metierCmd.addCommande(commande, client, smartphone);
			cmdIsAdded = true;
		}
		System.out.println("\n\n\n" + editMode);
		editMode = false;
		commande = new Commande();
		return getClientSp();
	}
	public String addCmd() {
		commande = metierCmd.getCommande(id);
		return getClientSp();
	}
	public String editCmd() {
		editMode = true;
		commande = metierCmd.getCommande(id);
		return getClientSp();
	}
	public String deleteCmd() {
		metierCmd.deleteCommande(id);
		cmdIsDeleted = true;
		return getClientSp();
	}
	public void reloadNotifStatus() {
		cmdIsAdded = false;
		cmdIsDeleted = false;
		cmdIsUpdated = false;
	}
}
