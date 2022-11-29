<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8">
    <title>Eclipse Music</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href='https://fonts.googleapis.com/css?family=Roboto:300,400,600' rel='stylesheet' type='text/css'>
    <link href="/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="css/authentication.css">

  </head>

  <header class="p-3 bg-dark text-white">
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
          <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
        </a>

        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
          <li><a href="#" class="nav-link px-2 text-secondary">Home</a></li>
          <li><a href="#" class="nav-link px-2 text-white">Features</a></li>
          <li><a href="#" class="nav-link px-2 text-white">Pricing</a></li>
          <li><a href="#" class="nav-link px-2 text-white">FAQs</a></li>
          <li><a href="#" class="nav-link px-2 text-white">About</a></li>
        </ul>

        <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
          <input type="search" class="form-control form-control-dark" placeholder="Search..." aria-label="Search">
        </form>

        <div class="text-end">
          <button type="button" class="btn btn-outline-light me-2">Login</button>
          <button type="button" class="btn btn-warning">Sign-up</button>
        </div>
      </div>
    </div>
  </header>

  <body>
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
            <form id="form-signup" method="post" onsubmit="return false;">
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
                <button id="signUp" class="signup" type="submit" name="signup">Sign up</button>
                <button id="goLeft" class="signup off">Log In</button>
              </div>
            </form>
          </div>
        </div>
        <div class="right">
          <div class="content">
            <h2>Login</h2>
            <form id="form-login" method="post" onsubmit="return false;">
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