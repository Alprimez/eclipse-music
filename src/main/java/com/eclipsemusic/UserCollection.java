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

  public User getUser(String username) {
    User userFound = null;
    for (User user : allUsers) {
      if (user.username.equals(username)) {
        userFound = user;
      };
    }
    return userFound;
    // return allUsers.get(num);
  }

  public void addUser(String username, String email, String password) {
    User user = new User(username, email, password);
    allUsers.add(user);
  }

  public List<User> getAllUsers() {
    return allUsers;
  }
}
