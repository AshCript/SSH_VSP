package test;

//import static org.junit.Assert.*;

import java.util.Date;

import org.as.metier.IClientMetier;
import org.as.metier.ICommandeMetier;
import org.as.metier.ISmartphoneMetier;
import org.as.entities.*;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class ProjectTest {
	private ICommandeMetier metierCmd;
	private IClientMetier metierClient;
	private ISmartphoneMetier metierSp;
	
	@Before
	public void setUp() throws Exception {
		@SuppressWarnings("resource")
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		metierCmd = (ICommandeMetier)context.getBean("metierCmd");
		metierClient = (IClientMetier)context.getBean("metierClient");
		metierSp = (ISmartphoneMetier)context.getBean("metierSp");
	}

	@Test
	public void test() {
		
//		Commande(String color, int quantite, int prixMGA, Date date)
		metierClient.addClient(new Client("RAKOTO", "Paoly", "102456782154", 'M', "Lot IVP Ankorondrano", "Antananarivo"));
		metierClient.addClient(new Client("RASOA", "Naivo", "102879545784", 'F', "Lot II O Ankadindramamy", "Antananarivo"));
		metierClient.addClient(new Client("RABE", "Pota", "102024784662", 'M', "Lot II P 152 Tsarafara", "Antananarivo"));
		Client c1 = metierClient.getClient(1);
		Client c2 = metierClient.getClient(2);
		
		metierSp.addSmartphone(new Smartphone("iPhone", "6", "iOS", "11.4.1", 2, 3500, 16, 1, 4.6, 2, 8, 700000, "E:\\imageEditingFolders\\photos\\boo.jpg", "E:\\imageEditingFolders\\photos\\boo.jpg", "E:\\imageEditingFolders\\photos\\boo.jpg", "E:\\imageEditingFolders\\photos\\boo.jpg"));
		metierSp.addSmartphone(new Smartphone("iPhone", "6s", "iOS", "13.4.1", 2, 3500, 64, 2, 4.6, 8, 12, 750000, "E:\\imageEditingFolders\\photos\\boo.jpg", "E:\\imageEditingFolders\\photos\\boo.jpg", "E:\\imageEditingFolders\\photos\\boo.jpg", "E:\\imageEditingFolders\\photos\\boo.jpg"));
		Smartphone s1 = metierSp.getSmartphone(1);
		Smartphone s2 = metierSp.getSmartphone(2);
		
		metierCmd.addCommande(new Commande("blue", 1, s1.getPrixMGA(), new Date()), c1, s1);
		metierCmd.addCommande(new Commande("black", 1, s2.getPrixMGA(), new Date()), c1, s2);
		metierCmd.addCommande(new Commande("black", 3, s2.getPrixMGA(), new Date()), c2, s2);
	}

}
