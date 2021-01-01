import 'package:flutter/material.dart';
import 'package:signup_ui/screens/screens.dart';

class AppRoutes {
  AppRoutes._();

  static const String authLogin = '/auth-login';
  static const String authRegister = '/auth-register';
  static const String menu = '/menu';

  static Map<String, WidgetBuilder> define() {
    return {
      authLogin: (context) => LoginScreen(),
      authRegister: (context) => CreateNewAccount(),
      
     // menu: (context) => MenuScreen(),
    };
  }
}