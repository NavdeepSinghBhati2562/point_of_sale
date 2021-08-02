import 'package:flutter/material.dart';
import 'package:point_of_sale/constant/constants.dart';
import 'package:point_of_sale/main.dart';
import 'package:point_of_sale/provider/langProvider.dart';
import 'package:point_of_sale/utils/Routes/routes.dart';
import 'package:point_of_sale/utils/app_localiszation.dart';
import 'package:point_of_sale/utils/size_config.dart';
import 'package:point_of_sale/utils/styles/text.dart';
import 'package:point_of_sale/utils/widgets/app_button.dart';
import 'package:point_of_sale/utils/widgets/app_switch.dart';
import 'package:point_of_sale/utils/widgets/textfield.dart';
import 'package:provider/provider.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    var appLanguage = Provider.of<AppLanguage>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.only(left: 30,right: 30,top: SizeConfig.getScreenHeight(context) * 0.1),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('assets/icons/pos.png'),
                SizedBox(height: 10,),
                Text(AppLocalizations.of(context).translate('pointOfSale'),style: TextStyle(fontSize: SizeConfig.textMultiplier * 4.4,fontWeight: FontWeight.w600,color: textColor),),
                SizedBox(height: 20,),
                AppTextField(
                  defaultValidators: [
                    DefaultValidators.REQUIRED
                  ],
                  placeholder: AppLocalizations.of(context).translate('loginMethod'),
                  suffix: Icon(Icons.person_outline_rounded),
                ),
                SizedBox(height: 20,),
                AppTextField(
                  defaultValidators: [
                    DefaultValidators.REQUIRED
                  ],
                  placeholder: AppLocalizations.of(context).translate('clientCode'),
                  suffix: Icon(Icons.text_format),
                ),
                SizedBox(height: 20,),
                AppTextField(
                  defaultValidators: [
                    DefaultValidators.VALID_EMAIL
                  ],
                  placeholder: AppLocalizations.of(context).translate('email'),
                  suffix: Icon(Icons.email_outlined),
                ),
                SizedBox(height: 20,),
                AppTextField(
                  defaultValidators: [
                    DefaultValidators.VALID_PASSWORD
                  ],
                  placeholder: AppLocalizations.of(context).translate('password'),
                  suffix: Icon(Icons.visibility_off),
                ),
                SizedBox(height: 20,),
                AppButton(
                  text: AppLocalizations.of(context).translate('signIn'),
                  isFullWidth: true,
                  onPressed: (){
                    if (!_formKey.currentState.validate()) return;
                    _formKey.currentState.save();
                  },
                ),
                SizedBox(height: 20,),
                Container(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: (){
                        Navigator.push(context, Routes.language());
                      },
                      child: Text(AppLocalizations.of(context).translate('createFreeAccount'),style: TextStyle(color: Colors.black,fontSize: SizeConfig.textMultiplier * 2),),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppLocalizations.of(context).translate('rememberMe'),style: TextStyles.subTitle,),
                    AppSwitch()
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
