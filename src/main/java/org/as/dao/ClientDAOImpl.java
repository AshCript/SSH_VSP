package org.as.dao;

import java.util.List;

import org.as.entities.Client;
import javax.persistence.*;
public class ClientDAOImpl implements IClientDAO{
	
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public void addClient(Client client) {
		em.persist(client);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Client> getAllClients() {
		Query req = em.createQuery("select c from Client c");
		return req.getResultList();
	}

	@Override
	public Client getClient(int idClient) {
		return  em.find(Client.class, idClient);
	}

	@Override
	public void deleteClient(int idClient) {
		Client client = getClient(idClient);
		em.remove(client);
	}

	@Override
	public void updateClient(Client client) {
		em.merge(client);
	}
}
