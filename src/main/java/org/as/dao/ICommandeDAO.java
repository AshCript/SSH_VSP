package org.as.dao;

import java.util.List;

import org.as.entities.Client;
import org.as.entities.Commande;
import org.as.entities.Smartphone;

public interface ICommandeDAO {
	public void addCommande(Commande commande, Client client, Smartphone smartphone);
	public Commande getCommande(int idCommande);
	public List<Commande> getAllCommandes();
	public void deleteCommande(int idCommande);
	public void updateCommande(Commande commande, Client client, Smartphone smartphone);
	public Client getClient(int idClient);
	public Smartphone getSmartphone(int idSmartphone);
	public List<Client> getAllClients();
	public List<Smartphone> getAllSmartphones();
}
