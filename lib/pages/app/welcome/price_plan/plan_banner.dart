import 'package:flutter/material.dart';
import 'package:point_of_sale/constant/constants.dart';
import 'package:point_of_sale/utils/Routes/routes.dart';
import 'package:point_of_sale/utils/size_config.dart';
import 'package:point_of_sale/utils/styles/text.dart';
import 'package:point_of_sale/utils/widgets/app_button.dart';

class PlanBanner extends StatefulWidget {
  @override
  _PlanBannerState createState() => _PlanBannerState();
}

class _PlanBannerState extends State<PlanBanner> with TickerProviderStateMixin {


  List _plansIncludes = [
    'Includes 2 User Accounts',
    '1 Point of Sale license',
    'Easy to use Point of Sale',
    'Basic x-/z-reports to run your shop',
    'Basic CRM',
    'POS Mobile',
    'Cyan Integrated Payments',
    'mPOS',
    'Email Receipt',
    'Flexible Hardware Support',
    'Bluetooth Peripheral Support',
    'Pop-up Shop Support',
    'Limited email support only'
  ];


  bool _showDetail = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      vsync: this,
      duration: Duration(milliseconds: 500),
      curve: Curves.linear,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.all(20),
        width: SizeConfig.getScreenWidth(context),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFFCCCCCC),
          ),
          color: Color(0xFFF5FAFA)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Point of Sale',style: TextStyles.pageHeading,),
            SizedBox(height: 5,),
            Text('POS for small shops without inventory',style: TextStyles.heading1,),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text('\$',style: TextStyles.pageHeading,),
                        ),
                        Text('29',style: TextStyle(fontSize: SizeConfig.textMultiplier * 5,fontWeight: FontWeight.w600),)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(' / Month',style: TextStyle(fontWeight: FontWeight.w500,fontSize: SizeConfig.textMultiplier * 2.2,color: Colors.grey),),
                    ),
                  ],
                ),
                // SizedBox(width: 10,),
                TextButton(
                    onPressed: (){
                      setState(() {
                        _showDetail = !_showDetail;
                      });
                    },
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
                      backgroundColor: _showDetail ? Colors.grey : Theme.of(context).primaryColor,
                      padding: const EdgeInsets.symmetric(horizontal: 15)
                    ),
                    child: Row(
                      children: [
                        Text('Details',style: TextStyle(color: Colors.white,fontSize: SizeConfig.textMultiplier * 2),),
                        SizedBox(width: 6,),
                        Icon(_showDetail ? Icons.keyboard_arrow_up_rounded : Icons.keyboard_arrow_down_rounded,color: Colors.white,)
                      ],
                    )
                )
              ],
            ),
            SizedBox(height: 5,),
            _showDetail ? Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(_plansIncludes.length, (index) {
                    return FittedBox(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 2),
                        child: Row(
                          children: [
                            Icon(Icons.check,color: Theme.of(context).primaryColor,),
                            SizedBox(width: 5,),
                            Text(_plansIncludes[index],style: TextStyles.heading1,overflow: TextOverflow.fade,)
                          ],
                        ),
                      ),
                    );
                  }),
                ),
                SizedBox(height: 20,),
                AppButton(text: 'SELECT PLAN', isFullWidth: true,onPressed: (){
                  Navigator.push(context, Routes.createAccount());
                })
              ],
            ) : SizedBox()
          ],
        ),
      ),
    );
  }
}
