import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:point_of_sale/utils/Routes/routes.dart';
import 'package:point_of_sale/utils/size_config.dart';
import 'package:point_of_sale/utils/styles/text.dart';
import 'package:point_of_sale/utils/widgets/app_button.dart';
import 'package:point_of_sale/utils/widgets/app_switch.dart';
import 'package:point_of_sale/utils/widgets/my_app_bar.dart';

class SoftwarePreferencePage extends StatefulWidget {
  @override
  _SoftwarePreferencePageState createState() => _SoftwarePreferencePageState();
}

class _SoftwarePreferencePageState extends State<SoftwarePreferencePage> {
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12.5),
                  child: Text('What would be your Software needs?',textAlign: TextAlign.center,style: TextStyles.pageHeading,),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(vertical: 6),
                  title: Text('I would need a inventory management software',style: TextStyles.heading1,),
                  trailing: AppSwitch(),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(vertical: 6),
                  title: Text('I would need point of sale software',style: TextStyles.heading1,),
                  trailing: AppSwitch(),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(vertical: 6),
                  title: Text('I have an existing webshop and I want to connect it to Erply',style: TextStyles.heading1,),
                  trailing: AppSwitch(),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(vertical: 6),
                  title: Text('I would need a new workshop',style: TextStyles.heading1,),
                  trailing: AppSwitch(),
                ),

              ],
            ),
            AppButton(text: 'NEXT',isFullWidth: true, onPressed: (){
              Navigator.push(context, Routes.devicePreference()
              );
            })
          ],
        ),
      ),
    );
  }
}
