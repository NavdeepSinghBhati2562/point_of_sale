import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:point_of_sale/pages/splash/splash_page.dart';
import 'package:point_of_sale/pages/app/welcome/business_location_page.dart';
import 'package:point_of_sale/pages/app/welcome/company_detail_page.dart';
import 'package:point_of_sale/pages/app/welcome/company_size_page.dart';
import 'package:point_of_sale/pages/app/welcome/confirm_info_page.dart';
import 'package:point_of_sale/pages/app/welcome/contact_detail_page.dart';
import 'package:point_of_sale/pages/app/welcome/create_account_page.dart';
import 'package:point_of_sale/pages/app/welcome/device_preference_page.dart';
import 'package:point_of_sale/pages/app/welcome/language_page.dart';
import 'package:point_of_sale/pages/app/welcome/login_page.dart';
import 'package:point_of_sale/pages/app/welcome/price_plan/price_plan_page.dart';
import 'package:point_of_sale/pages/app/welcome/software_preference_page.dart';
import 'package:point_of_sale/pages/tab/tab_home.dart';

class Routes {
  static CupertinoPageRoute _makeRoute(Widget page) =>
      CupertinoPageRoute(
        builder: (context) => page,
      );
  static CupertinoPageRoute splash() => _makeRoute(SplashPage());

  static CupertinoPageRoute login() => _makeRoute(LoginPage());

  static CupertinoPageRoute tabHome() => _makeRoute(TabHome());

  static CupertinoPageRoute language() => _makeRoute(LanguagePage());

  static CupertinoPageRoute businessLocation() => _makeRoute(BusinessLocationPage());

  static CupertinoPageRoute companyDetails() => _makeRoute(CompanyDetailPage());

  static CupertinoPageRoute contactDetail() => _makeRoute(ContactDetailPage());

  static CupertinoPageRoute softwarePreference() => _makeRoute(SoftwarePreferencePage());

  static CupertinoPageRoute devicePreference() => _makeRoute(DevicePreferencePage());

  static CupertinoPageRoute pricePlan() => _makeRoute(PricePlanPage());

  static CupertinoPageRoute createAccount() => _makeRoute(CreateAccountPage());

  static CupertinoPageRoute confirmInfo() => _makeRoute(ConfirmInfoPage());

  static CupertinoPageRoute companySize() => _makeRoute(CompanySizePage());


}