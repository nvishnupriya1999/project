package com.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.db.DBConnect;
import com.dao.UserDao;
import com.db.DBConnect;
import com.entity.User;
/**
 * Servlet implementation class UserRegister
 */
public class UserRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegister() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try
		{
			String fullName =request.getParameter("fullname");
			String email =request.getParameter("email");
			String password =request.getParameter("password");
			User u = new User(fullName,email,password);	
		
			UserDao dao = new UserDao(DBConnect.getConn());
			boolean f=dao.register(u);
        
			HttpSession session=request.getSession();
			if(f)
			{
				session.setAttribute("sucMsg", "Register Successfully");
				response.sendRedirect("signup.jsp");
			}
			else
			{
				session.setAttribute("errorMsg", "Something wrong on server side");
				response.sendRedirect("signup.jsp");     	
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
