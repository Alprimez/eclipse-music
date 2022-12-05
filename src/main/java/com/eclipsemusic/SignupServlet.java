package com.eclipsemusic;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SignupServlet
 */
@WebServlet("/signup")
public class SignupServlet extends HttpServlet {
  UserCollection userCol = CommonVariable.userCollection();

	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignupServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/signup.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userEmailInput = request.getParameter("email");
		String userNameInput = request.getParameter("username");
    String userPassInput = request.getParameter("password");
    if (userEmailInput != "") {
      if (userNameInput != "") {
        if (userPassInput != "") {
          userCol.addUser(userNameInput, userEmailInput, userPassInput);
          request.setAttribute("inputResult","Success! <br/> Email is: " + userEmailInput + "<br/>Username is: " + userNameInput);
          request.getRequestDispatcher("/signup.jsp").forward(request, response);
        } else {
          request.setAttribute("inputResult", "Please input a password!");
          request.getRequestDispatcher("/signup.jsp").forward(request, response);
        }
      } else {
        request.setAttribute("inputResult", "Please input a username!");
        request.getRequestDispatcher("/signup.jsp").forward(request, response);
      }
    } else {
      request.setAttribute("inputResult", "Please input your email!");
      request.getRequestDispatcher("/signup.jsp").forward(request, response);
    }
	}
}
