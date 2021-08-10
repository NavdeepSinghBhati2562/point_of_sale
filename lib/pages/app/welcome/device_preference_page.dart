import 'package:flutter/material.dart';
import 'package:point_of_sale/utils/Routes/routes.dart';
import 'package:point_of_sale/utils/app_localiszation.dart';
import 'package:point_of_sale/utils/size_config.dart';
import 'package:point_of_sale/utils/styles/text.dart';
import 'package:point_of_sale/utils/widgets/app_button.dart';
import 'package:point_of_sale/utils/widgets/app_switch.dart';
import 'package:point_of_sale/utils/widgets/my_app_bar.dart';
import 'package:point_of_sale/utils/widgets/company_side_menu.dart';

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
        title: AppLocalizations.of(context).translate('back'),
      ),
      body: Row(
        children: [
          SizeConfig.isTab ? CompanySideMenu() : SizedBox(),
          Container(
            padding: EdgeInsets.symmetric(horizontal:  SizeConfig.isTab ? SizeConfig.getScreenWidth(context) * 0.1 :  30,vertical: 20),
            width: SizeConfig.isTab ? SizeConfig.getScreenWidth(context) * 0.67 : SizeConfig.getScreenWidth(context),
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
                          trailing: GestureDetector(
                            onTap: (){
                              setState(() {
                                _showTabletHardware = !_showTabletHardware;
                              });
                            },
                            child: Container(
                              height: 28,
                              width: 28,
                              color: _showTabletHardware ? Theme.of(context).primaryColor : Colors.grey[400],
                              child: Row(
                                mainAxisAlignment: _showTabletHardware ? MainAxisAlignment.end : MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 28,
                                    width: 4,
                                    alignment: Alignment.centerRight,
                                    margin: const EdgeInsets.only(top: 2,bottom: 2,left: 2,right: 2),
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
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
        ],
      ),
    );
  }
}
