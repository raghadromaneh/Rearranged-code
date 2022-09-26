import 'package:flutter/material.dart';
import 'package:part1/screens/home.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: Home(),
    ),
  );
}
