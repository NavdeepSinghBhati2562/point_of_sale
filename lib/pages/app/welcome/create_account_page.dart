import 'package:flutter/material.dart';
import 'package:point_of_sale/utils/Routes/routes.dart';
import 'package:point_of_sale/utils/app_localiszation.dart';
import 'package:point_of_sale/utils/size_config.dart';
import 'package:point_of_sale/utils/styles/text.dart';
import 'package:point_of_sale/utils/widgets/app_button.dart';
import 'package:point_of_sale/utils/widgets/my_app_bar.dart';
import 'package:point_of_sale/utils/widgets/textfield.dart';
import 'package:point_of_sale/utils/widgets/company_side_menu.dart';
import 'package:point_of_sale/utils/widgets/company_side_menu.dart';

class CreateAccountPage extends StatefulWidget {
  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: AppLocalizations.of(context).translate('back'),
      ),
      body: Row(
        children: [
          SizeConfig.isTab ? CompanySideMenu() : SizedBox(),

          Container(
            padding: EdgeInsets.symmetric(horizontal:  SizeConfig.isTab ? SizeConfig.getScreenWidth(context) * 0.1 : 30,vertical: 20),
            width: SizeConfig.isTab ? SizeConfig.getScreenWidth(context) * 0.67 : SizeConfig.getScreenWidth(context),
            child: Column(
              children: [
                Text('Create you Secure Password',textAlign: TextAlign.center,style: TextStyles.pageHeading,),
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
                  // suffix: Icon(Icons.email_outlined),
                ),
                SizedBox(height: 20,),
                AppTextField(
                  defaultValidators: [
                    DefaultValidators.VALID_PASSWORD
                  ],
                  placeholder: 'CONFIRM PASSWORD',
                  // suffix: Icon(Icons.email_outlined),
                ),
                SizedBox(height: 40,),
                AppButton(text: 'NEXT', onPressed: (){
                  Navigator.push(context, Routes.confirmInfo());
                },isFullWidth: true,)


              ],
            ),
          ),
        ],
      ),
    );
  }
}
