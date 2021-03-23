package org.as.metier;

import java.util.List;

import org.as.dao.ICommandeDAO;
import org.as.entities.Client;
import org.as.entities.Commande;
import org.as.entities.Smartphone;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class CommandeMetierImpl implements ICommandeMetier{

	@Autowired
	public ICommandeDAO daoCmd;
	
	@Override
	public void addCommande(Commande commande, Client client, Smartphone smartphone) {
		daoCmd.addCommande(commande, client, smartphone);
	}

	@Override
	public Commande getCommande(int idCommande) {
		return daoCmd.getCommande(idCommande);
	}

	@Override
	public List<Commande> getAllCommandes() {
		return daoCmd.getAllCommandes();
	}

	@Override
	public void deleteCommande(int idCommande) {
		daoCmd.deleteCommande(idCommande);
	}

	@Override
	public void updateCommande(Commande commande, Client client, Smartphone smartphone) {
		daoCmd.updateCommande(commande, client, smartphone);
	}

	@Override
	public List<Client> getAllClients() {
		// TODO Auto-generated method stub
		return daoCmd.getAllClients();
	}

	@Override
	public List<Smartphone> getAllSmartphones() {
		// TODO Auto-generated method stub
		return daoCmd.getAllSmartphones();
	}

	@Override
	public Client getClient(int idClient) {
		return daoCmd.getClient(idClient);
	}

	@Override
	public Smartphone getSmartphone(int idSmartphone) {
		// TODO Auto-generated method stub
		return daoCmd.getSmartphone(idSmartphone);
	}
	
}
