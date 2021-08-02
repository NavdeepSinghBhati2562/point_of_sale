import 'package:flutter/material.dart';
import 'package:point_of_sale/constant/constants.dart';
import 'package:point_of_sale/provider/langProvider.dart';
import 'package:point_of_sale/utils/Routes/routes.dart';
import 'package:point_of_sale/utils/app_localiszation.dart';
import 'package:point_of_sale/utils/size_config.dart';
import 'package:point_of_sale/utils/widgets/app_button.dart';
import 'package:provider/provider.dart';
class LanguagePage extends StatefulWidget {
  @override
  _LanguagePageState createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {

  List<String> _languages = [
    'Deutsche',
    'Eesti',
    'English',
    'Espanola',
    'Francias'
  ];

  String _selectedLang = 'English';

  @override
  Widget build(BuildContext context) {
    var appLanguage = Provider.of<AppLanguage>(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: SizeConfig.getScreenWidth(context),
            padding: EdgeInsets.only(left: 30,right: 30,top: SizeConfig.getScreenHeight(context) * 0.1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/icons/pos.png'),
                SizedBox(height: 10,),
                Text(AppLocalizations.of(context).translate('pointOfSale'),style: TextStyle(fontSize: SizeConfig.textMultiplier * 4.4,fontWeight: FontWeight.w600,color: textColor),),
                SizedBox(height: 20,),
                Text(AppLocalizations.of(context).translate('createYourAccount...'),textAlign: TextAlign.center,style: TextStyle(fontSize: SizeConfig.textMultiplier * 3),),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: SizeConfig.getScreenWidth(context),
                  child: DropdownButton<String>(
                    value: _selectedLang,
                    underline: SizedBox(),
                    isExpanded: true,
                    items: _languages.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    onChanged: (val) {
                      setState(() {
                        _selectedLang = val;

                      });
                    },
                  ),
                ),
                SizedBox(height: 20,),
                AppButton(text: 'GET STARTED', onPressed: (){
                  Navigator.push(context, Routes.businessLocation());
                  if(_selectedLang =='Eesti'){
                    appLanguage.changeLanguage(Locale("et"));
                  }else if(_selectedLang =='English'){
                    appLanguage.changeLanguage(Locale("en"));
                  }
                },isFullWidth: true,),
                SizedBox(height: 30,),

              ],
            ),
          ),
          Container(
            width: SizeConfig.getScreenWidth(context),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assets/images/pos_screen.png'),
                SizedBox(width: 20,),
                Image.asset('assets/images/pos_screen1.png'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
