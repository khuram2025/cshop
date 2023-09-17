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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(), // Use the HomePage here
    );
  }
}