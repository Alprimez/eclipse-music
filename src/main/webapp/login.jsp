<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <!DOCTYPE html>
  <html>

  <body>

    <div class="header">
      <h1>Eclipse Music</h1>
      <p>Become a music critic today!</p>
    </div>

    <head>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <div class="topnav">
      <a href="index.html">Home</a>
      <a href="feed.jsp">Music</a>
      <!-- <a href="authenticate.jsp">Login</a> -->
      <a href="login.jsp" style="float:right">Login</a>
      <a href="signup.jsp" style="float:right">Sign Up</a>

    </div>

    <% String result=(String)request.getAttribute("inputResult"); if (result==null) { result="" ; } %>
      <div>
        <%=result %>
      </div>
      <div class="container">
        <div class="row">
          <form class="col-sm" form id="form-login" method="post" action="login">
            <h1 class="display-3" style="font-family: Futura-CondensedExtraBold, sans-serif;">Log
              back in
            </h1>
            <br>
            <div class="form-group">
              <label for="username-login">Username</label>
              <input type="text" name="username" class="form-control" id="username-login"
                placeholder="Enter Your Username">
            </div>
            <br>
            <div class="form-group">
              <label for="password-login">Password</label>
              <input type="password" class="form-control" id="password-login" placeholder="Enter Your Password"
                name="password">
            </div>
            <br>
            <button type="submit" class="btn btn-dark">Log In</button>
          </form>
          <div class="col-sm"><img src="https://i1.sndcdn.com/avatars-5x5MLxzXngHYJA4l-e23i2A-t500x500.jpg"
              class="img-fluid" alt="...">
          </div>
        </div>
      </div>


  </body>

  </html>
