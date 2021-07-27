import 'package:flutter/material.dart';
import 'package:point_of_sale/utils/Routes/routes.dart';
import 'package:point_of_sale/utils/size_config.dart';
import 'package:point_of_sale/utils/styles/text.dart';
import 'package:point_of_sale/utils/widgets/app_button.dart';
import 'package:point_of_sale/utils/widgets/my_app_bar.dart';
import 'package:point_of_sale/utils/widgets/textfield.dart';

class CompanyDetailPage extends StatefulWidget {
  @override
  _CompanyDetailPageState createState() => _CompanyDetailPageState();
}

class _CompanyDetailPageState extends State<CompanyDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: MyAppBar(
        title: 'Back',
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
        width: SizeConfig.getScreenWidth(context),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text('Enter your Company details',style: TextStyles.pageHeading,),
                SizedBox(height: 30,),
                Column(
                  children: [
                    AppTextField(
                      defaultValidators: [],
                      placeholder: 'COMPANY NAME',
                    ),
                    SizedBox(height: 20,),
                    AppTextField(
                      defaultValidators: [],
                      placeholder: 'ADDRESS LINE 1',
                    ),
                    SizedBox(height: 20,),
                    AppTextField(
                      defaultValidators: [],
                      placeholder: 'ADDRESS LINE 2',
                    ),
                    SizedBox(height: 20,),
                    AppTextField(
                      defaultValidators: [],
                      placeholder: 'POST CODE',
                    ),
                    SizedBox(height: 20,),
                    AppTextField(
                      defaultValidators: [],
                      placeholder: 'Reg. Code',
                    ),
                    SizedBox(height: 20,),
                    AppTextField(
                      defaultValidators: [],
                      placeholder: 'VAT NUMBER',
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
                Navigator.push(context, Routes.contactDetail());
              },
            )
          ],
        ),
      ),
    );
  }
}
