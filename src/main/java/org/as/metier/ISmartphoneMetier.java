package org.as.metier;

import java.util.List;

import org.as.entities.Smartphone;

public interface ISmartphoneMetier {
	public void addSmartphone(Smartphone sp);
	public Smartphone getSmartphone(int idSmartphone);
	public List<Smartphone> getAllSmartphones();
	public void updateSmartphone(Smartphone sp);
	public void deleteSmartphone(int idSmartphone);
}
