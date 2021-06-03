package models;

public class Admin {
	private int idAdmin;
	 private String nom;
	 private String prenom;
	 private String email;
	 private String sexe;
	 private String login;
	 private String passWord;
	 private int idEtab;
	 			public Admin() {
		 
	 			}
				public int getIdAdmin() {
					return idAdmin;
				}
				public void setIdAdmin(int idAdmin) {
					this.idAdmin = idAdmin;
				}
				public String getNom() {
					return nom;
				}
				public void setNom(String nom) {
					this.nom = nom;
				}
				public String getPrenom() {
					return prenom;
				}
				public void setPrenom(String prenom) {
					this.prenom = prenom;
				}
				public String getEmail() {
					return email;
				}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSexe() {
		return sexe;
	}
	public void setSexe(String sexe) {
		this.sexe = sexe;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public int getIdEtab() {
		return idEtab;
	}
	public void setIdEtab(int idEtab) {
		this.idEtab = idEtab;
	}
	public Admin(int idAdmin, String nom, String prenom, String email, String sexe, String login,
			String passWord, int idEtab) {
		super();
		this.idAdmin = idAdmin;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.sexe = sexe;
		this.login = login;
		this.passWord = passWord;
		this.idEtab = idEtab;
	}
}
