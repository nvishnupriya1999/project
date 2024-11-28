package com.admin.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.db.DBConnect;
import com.dao.SpecialistDao;
/**
 * Servlet implementation class AddSpecialist
 */
public class AddSpecialist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddSpecialist() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
String spec = request.getParameter("specName");
		
		SpecialistDao dao = new SpecialistDao(DBConnect.getConn());
		boolean f = dao.addSpecialist(spec);
		
		HttpSession session =request.getSession();
		
		
		if(f)
		{
			session.setAttribute("succMsg", "Specialist Added");
		    response.sendRedirect("admin/index.jsp");
		}
		else
		{
			session.setAttribute("errorMsg", "something wrong on server");
		    response.sendRedirect("admin/index.jsp");
		    
		}
	}

}
