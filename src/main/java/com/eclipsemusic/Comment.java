package com.eclipsemusic;

public class Comment {
  public String comment;
  public String user;
  public int songId;

  public Comment() {

  }

  public Comment(String comment, String user, int songId) {
    this.comment = comment;
    this.user = user;
    this.songId = songId;
  }

  public String getComment() { return comment; }
  public String getUser() { return user; }
  public int getSongId() { return songId; }

  public void setComment(String comment) { this.comment = comment; }
  public void setUser(String user) { this.user = user; }
  public void setSongId(int songId) { this.songId = songId; }

}
