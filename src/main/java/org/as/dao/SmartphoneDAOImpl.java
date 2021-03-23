package org.as.dao;

import java.util.List;

import org.as.entities.Smartphone;
import javax.persistence.*;
public class SmartphoneDAOImpl implements ISmartphoneDAO{
	
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public void addSmartphone(Smartphone sp) {
		em.persist(sp);
	}
	
	@Override
	public Smartphone getSmartphone(int idSmartphone) {
		return em.find(Smartphone.class, idSmartphone);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Smartphone> getAllSmartphones() {
		Query query = em.createQuery("select sp from Smartphone sp");
		return query.getResultList();
	}
	
	@Override
	public void updateSmartphone(Smartphone sp) {
		em.merge(sp);
	}

	@Override
	public void deleteSmartphone(int idSmartphone) {
		em.remove(getSmartphone(idSmartphone));
	}
}
