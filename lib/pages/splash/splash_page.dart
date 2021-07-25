import 'package:flutter/material.dart';
import 'package:point_of_sale/utils/Routes/routes.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      Duration(milliseconds: 1500),
          () {
        Navigator.pushReplacement(context, Routes.login());
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Splash'),
      ),
    );
  }
}
