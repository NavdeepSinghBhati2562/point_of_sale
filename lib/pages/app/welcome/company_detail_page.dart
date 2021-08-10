import 'package:flutter/material.dart';
import 'package:point_of_sale/utils/Routes/routes.dart';
import 'package:point_of_sale/utils/app_localiszation.dart';
import 'package:point_of_sale/utils/size_config.dart';
import 'package:point_of_sale/utils/styles/text.dart';
import 'package:point_of_sale/utils/widgets/app_button.dart';
import 'package:point_of_sale/utils/widgets/my_app_bar.dart';
import 'package:point_of_sale/utils/widgets/textfield.dart';
import 'package:point_of_sale/utils/widgets/company_side_menu.dart';

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
        title: AppLocalizations.of(context).translate('back'),
      ),
      body: Row(
        children: [
          SizeConfig.isTab ? CompanySideMenu() : SizedBox(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: SizeConfig.isTab ? SizeConfig.getScreenWidth(context) * 0.1 :   30,vertical: 20),
            width: SizeConfig.isTab ? SizeConfig.getScreenWidth(context) * 0.67 : SizeConfig.getScreenWidth(context),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(AppLocalizations.of(context).translate('enterYourCompanyDetails'),style: TextStyles.pageHeading,),
                    SizedBox(height: 30,),
                    Column(
                      children: [
                        AppTextField(
                          defaultValidators: [],
                          placeholder: AppLocalizations.of(context).translate('companyName'),
                        ),
                        SizedBox(height: 20,),
                        AppTextField(
                          defaultValidators: [],
                          placeholder: '${AppLocalizations.of(context).translate('addressLine')} 1',
                        ),
                        SizedBox(height: 20,),
                        AppTextField(
                          defaultValidators: [],
                          placeholder: '${AppLocalizations.of(context).translate('addressLine')} 2',
                        ),
                        SizedBox(height: 20,),
                        AppTextField(
                          defaultValidators: [],
                          placeholder: AppLocalizations.of(context).translate('postCode'),
                        ),
                        SizedBox(height: 20,),
                        AppTextField(
                          defaultValidators: [],
                          placeholder: AppLocalizations.of(context).translate('regCode'),
                        ),
                        SizedBox(height: 20,),
                        AppTextField(
                          defaultValidators: [],
                          placeholder: AppLocalizations.of(context).translate('vatNumber'),
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
                    Navigator.push(context, Routes.contactDetail());
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
