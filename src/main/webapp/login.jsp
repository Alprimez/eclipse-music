<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="ISO-8859-1">
    <title>Welcome back!</title>
  </head>

  <body>
    <div>
      <% 
      String result = (String)request.getAttribute("inputResult");
      %>
      <div><%=result %></div>
      
      <form action="login" method="post">
        <h1>Login</h1>
        Username:
        <input type="text" placeholder="username" name="username">
        Password:
        <input type="password" placeholder="password" name="password">
        <input type="submit">
      </form>
    </div>
  </body>

  </html>
