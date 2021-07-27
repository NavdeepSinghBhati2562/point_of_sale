import 'package:flutter/material.dart';

class MyAppBar extends PreferredSize {

  final String title;
  final List<Widget> actions;
  final double height;
  final Color bgColor;
  MyAppBar({this.title,this.actions,this.height = kToolbarHeight,this.bgColor});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text(title,style: TextStyle(color: Colors.black),),
      actions: actions,
      toolbarHeight: preferredSize.height,
      leading: GestureDetector(
          onTap: (){Navigator.pop(context);},
          child: Icon(Icons.arrow_back_ios,color:Colors.black)),
      backgroundColor: bgColor == null ? Theme.of(context).scaffoldBackgroundColor : bgColor,
    );
  }

}
