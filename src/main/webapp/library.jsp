<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="ISO-8859-1">
    <title>Library</title>
  </head>

  <body>
    <div style="display:flex; gap: 1rem">

      <div class="music-container">
        <div class="album-cover-container">
          <!-- <img src="" alt=""> -->
        </div>
        <div class="h2">Title</div>
        <div class="h4">Artist</div>
      </div>
      <div class="music-container">
        <div class="album-cover-container">
          <!-- <img src="" alt=""> -->
        </div>
        <div class="h2">Title</div>
        <div class="h4">Artist</div>
      </div>
      <div class="music-container">
        <div class="album-cover-container">
          <!-- <img src="" alt=""> -->
        </div>
        <div class="h2">Title</div>
        <div class="h4">Artist</div>
      </div>

    </div>


    <style>
      .music-container {
        background: rgb(224, 224, 224);
        border-radius: 1rem;
        height: 300px;
        width: 240px;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
      }
      .album-cover-container {
        background:rgb(124, 124, 124);
        height: 200px; 
        width: 200px;
      }
    </style>
  </body>

  </html>
