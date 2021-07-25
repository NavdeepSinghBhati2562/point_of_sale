import 'package:flutter/material.dart';

class ShowLoading extends StatelessWidget {
  final Color color;
  ShowLoading({this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation(color),),
    );
  }
}
