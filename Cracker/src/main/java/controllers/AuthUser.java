package controllers;

import model.User;

public class AuthUser {
   User user;
   String  ErrorText  = "";
   boolean  LoginFlag = false;

    public AuthUser(User user) {
        this.user = user;
    }

    public void Login()
  {
    LoginFlag = true;
    ErrorText = "";

  }
   
    public User getUser() {
        return user;
    }

    public String getErrorText() {
        return ErrorText;
    }
    public void setErrorText(String ErrorText) {
        this.ErrorText = ErrorText;
    }

    public boolean isLoginFlag() {
        return LoginFlag;
    }

   
}
