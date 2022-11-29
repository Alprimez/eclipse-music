<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>eclipse</title>
  </head>

  <body>
    <nav class="navbar navbar-expand-lg bg-light">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">Eclipse Music</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText"
          aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarText">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link" href="login.jsp">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="feed.jsp">Music Feed</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="login.jsp">Login</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <h1>Player</h1>
    <audio controls type="audio/mpeg" src="https://mp3.chillhop.com/serve.php/?mp3=9272"></audio>

    <h1>Comments</h1>
    <form action="CommentServlet" method="post">
      <textarea placeholder="Your comments" name="yourComment"></textarea>
      <br>
      <input type="submit" value="Comment">
    </form>
  </body>

  <br>
  <!--The comment needs a box-->
<% String yourComment = (String) request.getAttribute("comment");
if (yourComment != null) {
	out.print(String.format(yourComment));
}
%>
  </html>
  </html>