import 'package:flutter/material.dart';
import 'package:point_of_sale/utils/Routes/routes.dart';
import 'package:point_of_sale/utils/app_localiszation.dart';
import 'package:point_of_sale/utils/size_config.dart';
import 'package:point_of_sale/utils/styles/text.dart';
import 'package:point_of_sale/utils/widgets/app_button.dart';
import 'package:point_of_sale/utils/widgets/my_app_bar.dart';
import 'package:point_of_sale/utils/widgets/textfield.dart';

class ContactDetailPage extends StatefulWidget {
  @override
  _ContactDetailPageState createState() => _ContactDetailPageState();
}

class _ContactDetailPageState extends State<ContactDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: MyAppBar(
        title: AppLocalizations.of(context).translate('back'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
        width: SizeConfig.getScreenWidth(context),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(AppLocalizations.of(context).translate('enterYourContactDetails'),style: TextStyles.pageHeading,),
                SizedBox(height: 30,),
                Column(
                  children: [
                    AppTextField(
                      defaultValidators: [],
                      placeholder: AppLocalizations.of(context).translate('firstName'),
                    ),
                    SizedBox(height: 20,),
                    AppTextField(
                      defaultValidators: [],
                      placeholder: AppLocalizations.of(context).translate('lastName'),
                    ),
                    SizedBox(height: 20,),
                    AppTextField(
                      defaultValidators: [],
                      placeholder: AppLocalizations.of(context).translate('email'),
                    ),
                    SizedBox(height: 20,),
                    AppTextField(
                      defaultValidators: [],
                      placeholder: AppLocalizations.of(context).translate('phone'),
                    ),
                    SizedBox(height: 20,),
                    AppTextField(
                      defaultValidators: [],
                      placeholder: AppLocalizations.of(context).translate('role'),
                    ),
                    SizedBox(height: 20,),
                  ],
                ),

              ],
            ),
            AppButton(
              text: AppLocalizations.of(context).translate('next'),
              isFullWidth: true,
              onPressed: (){
                Navigator.push(context, Routes.companySize());
              },
            )
          ],
        ),
      ),
    );
  }
}
