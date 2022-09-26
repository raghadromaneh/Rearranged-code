import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:part1/components/SwitchListTileWedget.dart';

import '../components/Switch.dart';

class ExitSwitch extends StatefulWidget {
  ExitSwitch({Key? key}) : super(key: key);
  @override
  State<ExitSwitch> createState() => _ExitSwitchState();
}

bool myDarkValue = false;
bool myValue = false;
IconData DarkLight = Icons.light_mode;

class _ExitSwitchState extends State<ExitSwitch> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Switch & dialog lecture"),
          actions: [
            Icon(DarkLight),
            SwitchWedget(
              switchValue: myDarkValue,
              OnChanging: (p0) {
                setState(
                  () {
                    myDarkValue = !myDarkValue;
                  },
                );

                if (Get.isDarkMode) {
                  Get.changeTheme(
                    ThemeData.light(),
                  );
                  DarkLight = Icons.light_mode;
                } else {
                  Get.changeTheme(
                    ThemeData.dark(),
                  );
                  DarkLight = Icons.dark_mode;
                }
              },
            )
          ],
        ),
        body: Container(
          child: SwitchTileWedget(
            SwitchTitle: "Exit the App",
            SwitchSubTitle: "It's hard to see you leave :(",
            SwitchIcon: Icons.exit_to_app,
            SwitchValue: myValue,
            OnChanging: (p0) {
              setState(
                () {
                  myValue = !myValue;
                  exit(0);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
