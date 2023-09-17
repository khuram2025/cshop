import 'package:cstore/screens/Page1.dart';
import 'package:flutter/material.dart';

import 'screens/home_page.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/custom_drawer.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter AppBar App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Page1(), // Use the HomePage here
    );
  }
}