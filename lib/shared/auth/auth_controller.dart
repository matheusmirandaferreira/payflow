import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  Future<void> saveUser(var user) async {
    final instance = await SharedPreferences.getInstance();
    await instance.setString('user', user);
    return;
  }

  Future<void> currentUser(BuildContext context) async {
    final instance = await SharedPreferences.getInstance();
    final user = instance.getString('user');

    setUser(context, user);
    return;
  }
}