import 'package:flutter/material.dart';
import 'package:part1/components/Switch.dart';
import 'package:part1/components/cardMain.dart';
import 'package:part1/screens/DialogActionContentSwitch.dart';
import 'package:part1/screens/DialogActionSwitch.dart';
import 'package:part1/screens/DialogWithButton.dart';
import 'package:part1/screens/ExitSwitch.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

bool myDarkValue = false;
IconData DarkLight = Icons.light_mode;

class _HomeState extends State<Home> {
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
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CradMain(
                  title: "    Try dialog \n (using button)",
                  iconmain: Icons.add_alert_rounded,
                  OnPressing: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DialogButton();
                        },
                      ),
                    );
                  },
                ),
                SizedBox(
                  width: 15,
                ),
                CradMain(
                  title: "     Try exit\n (using switch)",
                  iconmain: Icons.exit_to_app,
                  OnPressing: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ExitSwitch();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CradMain(
                  title: "Try Dialog with\n      action \n (using switch)",
                  iconmain: Icons.add_alert_rounded,
                  OnPressing: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DialogActionSwitch();
                        },
                      ),
                    );
                  },
                ),
                SizedBox(
                  width: 15,
                ),
                CradMain(
                  title:
                      " Try dialog with \ncontent & action\n  (using switch)",
                  iconmain: Icons.add_alert_rounded,
                  OnPressing: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DialogActionContentSwitch();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
