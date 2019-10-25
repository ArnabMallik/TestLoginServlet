package com.service;

import com.dao.LoginDAO;
import com.model.UserModel;

public class LoginService {
	
	public UserModel check(String uname, String password) {
		
		LoginDAO dao = new LoginDAO();
		UserModel ans = dao.check(uname, password);
		return ans;
	}

}
