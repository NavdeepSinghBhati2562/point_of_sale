
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:point_of_sale/constant/constants.dart';
import 'package:point_of_sale/utils/size_config.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Color bgColor;
  final IconData suffixIcon;
  final VoidCallback onPressed;
  final bool isBoxShadow;
  final WrapAlignment alignment;
  final bool isFullWidth;
  final double fontSize;
  const AppButton({
    this.bgColor = themeColor ,
    @required this.text,
    this.suffixIcon,
    @required this.onPressed,
    this.isBoxShadow = false,
    this.alignment = WrapAlignment.center,
    this.isFullWidth = false,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: alignment,
      children: [
        Container(
          width: isFullWidth ? double.infinity : null,
          decoration: BoxDecoration(
            boxShadow: isBoxShadow
                ? [
              BoxShadow(
                offset: Offset(0.00, 3.00),
                color: Color(0xff000000).withOpacity(0.16),
                blurRadius: 6,
              )
            ]
                : [],
          ),
          // height: 40.0 +
          //     (bottomInset ? MediaQuery.of(context).padding.bottom - 10 : 0),
          child: TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(
                  horizontal: 30,vertical: 16
              ),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
              backgroundColor: bgColor,
            ),

            onPressed: onPressed,
            child: suffixIcon != null
                ? Row(
              mainAxisAlignment: suffixIcon != null
                  ? MainAxisAlignment.spaceBetween
                  : MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: fontSize == null ? SizeConfig.textMultiplier * 2 : fontSize),
                  textAlign: TextAlign.center,
                ),
                Icon(
                  suffixIcon,
                  // color: ButtonStyles.iconColor,
                  // size: ButtonStyles.iconSize,
                )
              ],
            )
                : Text(
              text,
              style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize:fontSize == null ? SizeConfig.textMultiplier * 2 : fontSize,letterSpacing: 1.4),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
