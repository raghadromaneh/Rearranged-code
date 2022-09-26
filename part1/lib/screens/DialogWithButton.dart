import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:part1/components/button.dart';
import 'package:part1/screens/home.dart';

import '../components/Switch.dart';

class DialogButton extends StatefulWidget {
  DialogButton({Key? key}) : super(key: key);

  @override
  State<DialogButton> createState() => _DialogButtonState();
}

bool myDarkValue = false;
IconData DarkLight = Icons.light_mode;

class _DialogButtonState extends State<DialogButton> {
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
        body: Center(
          child: ButtonWedget(
            buttonTitle: "Home",
            buttonIcon: Icons.home,
            OnPressing: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    actions: [
                      Container(
                        alignment: Alignment.topCenter,
                        child: Text("Do you want to go to home page?"),
                      ),
                      Divider(
                        height: 25,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return Home();
                                  },
                                ));
                              },
                              child: Text("Yes"),
                            ),
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
                              child: Text("No"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
