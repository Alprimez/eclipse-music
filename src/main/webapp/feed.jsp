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
      * {
  box-sizing: border-box;
}

body {
  font-family: Arial;
  padding: 10px;
  background: #f1f1f1;
}

/* Header/Blog Title */
.header {
  padding: 30px;
  text-align: center;
  background: white;
}

.header h1 {
  font-size: 50px;
}

/* Style the top navigation bar */
.topnav {
  overflow: hidden;
  background-color: #333;
}

/* Style the topnav links */
.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/* Change color on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}

/* Create two unequal columns that floats next to each other */
/* Left column */
.leftcolumn {   
  float: left;
  width: 75%;
}

/* Right column */
.rightcolumn {
  float: left;
  width: 25%;
  background-color: #f1f1f1;
  padding-left: 20px;
}

/* Fake image */
.fakeimg {
  background-color: #aaa;
  width: 100%;
  padding: 20px;
}

/* Add a card effect for articles */
.card {
  background-color: white;
  padding: 20px;
  margin-top: 20px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Footer */
.footer {
  padding: 20px;
  text-align: center;
  background: #ddd;
  margin-top: 20px;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 800px) {
  .leftcolumn, .rightcolumn {   
    width: 100%;
    padding: 0;
  }
}

/* Responsive layout - when the screen is less than 400px wide, make the navigation links stack on top of each other instead of next to each other */
@media screen and (max-width: 400px) {
  .topnav a {
    float: none;
    width: 100%;
  }
}
    </style>
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
      <a href="authenticate.jsp" style="float:right">Login</a>
    </div>

    <h2>Eclipse Music Library</h2>

    <div class="responsive">
      <div class="gallery">
        <a target="_blank" href="https://upload.wikimedia.org/wikipedia/en/c/c0/Vince-Staples-Big-Fish-Theory.jpeg">
          <img src="https://upload.wikimedia.org/wikipedia/en/c/c0/Vince-Staples-Big-Fish-Theory.jpeg"
            alt="Big Fish Theory" width="600" height="400">
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