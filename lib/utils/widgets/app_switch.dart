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
    return GestureDetector(
      onTap: (){
        setState(() {
          _value = !_value;
        });
      },
      child: Container(
        height: 28,
        width: 28,
        color: _value ? Theme.of(context).primaryColor : Colors.grey[400],
        child: Row(
          mainAxisAlignment: _value ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            Container(
              height: 28,
              width: 4,
              alignment: Alignment.centerRight,
              margin: const EdgeInsets.only(top: 2,bottom: 2,left: 2,right: 2),
              color: Colors.white,
            )
          ],
        ),
      ),
    );


    //   Switch(
    //     value: widget.value == null ? _value : widget.value,
    //     onChanged: (val){
    //       setState(() {
    //         _value = val;
    //         widget.value = val;
    //       });
    //     },
    // );
  }
}
