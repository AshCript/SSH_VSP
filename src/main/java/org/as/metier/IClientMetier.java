package org.as.metier;

import java.util.List;

import org.as.entities.Client;

public interface IClientMetier {
	public void addClient(Client client);
	public List<Client> getAllClients();
	public Client getClient(int idClient);
	public void deleteClient(int idClient);
	public void updateClient(Client client);
}
