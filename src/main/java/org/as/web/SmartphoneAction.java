package org.as.web;

import java.util.List;

import org.as.entities.Smartphone;
import org.as.metier.ISmartphoneMetier;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;

public class SmartphoneAction extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Autowired
	ISmartphoneMetier metierSp;
	public Smartphone smartphone;
	public int idSmartphone;
	public String marque;
	public String model;
	public String systeme;
	public String version;
	public int nombre_processeur;
	public int capaciteBatt;
	public int rom;
	public int ram;
	public double pouce;
	public int frontCam;
	public int backCam;
	public int prixMGA;
	public String pic1;
	public String pic2;
	public String pic3;
	public String pic4;
	public List<Smartphone> listSp;
	public boolean editMode;
	public boolean spIsAdded;
	public boolean spIsDeleted;
	public boolean spIsUpdated;
//	public String[] lesPrix;
	
	public String getSp() {
		smartphone = new Smartphone();
		listSp = metierSp.getAllSmartphones();
		return SUCCESS;
	}
	public String saveSp() {
		smartphone  = new Smartphone(marque, model, systeme, version, 2, capaciteBatt, rom, ram, pouce, frontCam, backCam, prixMGA, pic1, pic2, pic3, pic4);
		reloadNotifStatus();
		if(editMode == true) {
			spIsUpdated = true;
			smartphone.setIdSmartphone(idSmartphone);
			metierSp.updateSmartphone(smartphone);
		}else {
			spIsAdded = true;
			metierSp.addSmartphone(smartphone);
		}
		listSp = metierSp.getAllSmartphones();
		smartphone = new Smartphone();
		editMode = false;
		return SUCCESS;
	}
	public String aboutSp() {
		reloadNotifStatus();
		smartphone = metierSp.getSmartphone(idSmartphone);
		return SUCCESS;
	}
	public String addSp() {
		return SUCCESS;
	}
	public String editSp() {
		editMode = true;
		smartphone = metierSp.getSmartphone(idSmartphone);
		return SUCCESS;
	}
	public String deleteSp() {
		reloadNotifStatus();
		marque = metierSp.getSmartphone(idSmartphone).getMarque();
		model = metierSp.getSmartphone(idSmartphone).getModel();
		metierSp.deleteSmartphone(idSmartphone);
		spIsDeleted = true;
		smartphone = new Smartphone();
		listSp = metierSp.getAllSmartphones();
		return SUCCESS;
	}
	public String saveEditedSmartphone() {
		smartphone = new Smartphone(marque, model, systeme, version, nombre_processeur, capaciteBatt, rom, ram, pouce, frontCam, backCam, prixMGA, pic1, pic2, pic3, pic4);
		smartphone.setIdSmartphone(idSmartphone);
		metierSp.updateSmartphone(smartphone);
		listSp = metierSp.getAllSmartphones();
		smartphone = new Smartphone();
		return SUCCESS;
	}
	public String listSp() {
		listSp = metierSp.getAllSmartphones();
		return getSp();
	}
	public void reloadNotifStatus() {
		spIsAdded = false;
		spIsDeleted = false;
		spIsUpdated = false;
	}
}
