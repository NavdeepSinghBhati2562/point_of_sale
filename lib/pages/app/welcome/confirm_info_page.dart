import 'package:flutter/material.dart';
import 'package:point_of_sale/constant/constants.dart';
import 'package:point_of_sale/utils/app_localiszation.dart';
import 'package:point_of_sale/utils/size_config.dart';
import 'package:point_of_sale/utils/styles/text.dart';
import 'package:point_of_sale/utils/widgets/my_app_bar.dart';

class ConfirmInfoPage extends StatefulWidget {
  @override
  _ConfirmInfoPageState createState() => _ConfirmInfoPageState();
}

class _ConfirmInfoPageState extends State<ConfirmInfoPage> {

  _buildContactInfo(){
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFFCCCCCC),
          ),
          color: Color(0xFFF9F9F9)
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.person_outline_rounded),
                  SizedBox(width: 10,),
                  Text('Contact Info',style: TextStyles.heading2,)
                ],
              ),
              Icon(Icons.edit_outlined)
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             Container(
               width: SizeConfig.getScreenWidth(context) * 0.35,
               decoration: BoxDecoration(
                 border: Border(right: BorderSide(color: borderGrey))
               ),
               child:  Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text('Name',style: TextStyles.subTitle,),
                   SizedBox(height: 10,),
                   Text('Email',style: TextStyles.subTitle,),
                   SizedBox(height: 10,),
                   Text('Phone',style: TextStyles.subTitle,),
                   SizedBox(height: 10,),
                   Text('Role',style: TextStyles.subTitle,),
                   SizedBox(height: 10,),
                   Text('Region',style: TextStyles.subTitle,),
                   SizedBox(height: 10,),
                 ],
               ),
             ),
             Container(
                width: SizeConfig.getScreenWidth(context) * 0.65 - 42,
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('John Jackson',style: TextStyles.heading1,),
                    SizedBox(height: 10,),
                    Text('john@companyname.com',style: TextStyles.heading1,),
                    SizedBox(height: 10,),
                    Text('+91 7014936552',style: TextStyles.heading1,),
                    SizedBox(height: 10,),
                    Text('President',style: TextStyles.heading1,),
                    SizedBox(height: 10,),
                    Text('India',style: TextStyles.heading1,),
                    SizedBox(height: 10,),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  _buildCompanyDetail(){
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFFCCCCCC),
          ),
          color: Color(0xFFF9F9F9)
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.apartment_rounded),
                  SizedBox(width: 10,),
                  Text('Company Details',style: TextStyles.heading2,)
                ],
              ),
              Icon(Icons.edit_outlined)
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: SizeConfig.getScreenWidth(context) * 0.35,
                decoration: BoxDecoration(
                    border: Border(right: BorderSide(color: borderGrey))
                ),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Name',style: TextStyles.subTitle,),
                    SizedBox(height: 10,),
                    Text('Address line 1',style: TextStyles.subTitle,),
                    SizedBox(height: 10,),
                    Text('Address line 2',style: TextStyles.subTitle,),
                    SizedBox(height: 10,),
                    Text('VAT',style: TextStyles.subTitle,),
                    SizedBox(height: 10,),
                    Text('Reg. Code',style: TextStyles.subTitle,),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
              Container(
                width: SizeConfig.getScreenWidth(context) * 0.65 - 42,
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('John and Sons Limited',style: TextStyles.heading1,),
                    SizedBox(height: 10,),
                    Text('23 Blackstone road',style: TextStyles.heading1,),
                    SizedBox(height: 10,),
                    Text('NWD 6DA',style: TextStyles.heading1,),
                    SizedBox(height: 10,),
                    Text('97683232',style: TextStyles.heading1,),
                    SizedBox(height: 10,),
                    Text('1234224',style: TextStyles.heading1,),
                    SizedBox(height: 10,),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  _buildCompanySize(){
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFFCCCCCC),
          ),
          color: Color(0xFFF9F9F9)
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.tag),
                  SizedBox(width: 10,),
                  Text('Company Size',style: TextStyles.heading2,)
                ],
              ),
              Icon(Icons.edit_outlined)
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: SizeConfig.getScreenWidth(context) * 0.35,
                decoration: BoxDecoration(
                    border: Border(right: BorderSide(color: borderGrey))
                ),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Nr of location',style: TextStyles.subTitle,),
                    SizedBox(height: 10,),
                    Text('Nr of cash registers',style: TextStyles.subTitle,),
                    SizedBox(height: 10,),
                    Text('Nr of users',style: TextStyles.subTitle,),
                    SizedBox(height: 10,),
                    Text('Nr of products',style: TextStyles.subTitle,),
                    SizedBox(height: 10,),
                    Text('Region',style: TextStyles.subTitle,),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
              Container(
                width: SizeConfig.getScreenWidth(context) * 0.65 - 42,
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('John Jackson',style: TextStyles.heading1,),
                    SizedBox(height: 10,),
                    Text('john@companyname.com',style: TextStyles.heading1,),
                    SizedBox(height: 10,),
                    Text('+91 7014936552',style: TextStyles.heading1,),
                    SizedBox(height: 10,),
                    Text('President',style: TextStyles.heading1,),
                    SizedBox(height: 10,),
                    Text('India',style: TextStyles.heading1,),
                    SizedBox(height: 10,),
                  ],
                ),
              )
            ],
          )
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
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        width: SizeConfig.getScreenWidth(context),
        height: SizeConfig.getScreenHeight(context),

        child:SingleChildScrollView(
          child:  Column(
            children: [
              Text('Confirm your Information',style: TextStyles.pageHeading,),
              SizedBox(height: 20,),
              _buildContactInfo(),
              SizedBox(height: 20,),
              _buildCompanyDetail(),
              SizedBox(height: 20,),
              _buildCompanySize()
            ],
          ),
        )
      ),
    );
  }
}
