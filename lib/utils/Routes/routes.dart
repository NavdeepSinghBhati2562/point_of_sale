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

  static MaterialPageRoute createAccount() => _makeRoute(CreateAccountPage());

  static MaterialPageRoute confirmInfo() => _makeRoute(ConfirmInfoPage());

  static MaterialPageRoute companySize() => _makeRoute(CompanySizePage());


}