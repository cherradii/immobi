package Modeles;

public class Constante {
	
	public String TitreBody;
	public String message_autorisation;
	public String message_authentification;
	public String message_champ_vide;
	
	
	public Constante(){
		 
		TitreBody = "Binvenue sur ELM IMMOBILIER";
		
		message_autorisation="Seulement les utilisateur inscris sur le site qui peuvent consulter cette partie";
		
		message_authentification = "Le nom d'utilisateur ou le mot de passe est incorrect";
		
		message_champ_vide = "Vous devez remplire les champs necessaire (*)";
	}

}
