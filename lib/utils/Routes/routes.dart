import 'package:flutter/material.dart';
import 'package:point_of_sale/pages/splash/splash_page.dart';
import 'package:point_of_sale/pages/welcome/login_page.dart';

class Routes {
  static MaterialPageRoute _makeRoute(Widget page) =>
      MaterialPageRoute(
        builder: (context) => page,
      );
  static MaterialPageRoute splash() => _makeRoute(SplashPage());

  static MaterialPageRoute login() => _makeRoute(LoginPage());


}