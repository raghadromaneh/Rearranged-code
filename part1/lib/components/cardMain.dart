import 'package:flutter/material.dart';

class CradMain extends StatelessWidget {
  CradMain({this.title, this.iconmain, required this.OnPressing});
  String? title;
  IconData? iconmain;
  Function() OnPressing;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.blue[100],
      minWidth: 180,
      height: 160,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      onPressed: OnPressing,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconmain,
            size: 60,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "$title",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
