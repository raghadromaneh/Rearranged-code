import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:part1/components/SwitchListTileWedget.dart';

import '../components/Switch.dart';

class DialogActionContentSwitch extends StatefulWidget {
  DialogActionContentSwitch({Key? key}) : super(key: key);

  @override
  State<DialogActionContentSwitch> createState() =>
      _DialogActionContentSwitchState();
}

bool myDarkValue = false;
bool myValue2 = false;
IconData DarkLight = Icons.light_mode;

class _DialogActionContentSwitchState extends State<DialogActionContentSwitch> {
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
                setState(() {
                  myDarkValue = !myDarkValue;
                });

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
              SwitchTitle: "Show contact information",
              SwitchSubTitle: "Email,phone,etc...",
              SwitchIcon: Icons.contact_page,
              SwitchValue: myValue2,
              OnChanging: (p0) {
                setState(
                  () {
                    myValue2 = !myValue2;
                  },
                );
                if (myValue2 == true) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        actions: [
                          Text(
                            "Do you want to proceed ?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("yes"),
                          Text("No")
                        ],
                        backgroundColor: Colors.green.shade300,
                        content: Container(
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 160, 229, 198),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.phone),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text("Mobile: +962 797777777"),
                                  ],
                                ),
                              ),
                              Divider(
                                height: 15,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 160, 229, 198),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.mail),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text("Email: Example@ex.com")
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
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
