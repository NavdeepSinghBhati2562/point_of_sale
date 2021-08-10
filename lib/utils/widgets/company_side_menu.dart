import 'package:flutter/material.dart';
import 'package:point_of_sale/utils/Routes/routes.dart';
import 'package:point_of_sale/utils/size_config.dart';

class CompanySideMenu extends StatefulWidget {
  final bool showSignUp;
  CompanySideMenu({this.showSignUp = false});
  @override
  _CompanySideMenuState createState() => _CompanySideMenuState();
}

class _CompanySideMenuState extends State<CompanySideMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.getScreenHeight(context),
      width: SizeConfig.getScreenWidth(context) * 0.33,
      color: Color(0xFFF9F9F9),
      child: Padding(
        padding: EdgeInsets.only(top: SizeConfig.getScreenHeight(context) * 0.05,left: 35,right: 35,bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Image.asset('assets/images/erplyLogo.png'),
                SizedBox(height: 24,),
                widget.showSignUp ? Wrap(
                  alignment:WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text("Don't have an account? ",style: TextStyle(fontSize: SizeConfig.textMultiplier * 1.2),),
                    TextButton(
                        onPressed: (){
                          Navigator.push(context, Routes.language());
                        },
                        child: Text('Sign up for free',style: TextStyle(fontSize: SizeConfig.textMultiplier * 1.2,color: Theme.of(context).primaryColor),))
                  ],
                ) : SizedBox(),
              ],
            ),
            Image.asset('assets/images/erplyPcLogo.png'),
            Text('v1.1.121+212',)
          ],
        ),
      ),
    );
  }
}
