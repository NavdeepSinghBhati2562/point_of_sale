import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:point_of_sale/constant/constants.dart';
import 'package:point_of_sale/pages/welcome/price_plan/plan_banner.dart';
import 'package:point_of_sale/utils/size_config.dart';
import 'package:point_of_sale/utils/styles/text.dart';
import 'package:point_of_sale/utils/widgets/my_app_bar.dart';

class PricePlanPage extends StatefulWidget {
  @override
  _PricePlanPageState createState() => _PricePlanPageState();
}

class _PricePlanPageState extends State<PricePlanPage> {

  bool _annual = false;

  _buildAnnualPlan(){
    return InkWell(
      onTap: (){
        setState(() {
          _annual = true;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
        decoration: BoxDecoration(
          border: Border.all(
            color: borderGrey
          ),
          color: _annual ? Theme.of(context).primaryColor : Colors.transparent
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _annual ? Colors.white : Color(0xFFE6E6E6)
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(5.56),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:  _annual ? Theme.of(context).primaryColor : Colors.white
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Row(
                  children: [
                    Text('ANNUAL ',style: TextStyle(fontWeight: FontWeight.w600,fontSize: SizeConfig.textMultiplier * 2,color:  _annual ? Colors.white : Theme.of(context).primaryColor),),
                    Text('/ Save 17%',style: TextStyle(color:  _annual ? Colors.white : Colors.grey),)
                  ],
                )
              ],
            ),
            Text('\$19 - \$69 Mo',style: TextStyle(color: _annual ? Colors.white : Colors.grey,fontSize: SizeConfig.textMultiplier * 1.8),)

         ],
        ),
      ),
    );
  }

  _buildMonthlyPlan(){
    return InkWell(
      onTap: (){
        setState(() {
          _annual = false;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
        decoration: BoxDecoration(
            border: Border.all(
                color: borderGrey
            ),
          color: !_annual ? Theme.of(context).primaryColor : Colors.transparent
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: !_annual ? Colors.white : Color(0xFFE6E6E6)
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(5.56),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: ! _annual ? Theme.of(context).primaryColor : Colors.white
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Text('MONTHLY',style: TextStyle(fontWeight: FontWeight.w600,fontSize: SizeConfig.textMultiplier * 2,color:  !_annual ? Colors.white : Theme.of(context).primaryColor),)
              ],
            ),
            Text('\$29 - \$79 Mo',style: TextStyle(color:  !_annual ? Colors.white : Colors.grey,fontSize: SizeConfig.textMultiplier * 1.8),)

          ],
        ),
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
        height: SizeConfig.getScreenHeight(context),
        width: SizeConfig.getScreenWidth(context),
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('Choose the price plan that matches your need',textAlign: TextAlign.center,style: TextStyles.pageHeading,),
              SizedBox(height: 25,),
              _buildAnnualPlan(),
              SizedBox(height: 16,),
              _buildMonthlyPlan(),
              SizedBox(height: 25,),
              Column(
                children: List.generate(5, (index){
                  return PlanBanner();
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
