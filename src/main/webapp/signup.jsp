<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <!DOCTYPE html>
  <html>

  <head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/index.css">
  </head>

  <body>

    <div class="header">
      <h1>Eclipse Music</h1>
      <p>Become a music critic today!</p>
    </div>

    <div class="topnav">
      <a href="index.html">Home</a>
      <a href="feed.jsp">Music</a>
      <!-- <a href="authenticate.jsp">Login</a> -->
      <a href="login" style="float:right">Login</a>
      <a href="signup" style="float:right">Sign Up</a>
    </div>

    <% String result=(String)request.getAttribute("inputResult"); if (result==null) { result="" ; } %>
      <div>
        <%=result %>
      </div>
      <div class="container">
        <div class="row">
          <form class="col-sm" form id="form-login" method="post" action="signup">
            <h1 class="display-3" style="font-family: Futura-CondensedExtraBold, sans-serif;">Sign Up
            </h1>
            <br>
            <div class="form-group">
              <label for="email-signup">Email</label>
              <input type="text" name="email" class="form-control" id="email-login" placeholder="Enter Your Email">
            </div>
            <br>
            <div class="form-group">
              <label for="username-signup">Username</label>
              <input type="text" name="username" class="form-control" id="username-login"
                placeholder="Enter Your Username">
            </div>
            <br>
            <div class="form-group">
              <label for="password-signup">Password</label>
              <input type="password" class="form-control" id="password-login" placeholder="Enter Your Password"
                name="password">
            </div>
            <br>
            <button type="submit" class="btn btn-dark">Sign Up</button>
          </form>
          <div class="col-sm"><img
              src="https://images.unsplash.com/photo-1526478806334-5fd488fcaabc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=916&q=80"
              class="img-fluid" alt="...">
          </div>
        </div>
      </div>
  </body>

  </html>
