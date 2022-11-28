<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="ISO-8859-1">
    <title>Player</title>
    <!-- This is a music player -->
  </head>

  <body>
    <h1>Player</h1>
    <audio controls type="audio/mpeg" src="https://mp3.chillhop.com/serve.php/?mp3=9272"></audio>

    <h1>Comments</h1>
    <form action="CommentServlet" method="post">
      <textarea placeholder="Your comments" name="yourComment"></textarea>
      <br>
      <input type="submit" value="Comment">
    </form>
  </body>
<% String yourComment = (String) request.getAttribute("comment");
if (yourComment != null) {
	out.print(String.format(yourComment));
}
%>
  </html>
