import 'package:flutter/material.dart';

class SwitchWedget extends StatelessWidget {
  SwitchWedget({this.switchValue, required this.OnChanging});
  bool? switchValue;
  Function(bool) OnChanging;
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: switchValue!,
      onChanged: OnChanging,
    );
  }
}
