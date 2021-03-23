package org.as.metier;

import java.util.List;

import org.as.dao.IClientDAO;
import org.as.entities.Client;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class ClientMetierImpl implements IClientMetier{
	
	@Autowired
	public IClientDAO daoClient;

	public void setDao(IClientDAO dao) {
		this.daoClient = dao;
	}

	@Override
	public void addClient(Client client) {
		daoClient.addClient(client);
	}

	@Override
	public List<Client> getAllClients() {
		return daoClient.getAllClients();
	}

	@Override
	public Client getClient(int idClient) {
		return daoClient.getClient(idClient);
	}

	@Override
	public void deleteClient(int idClient) {
		daoClient.deleteClient(idClient);
	}

	@Override
	public void updateClient(Client client) {
		daoClient.updateClient(client);
	}
}
