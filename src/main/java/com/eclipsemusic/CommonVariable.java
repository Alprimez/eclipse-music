package com.eclipsemusic;

public class CommonVariable {
  private static UserCollection userCol = new UserCollection();

  public static UserCollection userCollection() {
    return userCol;
  }
}
