// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:navigation_example/pages/first_page.dart';
import 'package:navigation_example/pages/home_page.dart';
import 'package:navigation_example/pages/second_page.dart';
import 'package:navigation_example/pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/homepage': (context) => HomePage(),
        '/settingspage': (context) => SettingsPage(),
        '/firstpage': (context) => FirstPage(),
        '/secondpage': (context) => SecondPage(),
      },
    );
  }
}
