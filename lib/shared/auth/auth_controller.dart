import 'package:flutter/material.dart';

class AuthController {
  var isAuthenticated = false;
  var _user;

  get user => _user;

  void setUser(BuildContext context,var user) {
    if(user != null) {
      _user = user;
      isAuthenticated = true;
      Navigator.pushReplacementNamed(
        context, '/home'
      );
    } else {
      isAuthenticated = false;
      Navigator.pushReplacementNamed(
        context, '/login'
      );
    }
  }
}