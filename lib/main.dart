import 'package:flutter/material.dart';
import 'package:point_of_sale/constant/constants.dart';
import 'package:point_of_sale/pages/welcome/login_page.dart';
import 'package:point_of_sale/utils/size_config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              themeMode: ThemeMode.light,
              theme: ThemeData(
                  primaryColor: themeColor,
                  fontFamily: 'Noto',
                  backgroundColor: Colors.white,
                  scaffoldBackgroundColor: Colors.white,
              ),
              home: LoginPage(),
              title: 'Hallo',
            );
          },
        );
      },
    );
  }
}

