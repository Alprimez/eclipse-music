<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8">
    <title>Eclipse Music</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href='https://fonts.googleapis.com/css?family=Roboto:300,400,600' rel='stylesheet' type='text/css'>
    <!-- <link href="/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> -->
    <link rel="stylesheet" href="css/authentication.css">

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
              <a class="nav-link active" href="index.html">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="feed.jsp">Music Feed</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="authenticate.jsp">Login</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- partial:index.partial.html -->
    <div id="back">
      <canvas id="canvas" class="canvas-back"></canvas>
      <div class="backRight">
      </div>
      <div class="backLeft">
      </div>
    </div>
    <div id="slideBox">
      <div class="topLayer">
        <div class="left">
          <div class="content">
            <h2>Sign Up</h2>
            <form id="form-signup" action="RegisterServlet">
              <div class="form-element form-stack">
                <label for="email" class="form-label">Email</label>
                <input id="email" type="email" name="email">
              </div>
              <div class="form-element form-stack">
                <label for="username-signup" class="form-label">Username</label>
                <input id="username-signup" type="text" name="username">
              </div>
              <div class="form-element form-stack">
                <label for="password-signup" class="form-label">Password</label>
                <input id="password-signup" type="password" name="password">
              </div>
              <div class="form-element form-checkbox">
                <input id="confirm-terms" type="checkbox" name="confirm" value="yes" class="checkbox">
                <label for="confirm-terms">I agree to the <a href="#">Terms of Service</a> and <a href="#">Privacy
                    Policy</a></label>
              </div>
              <div class="form-element form-submit">
                <button id="signUp" class="signup" value="Register" type="submit" name="signup">Sign up</button>
                <button id="goLeft" class="signup off">Log In</button>
              </div>
            </form>
          </div>
        </div>
        <div class="right">
          <div class="content">
            <h2>Login</h2>
            <% 
            String result = (String)request.getAttribute("inputResult");
            if (result == null) {
              result = "";
            }
            %>
            <div><%=result %></div>
            <form id="form-login" method="post" action="login">
              <div class="form-element form-stack">
                <label for="username-login" class="form-label">Username</label>
                <input id="username-login" type="text" name="username">
              </div>
              <div class="form-element form-stack">
                <label for="password-login" class="form-label">Password</label>
                <input id="password-login" type="password" name="password">
              </div>
              <div class="form-element form-submit">
                <button id="logIn" class="login" type="submit" name="login">Log In</button>
                <button id="goRight" class="login off" name="signup">Sign Up</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/paper.js/0.11.3/paper-full.min.js'></script>
    <script src="javascript/authentication.js"></script>

  </body>

  </html>
