package org.as.web;

import java.util.List;

import org.as.entities.Client;
import org.as.metier.IClientMetier;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;

public class ClientAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private IClientMetier clientMetier;
	public Client client;
	public int idClient;
	public String nom;
	public String prenom;
	public String cin;
	public char sexe;
	public String adresse;
	public String ville;
	public List<Client> listClients;
	public boolean editMode;
	public boolean clientIsAdded;
	public boolean clientIsDeleted;
	public boolean clientIsUpdated;

	public String index() {
		return SUCCESS;
	}
	public String getClients() {
		listClients = clientMetier.getAllClients();
		client = new Client();
		return SUCCESS;
	}
	public String saveClient() {
		reloadNotifStatus();
		client = new Client(nom, prenom, cin, sexe, adresse, ville);
		if(editMode) {
			client.setIdClient(idClient);
			clientMetier.updateClient(client);
			clientIsUpdated = true;
		}else {
			clientMetier.addClient(client);			
			clientIsAdded = true;
		}
		editMode = false;
		return getClients();
	}
	public String addClient() {
		client = clientMetier.getClient(idClient);
		return SUCCESS;
	}
	public String editClient() {
		editMode = true;
		client = clientMetier.getClient(idClient);
		return SUCCESS;
	}
	public String deleteClient() {
		clientMetier.deleteClient(idClient);
		clientIsDeleted = true;
		listClients = clientMetier.getAllClients();
		return SUCCESS;
	}
	public String saveEditedClient() {
		Client c = new Client(nom, prenom, cin, sexe, adresse, ville);
		c.setIdClient(idClient);
		clientMetier.updateClient(c);
		listClients = clientMetier.getAllClients();
		client = new Client();
		return SUCCESS;
	}
	public void reloadNotifStatus() {
		clientIsAdded = false;
		clientIsUpdated = false;
		clientIsDeleted = false;
	}
}
