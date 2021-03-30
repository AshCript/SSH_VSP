package org.as.web;

import java.text.ParseException;
import java.text.SimpleDateFormat;
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
	public int idCommande;
	public Client client;
	public Smartphone smartphone;
	public String color;
	public int quantite;
	public int prixMGA;
	public Date dateCommande;
	public List<Commande> listCommandes;
	public List<Client> listClients;
	public List<Smartphone> listSmartphones;
	public int idClient;
	public int idSmartphone;
	public SimpleDateFormat sdf;
	public String dateString;
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

			try {
				dateCommande = new SimpleDateFormat("yyyy-MM-dd").parse(dateString);
			} catch (ParseException e) {
				System.out.println(dateString);
				e.printStackTrace();
			}

			commande = new Commande(color, quantite, prixMGA, dateCommande);
			if(editMode == true) {
				commande.setIdCommande(idCommande);
				metierCmd.updateCommande(commande, client, smartphone);
				cmdIsUpdated = true;
			}else {
				commande = new Commande(color, quantite, prixMGA, dateCommande);
				metierCmd.addCommande(commande, client, smartphone);
				cmdIsAdded = true;
			}
			System.out.println("\n\n\n" + editMode);
			editMode = false;
			commande = new Commande();

		return getClientSp();
	}
	public String addCmd() {
		commande = metierCmd.getCommande(idCommande);
		sdf = new SimpleDateFormat("yyyy-MM-dd");
		dateString = sdf.format(new Date());
		return getClientSp();
	}
	public String editCmd() {
		editMode = true;
		commande = metierCmd.getCommande(idCommande);
		dateCommande = commande.getDateCommande();
		sdf = new SimpleDateFormat("yyyy-MM-dd");
		dateString = sdf.format(dateCommande);
		return getClientSp();
	}
	public String deleteCmd() {
		metierCmd.deleteCommande(idCommande);
		cmdIsDeleted = true;
		return getClientSp();
	}
	public void reloadNotifStatus() {
		cmdIsAdded = false;
		cmdIsDeleted = false;
		cmdIsUpdated = false;
	}
}
