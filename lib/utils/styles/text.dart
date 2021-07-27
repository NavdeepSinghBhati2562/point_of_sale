import 'package:flutter/material.dart';
import 'package:point_of_sale/utils/size_config.dart';

abstract class TextStyles {
  static TextStyle get title => TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get heading1 => TextStyle(
        fontSize: SizeConfig.textMultiplier * 2,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get heading2 => TextStyle(
    fontSize: SizeConfig.textMultiplier * 2.5,
    fontWeight: FontWeight.w500,
  );

  static TextStyle get heading3 => TextStyle(
    fontSize: SizeConfig.textMultiplier * 3,
    fontWeight: FontWeight.w500,
  );

  static TextStyle get pageHeading => TextStyle(
    fontSize: SizeConfig.textMultiplier * 3,
    fontWeight: FontWeight.w600,
  );

  static TextStyle get subTitle => TextStyle(
        fontSize: SizeConfig.textMultiplier * 1.8,
    color: Colors.grey[600]
      );

  static TextStyle get bodyText1Black => TextStyle(
        fontSize: 15.0,
      );

  static TextStyle get bodyText1BlackLarge => TextStyle(
        fontSize: 17.0,
      );

  static TextStyle get bodyText1BlackMedium =>
      TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500);

  static TextStyle get bodyText1BlackMediumLarge =>
      TextStyle(fontSize: 21.0, fontWeight: FontWeight.w500);

  static TextStyle get bodyText1BlackBold =>
      TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700);

  static TextStyle get bodyText1Grey =>
      TextStyle(fontSize: 15.0, color:Colors.grey[400]);

  static TextStyle get bodyText2Black => TextStyle(
        fontSize: 13.0,
      );

  static TextStyle get bodyText2Grey =>
      TextStyle(fontSize: 13.0, color: Colors.grey[600]);

  static TextStyle get linkBold => TextStyle(
      fontSize: 13.0, fontWeight: FontWeight.w600, color: Colors.redAccent[200]);

  static TextStyle get linkRegular =>
      TextStyle(fontSize: 13.0, color: Colors.redAccent[200]);

  static TextStyle smallText([Color fontColor = Colors.black]) => TextStyle(
        fontSize: 12.0,
        color: fontColor,
      );

  static TextStyle smallXText([Color fontColor = Colors.black]) =>
      TextStyle(fontSize: 13.0, color: fontColor, letterSpacing: .5);

  static TextStyle xSmallTextMedium([Color fontColor = Colors.black]) =>
      TextStyle(fontSize: 10.0, color: fontColor, fontWeight: FontWeight.w500);

  static TextStyle smallTextMedium([Color fontColor = Colors.black]) =>
      TextStyle(fontSize: 12.0, color: fontColor, fontWeight: FontWeight.w500);

  static TextStyle regularText([Color fontColor = Colors.black]) => TextStyle(
        fontSize: 15.0,
        color: fontColor,
      );

  static TextStyle regularXText([Color fontColor = Colors.black]) => TextStyle(
        fontSize: 18.0,
        color: fontColor,
      );

  static TextStyle regularXTextSemiBold([Color fontColor = Colors.black]) =>
      TextStyle(fontSize: 18.0, color: fontColor, fontWeight: FontWeight.w600);

  static TextStyle smallTextSemiBold([Color fontColor = Colors.black]) =>
      TextStyle(fontSize: 12.0, color: fontColor, fontWeight: FontWeight.w600);

  static TextStyle regularTextMedium([Color fontColor = Colors.black]) =>
      TextStyle(fontSize: 15.0, color: fontColor, fontWeight: FontWeight.w500);

  static TextStyle regularXTextMedium([Color fontColor = Colors.black]) =>
      TextStyle(fontSize: 17.0, color: fontColor, fontWeight: FontWeight.w500);

  static TextStyle regularTextSemiBold([Color fontColor = Colors.black]) =>
      TextStyle(fontSize: 15.0, color: fontColor, fontWeight: FontWeight.w500);

  static TextStyle largeTextSemiBold([Color fontColor = Colors.black]) =>
      TextStyle(fontSize: 20.0, color: fontColor, fontWeight: FontWeight.w600);

  static TextStyle largeTextMedium([Color fontColor = Colors.black]) =>
      TextStyle(fontSize: 24.0, color: fontColor, fontWeight: FontWeight.w500);

  static TextStyle xlargeTextMedium([Color fontColor = Colors.black]) =>
      TextStyle(fontSize: 32.0, color: fontColor, fontWeight: FontWeight.w500);

  static TextStyle xlargeTextSemiBold([Color fontColor = Colors.black]) =>
      TextStyle(fontSize: 32.0, color: fontColor, fontWeight: FontWeight.w600);
}
