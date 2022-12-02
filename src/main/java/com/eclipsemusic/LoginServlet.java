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
		// TODO Auto-generated method stub
		// doGet(request, response);
    String userInput = request.getParameter("username");
    String userPass = request.getParameter("password");
    request.setAttribute("inputResult", "Success! <br/>Username is:" + userInput + "<br/>Password is: " + userPass);
    request.getRequestDispatcher("/login.jsp").forward(request, response);
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
