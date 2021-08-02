import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:point_of_sale/constant/constants.dart';
import 'package:point_of_sale/pages/app/welcome/login_page.dart';
import 'package:point_of_sale/provider/app_provider.dart';
import 'package:point_of_sale/provider/langProvider.dart';
import 'package:point_of_sale/utils/app_localiszation.dart';
import 'package:point_of_sale/utils/size_config.dart';
import 'package:point_of_sale/utils/widgets/app_button.dart';
import 'package:provider/provider.dart';
import 'package:point_of_sale/pages/tab/tab_home.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  AppLanguage appLanguage = AppLanguage();
  await appLanguage.fetchLocale();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  static _MyAppState of(BuildContext context) => context.findAncestorStateOfType<_MyAppState>();

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AppLanguage(),
        ),
        ChangeNotifierProvider(
          create: (context) => AppProvider(),
        ),
      ],
      child: LayoutBuilder(
        builder: (context, constraints) {
          return OrientationBuilder(
            builder: (context, orientation) {
              SizeConfig().init(constraints, orientation);
              return Consumer<AppLanguage>(
                builder: (context,value,child){
                  return  MaterialApp(
                    locale: value.appLocal,
                    debugShowCheckedModeBanner: false,
                    themeMode: ThemeMode.light,
                    supportedLocales: [
                      Locale('en', 'US'),
                      Locale('et', 'EE'),
                    ],
                    localizationsDelegates: [
                      AppLocalizations.delegate,
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                    ],
                    theme: ThemeData(
                        primaryColor: themeColor,
                        fontFamily: 'Noto',
                        backgroundColor: Colors.white,
                        scaffoldBackgroundColor: Colors.white,
                        dividerColor: borderGrey
                    ),
                    home: TabHome(),
                    title: 'Point of Sale',
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

