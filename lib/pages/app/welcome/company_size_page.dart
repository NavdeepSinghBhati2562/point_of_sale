import 'package:flutter/material.dart';
import 'package:point_of_sale/utils/Routes/routes.dart';
import 'package:point_of_sale/utils/app_localiszation.dart';
import 'package:point_of_sale/utils/size_config.dart';
import 'package:point_of_sale/utils/styles/text.dart';
import 'package:point_of_sale/utils/widgets/app_button.dart';
import 'package:point_of_sale/utils/widgets/my_app_bar.dart';
import 'package:point_of_sale/utils/widgets/textfield.dart';

class CompanySizePage extends StatefulWidget {
  @override
  _CompanySizePageState createState() => _CompanySizePageState();
}

class _CompanySizePageState extends State<CompanySizePage> {
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
                Text('How big is your company is?',style: TextStyles.pageHeading,),
                SizedBox(height: 30,),
                Column(
                  children: [
                    AppTextField(
                      defaultValidators: [],
                      placeholder: 'NR OF LOCATION',
                    ),
                    SizedBox(height: 20,),
                    AppTextField(
                      defaultValidators: [],
                      placeholder: 'NR OF CASH REGISTERS',
                    ),
                    SizedBox(height: 20,),
                    AppTextField(
                      defaultValidators: [],
                      placeholder: 'NR OF SYSTEM USER',
                    ),
                    SizedBox(height: 20,),
                    AppTextField(
                      defaultValidators: [],
                      placeholder: 'NR OF PRODUCTS',
                    ),
                    SizedBox(height: 20,),
                  ],
                ),

              ],
            ),
            AppButton(
              text: 'NEXT',
              isFullWidth: true,
              onPressed: (){
                Navigator.push(context, Routes.softwarePreference());
              },
            )
          ],
        ),
      ),
    );
  }
}
