import 'package:flutter/material.dart';
import 'package:point_of_sale/utils/Routes/routes.dart';
import 'package:point_of_sale/utils/size_config.dart';
import 'package:point_of_sale/utils/styles/text.dart';
import 'package:point_of_sale/utils/widgets/app_button.dart';
import 'package:point_of_sale/utils/widgets/app_switch.dart';
import 'package:point_of_sale/utils/widgets/my_app_bar.dart';

class DevicePreferencePage extends StatefulWidget {
  @override
  _DevicePreferencePageState createState() => _DevicePreferencePageState();
}

class _DevicePreferencePageState extends State<DevicePreferencePage> {

  bool _showTabletHardware = false;

  _buildSelectTabletHardware(){
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.5,horizontal: 12),
            child: Text('Select Tablet Hardware',style: TextStyles.heading3,),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(vertical: 6),
            title: Text('Android Tablet',style: TextStyles.heading1,),
            trailing: AppSwitch(),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(vertical: 6),
            title: Text('iOS Tablet',style: TextStyles.heading1,),
            trailing: AppSwitch(),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(vertical: 6),
            title: Text('Star Portable bluetooth receipt printer',style: TextStyles.heading1,),
            trailing: AppSwitch(),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(vertical: 6),
            title: Text('Star Portable bluetooth receipt printer with cash drawer connection ',style: TextStyles.heading1,),
            trailing: AppSwitch(),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(vertical: 6),
            title: Text('Star Desktop network (LAN) receipt printer with cash drawer connection',style: TextStyles.heading1,),
            trailing: AppSwitch(),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(vertical: 6),
            title: Text('Star Desktop network (LAN) receipt printer with cash drawer connection',style: TextStyles.heading1,),
            trailing: AppSwitch(),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(vertical: 6),
            title: Text('I want to use mobile and Tablet devices',style: TextStyles.heading1,),
            trailing: AppSwitch(),
          ),

        ],
      ),
    );
  }

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
            Container(
              height: SizeConfig.getScreenHeight(context) * 0.76,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 12.5),
                      child: Text('Do you use mobile devices?',textAlign: TextAlign.center,style: TextStyles.pageHeading,),
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(vertical: 12.5),
                      title: Text('I want to use mobile and Tablet devices',style: TextStyles.heading1,),
                      trailing: Switch(
                        value: _showTabletHardware,
                        onChanged: (val){
                          setState(() {
                            _showTabletHardware = val;
                          });
                        },
                      ),
                    ),
                    _showTabletHardware ? _buildSelectTabletHardware() : SizedBox()
                  ],
                ),
              ),
            ),
            AppButton(text: 'NEXT',isFullWidth: true, onPressed: (){
              Navigator.push(context, Routes.pricePlan());
            })
          ],
        ),
      ),
    );
  }
}
