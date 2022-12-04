package com.eclipsemusic;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CommentCollection {
  private List<Comment> allComments = new ArrayList<Comment>();

  public CommentCollection() {
    Comment comment1 = new Comment(
      "Good song",
      "john",
      1
    );
    Comment comment2 = new Comment(
      "Not bad",
      "ben",
      1
    );
    allComments.add(comment1);
    allComments.add(comment2);
  }

  public List<Comment> getComments(int songId) {
    List<Comment> specified = new ArrayList<Comment>();
    Iterator<Comment> iterator = allComments.iterator();
    while(iterator.hasNext()) {
      Comment comment = iterator.next();
      if (comment.songId == songId) {
        specified.add(comment);
      }
    }
    return specified;
  }

  public void addComment(String comment, String username, int songId) {
    Comment userComment = new Comment(
      comment,
      username,
      songId
    );
    allComments.add(userComment);
  }
}
