package com.eclipsemusic;

import java.util.ArrayList;
import java.util.List;

public class UserCollection {
  private List<User> allUsers = new ArrayList<User>();

  public UserCollection() {
    User user1 = new User(
      "john",
      "john@gmail.com",
      "johnpass"
    );
    User user2 = new User(
      "ben",
      "ben@gmail.com",
      "benpass"
    );
    allUsers.add(user1);
    allUsers.add(user2);
  }

  public User getUser(int num) {
    return allUsers.get(num);
  }
}
