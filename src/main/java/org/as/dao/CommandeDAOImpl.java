package org.as.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.as.entities.Client;
import org.as.entities.Commande;
import org.as.entities.Smartphone;

public class CommandeDAOImpl implements ICommandeDAO{

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public void addCommande(Commande commande, Client client, Smartphone smartphone) {
		commande.setClient(client);
		commande.setSmartphone(smartphone);
		em.persist(commande);
	}

	@Override
	public Commande getCommande(int idCommande) {
		Commande commande = em.find(Commande.class, idCommande);
		return commande;
	}

	@Override
	public void deleteCommande(int idCommande) {
		Commande commande = getCommande(idCommande);
		em.remove(commande);
	}

	@Override
	public void updateCommande(Commande commande, Client client, Smartphone smartphone) {
		commande.setClient(client);
		commande.setSmartphone(smartphone);
		em.merge(commande);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Commande> getAllCommandes() {
		Query req = em.createQuery("select c from Commande c");
		return req.getResultList();
	}
	@SuppressWarnings("unchecked")
	public List<Client> getAllClients(){
		Query req = em.createQuery("select c from Client c");
		return req.getResultList();
	}
	@SuppressWarnings("unchecked")
	public List<Smartphone> getAllSmartphones(){
		Query req = em.createQuery("select s from Smartphone s");
		return req.getResultList();
	}

	@Override
	public Client getClient(int idClient) {
		return em.find(Client.class, idClient);
	}

	@Override
	public Smartphone getSmartphone(int idSmartphone) {
		return em.find(Smartphone.class, idSmartphone);
	}
}
