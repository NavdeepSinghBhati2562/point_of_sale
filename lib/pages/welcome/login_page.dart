import 'package:flutter/material.dart';
import 'package:point_of_sale/constant/constants.dart';
import 'package:point_of_sale/utils/Routes/routes.dart';
import 'package:point_of_sale/utils/size_config.dart';
import 'package:point_of_sale/utils/styles/text.dart';
import 'package:point_of_sale/utils/widgets/app_button.dart';
import 'package:point_of_sale/utils/widgets/textfield.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.only(left: 30,right: 30,top: SizeConfig.getScreenHeight(context) * 0.1),
        child: Column(
          children: [
            Image.asset('assets/icons/pos.png'),
            SizedBox(height: 10,),
            Text('Point of Sale',style: TextStyle(fontSize: SizeConfig.textMultiplier * 4.4,fontWeight: FontWeight.w600,color: textColor),),
            SizedBox(height: 20,),
            AppTextField(
              defaultValidators: [],
              placeholder: 'LOGIN METHOD',
              suffix: Icon(Icons.person_outline_rounded),
            ),
            SizedBox(height: 20,),
            AppTextField(
              defaultValidators: [],
              placeholder: 'CLIENT CODE',
              suffix: Icon(Icons.text_format),
            ),
            SizedBox(height: 20,),
            AppTextField(
              defaultValidators: [],
              placeholder: 'EMAIL',
              suffix: Icon(Icons.email_outlined),
            ),
            SizedBox(height: 20,),
            AppTextField(
              defaultValidators: [
                DefaultValidators.VALID_PASSWORD
              ],
              placeholder: 'PASSWORD',
              suffix: Icon(Icons.visibility_off),
            ),
            SizedBox(height: 20,),
            AppButton(
              text: 'SIGN IN',
              isFullWidth: true,
              onPressed: (){
                Navigator.push(context, Routes.language());
              },
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: (){},
                  child: Text('CREATE FREE ACCOUNT',style: TextStyle(color: Colors.black),),
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      horizontal: 30,vertical: 16,
                  ),
                  side: BorderSide(color: Theme.of(context).primaryColor),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
                  backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1)
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text('Remember me',style: TextStyles.subTitle,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
