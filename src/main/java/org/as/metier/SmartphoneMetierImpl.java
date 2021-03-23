package org.as.metier;

import java.util.List;

import org.as.dao.ISmartphoneDAO;
import org.as.entities.Smartphone;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class SmartphoneMetierImpl implements ISmartphoneMetier{

	@Autowired
	public ISmartphoneDAO daoSp;
	
	public void setDaoSp(ISmartphoneDAO dao) {
		this.daoSp = dao;
	}
	
	@Override
	public void addSmartphone(Smartphone sp) {
		daoSp.addSmartphone(sp);
	}


	@Override
	public Smartphone getSmartphone(int idSmartphone) {
		return daoSp.getSmartphone(idSmartphone);
	}

	@Override
	public List<Smartphone> getAllSmartphones() {
		return daoSp.getAllSmartphones();
	}

	@Override
	public void updateSmartphone(Smartphone sp) {
		daoSp.updateSmartphone(sp);
	}

	@Override
	public void deleteSmartphone(int idSmartphone) {
		daoSp.deleteSmartphone(idSmartphone);
	}
}
