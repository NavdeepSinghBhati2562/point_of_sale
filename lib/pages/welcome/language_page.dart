import 'package:flutter/material.dart';
import 'package:point_of_sale/constant/constants.dart';
import 'package:point_of_sale/utils/Routes/routes.dart';
import 'package:point_of_sale/utils/size_config.dart';
import 'package:point_of_sale/utils/widgets/app_button.dart';

class LanguagePage extends StatefulWidget {
  @override
  _LanguagePageState createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
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
                Text('Point of Sale',style: TextStyle(fontSize: SizeConfig.textMultiplier * 4.4,fontWeight: FontWeight.w600,color: textColor),),
                SizedBox(height: 20,),
                Text('Create your account and start operating your business with future tools!',textAlign: TextAlign.center,style: TextStyle(fontSize: SizeConfig.textMultiplier * 3),),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: SizeConfig.getScreenWidth(context),
                  child: DropdownButton(
                    underline: SizedBox(),
                    isExpanded: true,
                    icon: Icon(Icons.language),
                    hint: Text('English'),
                    onChanged: (val){

                    },
                    items: List.generate(10, (index){
                      return DropdownMenuItem(child: Text('English $index'));
                    }),
                  ),
                ),
                SizedBox(height: 20,),
                AppButton(text: 'GET STARTED', onPressed: (){
                  Navigator.push(context, Routes.businessLocation());
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
