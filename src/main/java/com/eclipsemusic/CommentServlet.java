package com.eclipsemusic;

//import java.io.PrintWriter;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CommentServlet
 */
@WebServlet("/player")
public class CommentServlet extends HttpServlet {
  UserCollection userCol = new UserCollection();

	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("comment", userCol.getAllUsers());
    request.getRequestDispatcher("/player.jsp").forward(request, response);
    // response.sendRedirect("/player?");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userComment = request.getParameter("userComment");
    userCol.addUser(userComment, "ok", "ok");
		
		request.setAttribute("comment", userCol.getAllUsers());
		request.getRequestDispatcher("/player.jsp").forward(request, response);
	}
}
