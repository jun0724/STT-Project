package com.sttproject.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sttproject.action.Action;
import com.sttproject.action.ActionTo;
import com.sttproject.dao.UserDAO;
import com.sttproject.dto.UserDTO;

public class UserLoginOkAction implements Action{
	
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {

		String userid = req.getParameter("userid");
		String userpw = req.getParameter("userpw");
		
		UserDAO udao = new UserDAO();
		
		ActionTo transfer = new ActionTo();
		transfer.setRedirect(false);
		
		
		if(udao.userlogin(userid,userpw) != null) {
			UserDTO user = udao.userlogin(userid,userpw);
			req.getSession().setAttribute("loginUser", user);
			transfer.setPath("/");
		} else {
			transfer.setPath("/");
			
		}
				
				
		
		return transfer;
	}

}
