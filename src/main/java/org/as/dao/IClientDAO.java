package org.as.dao;

import java.util.List;

import org.as.entities.Client;

public interface IClientDAO {
	public void addClient(Client client);
	public List<Client> getAllClients();
	public Client getClient(int idClient);
	public void deleteClient(int idClient);
	public void updateClient(Client client);
}
