import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:point_of_sale/utils/Routes/routes.dart';
import 'package:point_of_sale/utils/size_config.dart';
import 'package:point_of_sale/utils/styles/text.dart';
import 'package:point_of_sale/utils/widgets/app_button.dart';
import 'package:point_of_sale/utils/widgets/my_app_bar.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_code_picker/country_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class BusinessLocationPage extends StatefulWidget {
  @override
  _BusinessLocationPageState createState() => _BusinessLocationPageState();
}

class _BusinessLocationPageState extends State<BusinessLocationPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'Back',
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
        width: SizeConfig.getScreenWidth(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text('Where is your business?',style: TextStyles.pageHeading,),
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
                    initialSelection: 'IN',
                    favorite: ['+91','IN'],
                    showCountryOnly: false,
                    showOnlyCountryWhenClosed: true,
                    alignLeft: true,
                    closeIcon: Icon(Icons.close),
                  ),
                )
              ],
            ),
            AppButton(
              text: 'NEXT',
              isFullWidth: true,
              onPressed: (){
                Navigator.push(context, Routes.companyDetails());
              },
            )
          ],
        ),
      ),
    );
  }
}
