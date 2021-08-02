import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:point_of_sale/utils/app_localiszation.dart';
import 'package:point_of_sale/utils/size_config.dart';
import 'package:point_of_sale/utils/styles/text.dart';
import 'package:point_of_sale/utils/tabWidgets/tab_text_field.dart';
import 'package:point_of_sale/utils/widgets/app_button.dart';
import 'package:point_of_sale/utils/widgets/app_switch.dart';
class TabHome extends StatefulWidget {
  @override
  _TabHomeState createState() => _TabHomeState();
}

class _TabHomeState extends State<TabHome>  with SingleTickerProviderStateMixin{

  TabController _controller;
  int _selectedIndex = 0;

  List<Widget> list = [
    Tab(child: Text('EMAIL',style: TextStyle(fontSize: SizeConfig.textMultiplier * 0.8,fontWeight: FontWeight.w600),)),
    Tab(child: Text('PIN',style: TextStyle(fontSize: SizeConfig.textMultiplier * 0.8,fontWeight: FontWeight.w600))),
    Tab(child: Text('SSO',style: TextStyle(fontSize: SizeConfig.textMultiplier * 0.8,fontWeight: FontWeight.w600),)),
    Tab(child: Text('GOOGLE',style: TextStyle(fontSize: SizeConfig.textMultiplier * 0.8,fontWeight: FontWeight.w600),)),

  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: list.length, vsync: this);
    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
      print("Selected Index: " + _controller.index.toString());
    });
  }

  _buildEmailLogin(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround  ,
      children: [
        TabTextField(
          defaultValidators: [],
          placeholder: 'Client Code',
        ),
        TabTextField(
          defaultValidators: [],
          placeholder: 'Email',
        ),
        TabTextField(
          defaultValidators: [],
          placeholder: 'Password',
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(AppLocalizations.of(context).translate('rememberMe'),style: TextStyle(fontSize: SizeConfig.textMultiplier * 0.8),),
            AppSwitch()
          ],
        ),
        AppButton(
          text: AppLocalizations.of(context).translate('signIn'),
          isFullWidth: true,
          fontSize: SizeConfig.textMultiplier * 1,
          onPressed: (){
          },
        ),
        Text('Forgot Password?',style: TextStyle(color: Theme.of(context).primaryColor),)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: SizeConfig.getScreenWidth(context),
        height: SizeConfig.getScreenHeight(context),
        child: Row(
          children: [
            Container(
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account? ",style: TextStyle(fontSize: SizeConfig.textMultiplier * 1.2),),
                            Text('Sign up for free',style: TextStyle(fontSize: SizeConfig.textMultiplier * 1.2,color: Theme.of(context).primaryColor),)
                          ],
                        ),
                      ],
                    ),
                    Image.asset('assets/images/erplyPcLogo.png'),
                    Text('v1.1.121+212',)
                  ],
                ),
              ),
            ),
            Container(
              height: SizeConfig.getScreenHeight(context),
              width: SizeConfig.getScreenWidth(context) * 0.67,
              alignment: Alignment.center,
              child: Container(
                width: SizeConfig.getScreenWidth(context) * 0.25,
                height: SizeConfig.getScreenHeight(context) * 0.6,
                child: Column(
                  children: [
                    Container(
                        height: SizeConfig.getScreenHeight(context) * 0.03,
                        child: FittedBox(child: Text('Login with',style: TextStyle(fontWeight: FontWeight.w500),))),
                    SizedBox(height: 10,),
                    Container(
                      width: SizeConfig.getScreenWidth(context),
                      height: SizeConfig.getScreenHeight(context) * 0.06,
                      child: TabBar(
                        controller: _controller,
                        tabs: list,
                        labelColor: Colors.black,
                        unselectedLabelColor: Theme.of(context).primaryColor,
                        indicatorColor: Theme.of(context).dividerColor,
                      ),
                    ),
                    Container(
                      height: SizeConfig.getScreenHeight(context) * 0.45 ,
                      child: TabBarView(
                        controller: _controller,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          _buildEmailLogin(),
                          Container(),
                          Container(),
                          Container(),

                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
