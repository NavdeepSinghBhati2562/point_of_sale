import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:point_of_sale/utils/Routes/routes.dart';
import 'package:point_of_sale/utils/app_localiszation.dart';
import 'package:point_of_sale/utils/size_config.dart';
import 'package:point_of_sale/utils/styles/text.dart';
import 'package:point_of_sale/utils/widgets/app_button.dart';
import 'package:point_of_sale/utils/widgets/my_app_bar.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_code_picker/country_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:point_of_sale/utils/widgets/company_side_menu.dart';

class BusinessLocationPage extends StatefulWidget {
  @override
  _BusinessLocationPageState createState() => _BusinessLocationPageState();
}

class _BusinessLocationPageState extends State<BusinessLocationPage> {



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
            padding: EdgeInsets.symmetric(horizontal: SizeConfig.isTab ? SizeConfig.getScreenWidth(context) * 0.1 :  30,vertical: 20),
            width: SizeConfig.isTab ? SizeConfig.getScreenWidth(context) * 0.67 : SizeConfig.getScreenWidth(context),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(AppLocalizations.of(context).translate('whereIsYourBusiness'),style: TextStyles.pageHeading,),
                    SizedBox(height: 20,),
                    Container(
                      width: SizeConfig.getScreenWidth(context),
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                      ),
                      child: CountryCodePicker(
                        onChanged: (val){
                        },
                        initialSelection: 'EE',
                        favorite: ['+372','EE'],
                        showCountryOnly: false,
                        showOnlyCountryWhenClosed: true,
                        alignLeft: true,
                        closeIcon: Icon(Icons.close),
                      ),
                    )
                  ],
                ),
                AppButton(
                  text: AppLocalizations.of(context).translate('next'),
                  isFullWidth: true,
                  onPressed: (){
                    Navigator.push(context, Routes.companyDetails());
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
