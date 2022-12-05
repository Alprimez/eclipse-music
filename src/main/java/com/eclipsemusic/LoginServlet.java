package com.eclipsemusic;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
  UserCollection userCol = CommonVariable.userCollection();

	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
    request.getRequestDispatcher("/login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String userInput = request.getParameter("username");
    String userPass = request.getParameter("password");
    if (userInput != "") {
      if (userPass != "") {
        User userFound = userCol.getUser(userInput);
        if (userFound != null) {
          // This portion is for checking
          // request.setAttribute("inputResult", java.text.MessageFormat.format("Username: {0} <br/> Password: {1} <br/><br/> UsernameInput: {2} <br/> PasswordInput: {3}", userFound.username, userFound.password, userInput, userPass));
          // request.getRequestDispatcher("/login.jsp").forward(request, response);

          // Actual code implementation
          if (userFound.password.equals(userPass)) {
            request.setAttribute("inputResult","Success!");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
          } else {
            request.setAttribute("inputResult", "Incorrect password!");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
          }
        } else {
          request.setAttribute("inputResult", "User not found!");
          request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
      } else {
        request.setAttribute("inputResult", "Please input a password!");
        request.getRequestDispatcher("/login.jsp").forward(request, response);
      }
    } else {
      request.setAttribute("inputResult", "Please input a username!");
      request.getRequestDispatcher("/login.jsp").forward(request, response);
    }
	}

  // Unused method. Save it for later ig.
  public String getHTMLString(String filePath, String message) throws IOException {
    BufferedReader reader = new BufferedReader(new FileReader(filePath));
    String line="";
    StringBuffer buffer = new StringBuffer();
    while((line=reader.readLine())!=null) {
      buffer.append(line);
    }

    reader.close();
    String page = buffer.toString();
    // page = MessageFormat.format(page, message);

    return page;
  }

}
