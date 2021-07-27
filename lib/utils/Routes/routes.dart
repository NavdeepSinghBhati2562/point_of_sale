import 'package:flutter/material.dart';
import 'package:point_of_sale/pages/splash/splash_page.dart';
import 'package:point_of_sale/pages/welcome/business_location_page.dart';
import 'package:point_of_sale/pages/welcome/company_detail_page.dart';
import 'package:point_of_sale/pages/welcome/contact_detail_page.dart';
import 'package:point_of_sale/pages/welcome/device_preference_page.dart';
import 'package:point_of_sale/pages/welcome/language_page.dart';
import 'package:point_of_sale/pages/welcome/login_page.dart';
import 'package:point_of_sale/pages/welcome/price_plan/price_plan_page.dart';
import 'package:point_of_sale/pages/welcome/software_preference_page.dart';

class Routes {
  static MaterialPageRoute _makeRoute(Widget page) =>
      MaterialPageRoute(
        builder: (context) => page,
      );
  static MaterialPageRoute splash() => _makeRoute(SplashPage());

  static MaterialPageRoute login() => _makeRoute(LoginPage());

  static MaterialPageRoute language() => _makeRoute(LanguagePage());

  static MaterialPageRoute businessLocation() => _makeRoute(BusinessLocationPage());

  static MaterialPageRoute companyDetails() => _makeRoute(CompanyDetailPage());

  static MaterialPageRoute contactDetail() => _makeRoute(ContactDetailPage());

  static MaterialPageRoute softwarePreference() => _makeRoute(SoftwarePreferencePage());

  static MaterialPageRoute devicePreference() => _makeRoute(DevicePreferencePage());

  static MaterialPageRoute pricePlan() => _makeRoute(PricePlanPage());


}