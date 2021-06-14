package dao.moduleDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dao.connexion.Connect;
import models.Module;


public class ModuleDao {
private Connection con = Connect.getC( );

public ArrayList<Module> getAllModule() {
	try {
		PreparedStatement st = con.prepareStatement("select * from module");
		ResultSet rs = st.executeQuery();
		ArrayList<Module> mod = new ArrayList<Module>();
		while(rs.next()) {
			mod.add(new Module(rs.getInt(1),rs.getString(2)));
		}
		return mod;
	} catch (SQLException e) {
		System.out.println(e.getMessage());
		return null;
	}
}

public Module getModule(int id) {
	try {
		PreparedStatement st = con.prepareStatement("select * from module where idmodule=?");
		st.setInt(1, id);
		ResultSet rs = st.executeQuery();
		Module module = null;
		while(rs.next()) {
			module = new Module(rs.getInt(1),rs.getString(2));
		}
		return module;
	} catch (SQLException e) {
		System.out.println(e.getMessage());
		return null;
	}
}

}
