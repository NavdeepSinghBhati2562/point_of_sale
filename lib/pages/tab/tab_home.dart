import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:point_of_sale/utils/Routes/routes.dart';
import 'package:point_of_sale/utils/app_localiszation.dart';
import 'package:point_of_sale/utils/size_config.dart';
import 'package:point_of_sale/utils/styles/text.dart';
import 'package:point_of_sale/utils/tabWidgets/tab_text_field.dart';
import 'package:point_of_sale/utils/widgets/app_button.dart';
import 'package:point_of_sale/utils/widgets/app_switch.dart';
import 'package:point_of_sale/utils/widgets/textfield.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:point_of_sale/utils/widgets/company_side_menu.dart';
class TabHome extends StatefulWidget {
  @override
  _TabHomeState createState() => _TabHomeState();
}

class _TabHomeState extends State<TabHome>  with SingleTickerProviderStateMixin{

  TabController _controller;
  int _selectedIndex = 0;

  List<Widget> list = [
    Tab(child: FittedBox(child: Text('EMAIL',style: TextStyle(fontSize: SizeConfig.textMultiplier * 1,fontWeight: FontWeight.w600),))),
    Tab(child: FittedBox(child: Text('PIN',style: TextStyle(fontSize: SizeConfig.textMultiplier * 1,fontWeight: FontWeight.w600)))),
    Tab(child: FittedBox(child: Text('SSO',style: TextStyle(fontSize: SizeConfig.textMultiplier * 1,fontWeight: FontWeight.w600),))),
    Tab(child: FittedBox(child: Text('GOOGLE',style: TextStyle(fontSize: SizeConfig.textMultiplier * 1,fontWeight: FontWeight.w600),))),

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
          suffix: Icon(Icons.text_format),
        ),
        TabTextField(
          defaultValidators: [],
          placeholder: 'Email',
          suffix: Icon(Icons.email_outlined),
        ),
        TabTextField(
          defaultValidators: [
            DefaultValidators.VALID_PASSWORD
          ],
          placeholder: 'Password',
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(AppLocalizations.of(context).translate('rememberMe'),style: TextStyle(fontSize: SizeConfig.textMultiplier * 1),),
            AppSwitch()
          ],
        ),
        AppButton(
          text: AppLocalizations.of(context).translate('signIn'),
          isFullWidth: true,
          fontSize: SizeConfig.textMultiplier * 1,
          onPressed: (){
            Navigator.push(context, Routes.language());

          },
        ),
        Text('Forgot Password?',style: TextStyle(color: Theme.of(context).primaryColor),)
      ],
    );
  }

  _buildPinLogin(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 25,),
        TabTextField(
          hint: 'PIN',
          defaultValidators: [
            DefaultValidators.VALID_PASSWORD
          ],
          suffix: Icon(Icons.text_format),
        ),
        SizedBox(height: 30,),
        AppButton(
          text: AppLocalizations.of(context).translate('signIn'),
          isFullWidth: true,
          fontSize: SizeConfig.textMultiplier * 1,
          onPressed: (){
          },
        ),
        SizedBox(height: 30,),
        Text('Forgot Password?',style: TextStyle(color: Theme.of(context).primaryColor),)
      ],
    );
  }

  _buildSocialLoginButton(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
          child: OutlinedButton(
              onPressed: (){},
              style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  side: BorderSide(width: 1,color: Colors.grey),
                  padding: const EdgeInsets.symmetric(vertical: 13)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/google.svg'),
                  SizedBox(width: 8,),
                  Text('Google',style: TextStyle(fontSize: SizeConfig.textMultiplier * 2,color: Theme.of(context).textTheme.bodyText1.color),)
                ],
              )
          ),
        ),
      ],
    );
  }


  _buildSSOLogin(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 25,),
        TabTextField(
          placeholder: 'ACCOUNT NUMBER',
          defaultValidators: [
          ],
          suffix: Icon(Icons.text_format),
        ),
        SizedBox(height: 30,),
        AppButton(
          text: AppLocalizations.of(context).translate('signIn'),
          isFullWidth: true,
          fontSize: SizeConfig.textMultiplier * 1,
          onPressed: (){
          },
        ),
        SizedBox(height: 30,),
        Text('Forgot Account Number?',style: TextStyle(color: Theme.of(context).primaryColor),)
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
            CompanySideMenu(showSignUp: true,),
            Container(
              height: SizeConfig.getScreenHeight(context),
              width: SizeConfig.getScreenWidth(context) * 0.67,
              alignment: Alignment.center,
              child: Container(
                width: MediaQuery.of(context).orientation == Orientation.portrait ? SizeConfig.getScreenWidth(context) * 0.45 : SizeConfig.getScreenWidth(context) * 0.30,
                height: SizeConfig.getScreenHeight(context),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                          _buildPinLogin(),
                          _buildSSOLogin(),
                          _buildSocialLoginButton(),

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
