import 'package:flutter/material.dart';
import 'package:point_of_sale/utils/size_config.dart';

class BottomProgress extends StatefulWidget {
  final selectedIndex;
  BottomProgress({this.selectedIndex});

  @override
  _BottomProgressState createState() => _BottomProgressState();
}

class _BottomProgressState extends State<BottomProgress> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: SizeConfig.getScreenWidth(context),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Colors.white,
              Colors.white
            ]

          )
        ),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(9, (index){
            return widget.selectedIndex == index ? Container(
              width: 22,
              height: 22,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                shape: BoxShape.circle
              ),
            ) : Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  shape: BoxShape.circle
              ),
            );
          }),
        ),
      ),
    );
  }
}
