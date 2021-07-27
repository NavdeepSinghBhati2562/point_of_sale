import 'package:flutter/material.dart';

class AppSwitch extends StatefulWidget {
  bool value;
  AppSwitch({this.value});
  @override
  _AppSwitchState createState() => _AppSwitchState();
}

class _AppSwitchState extends State<AppSwitch> {

  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: widget.value == null ? _value : widget.value,
        onChanged: (val){
          setState(() {
            _value = val;
            widget.value = val;
          });
        },
    );
  }
}
