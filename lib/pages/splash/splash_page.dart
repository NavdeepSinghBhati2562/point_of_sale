import 'package:flutter/material.dart';
import 'package:point_of_sale/utils/Routes/routes.dart';
import 'package:point_of_sale/utils/size_config.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      Duration(milliseconds: 2000),
          () {
            var shortestSide = MediaQuery.of(context).size.shortestSide;
            print(shortestSide);
            SizeConfig.setScreenType(context);
            if(shortestSide<600){
              Navigator.pushReplacement(context, Routes.login());
            }else{
              Navigator.pushReplacement(context, Routes.tabHome());
            }
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: SizeConfig.getScreenWidth(context),
          height: SizeConfig.getScreenHeight(context),
          color: Color(0xFFF9F9F9),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/erplyLogo.png'),
              SizedBox(height: 40,),
              Image.asset('assets/images/erplyPcLogo.png')
            ],
          ),
        ),
      ),
    );
  }
}
