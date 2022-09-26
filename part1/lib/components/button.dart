import 'package:flutter/material.dart';

class ButtonWedget extends StatelessWidget {
  ButtonWedget({this.buttonTitle, this.buttonIcon, required this.OnPressing});
  IconData? buttonIcon;
  String? buttonTitle;
  Function() OnPressing;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: OnPressing,
        icon: Icon(buttonIcon),
        label: Text("$buttonTitle"));
  }
}
