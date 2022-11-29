<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>

<head>
  <style>
    div.gallery {
      border: 1px solid #ccc;
    }

    div.gallery:hover {
      border: 1px solid #777;
    }

    div.gallery img {
      width: 100%;
      height: auto;
    }

    div.desc {
      padding: 15px;
      text-align: center;
    }

    * {
      box-sizing: border-box;
    }

    .responsive {
      padding: 0 6px;
      float: left;
      width: 24.99999%;
    }

    @media only screen and (max-width: 700px) {
      .responsive {
        width: 49.99999%;
        margin: 6px 0;
      }
    }

    @media only screen and (max-width: 500px) {
      .responsive {
        width: 100%;
      }
    }

    .clearfix:after {
      content: "";
      display: table;
      clear: both;
    }
  </style>
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
              <a class="nav-link" aria-current="page" href="feed.jsp">Music Feed</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="authenticate.jsp">Login</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  
    <h2>Eclipse Music Library</h2>
  
    <div class="responsive">
      <div class="gallery">
        <a target="_blank" href="https://upload.wikimedia.org/wikipedia/en/c/c0/Vince-Staples-Big-Fish-Theory.jpeg">
          <img src="https://upload.wikimedia.org/wikipedia/en/c/c0/Vince-Staples-Big-Fish-Theory.jpeg" alt="Big Fish Theory" width="600" height="400">
        </a>
        <div class="desc">Big Fish Theory, Vince Staples</div>
      </div>
    </div>
  
  
    <div class="responsive">
      <div class="gallery">
        <a target="_blank" href="img_forest.jpg">
          <img src="img_forest.jpg" alt="Forest" width="600" height="400">
        </a>
        <div class="desc">Add a description of the image here</div>
      </div>
    </div>
  
    <div class="responsive">
      <div class="gallery">
        <a target="_blank" href="img_lights.jpg">
          <img src="img_lights.jpg" alt="Northern Lights" width="600" height="400">
        </a>
        <div class="desc">Add a description of the image here</div>
      </div>
    </div>
  
    <div class="responsive">
      <div class="gallery">
        <a target="_blank" href="img_mountains.jpg">
          <img src="img_mountains.jpg" alt="Mountains" width="600" height="400">
        </a>
        <div class="desc">Add a description of the image here</div>
      </div>
    </div>

  </body>
  
  </html>
  
  <!DOCTYPE html>
  <html lang="en">
  
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>eclipse</title>
  </head>
  
  
  </html>