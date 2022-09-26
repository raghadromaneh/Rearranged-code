import 'package:flutter/material.dart';

class SwitchTileWedget extends StatelessWidget {
  SwitchTileWedget(
      {this.SwitchTitle,
      this.SwitchSubTitle,
      this.SwitchIcon,
      this.SwitchValue,
      required this.OnChanging});
  String? SwitchTitle;
  String? SwitchSubTitle;
  IconData? SwitchIcon;
  bool? SwitchValue;
  Function(bool) OnChanging;
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      isThreeLine: true,
      title: Text("$SwitchTitle"),
      subtitle: Text("$SwitchSubTitle"),
      secondary: Icon(SwitchIcon),
      activeColor: Colors.green,
      activeTrackColor: Color.fromARGB(255, 5, 63, 7),
      inactiveThumbColor: Colors.grey,
      inactiveTrackColor:Color.fromARGB(255, 89, 87, 87) ,
      
      value: SwitchValue!,
      onChanged: OnChanging,
    );
  }
}
