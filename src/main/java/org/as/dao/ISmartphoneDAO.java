package org.as.dao;

import java.util.List;

import org.as.entities.Smartphone;

public interface ISmartphoneDAO {
	public void addSmartphone(Smartphone sp);
	public Smartphone getSmartphone(int idSmartphone);
	public List<Smartphone> getAllSmartphones();
	public void updateSmartphone(Smartphone sp);
	public void deleteSmartphone(int idSmartphone);
}