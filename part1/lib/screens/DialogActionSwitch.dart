import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:part1/components/SwitchListTileWedget.dart';
import 'package:part1/screens/home.dart';

import '../components/Switch.dart';

class DialogActionSwitch extends StatefulWidget {
  DialogActionSwitch({Key? key}) : super(key: key);

  @override
  State<DialogActionSwitch> createState() => _DialogActionSwitchState();
}

bool myDarkValue = false;
bool myValue = false;
IconData DarkLight = Icons.light_mode;

class _DialogActionSwitchState extends State<DialogActionSwitch> {
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
        body: Column(
          children: [
            SwitchTileWedget(
              SwitchTitle: "Go to home",
              SwitchSubTitle: "Bye Bye",
              SwitchIcon: Icons.home,
              SwitchValue: myValue,
              OnChanging: (p0) {
                setState(() {
                  myValue = !myValue;
                });
                if (myValue == true) {
                  showDialog(
                    context: context,
                    builder: ((context) {
                      return AlertDialog(
                        actions: [
                          Container(
                              alignment: Alignment.topCenter,
                              child: Text("Do you want to go to home page?")),
                          Divider(
                            height: 25,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return Home();
                                          },
                                        ),
                                      );
                                    },
                                    child: Text("Yes")),
                                SizedBox(
                                  width: 15,
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            content: Image.network(
                                                "https://th.bing.com/th/id/OIP.qHAHjx6Gzs-A_jN6a8g_RAHaE-?pid=ImgDet&rs=1"),
                                          );
                                        },
                                      );
                                    },
                                    child: Text("No")),
                              ],
                            ),
                          ),
                        ],
                      );
                    }),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
