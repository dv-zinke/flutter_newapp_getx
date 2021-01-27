import 'package:flutter/material.dart';
import 'package:newapp_getx/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.cyan[600]
      ),
      home: HomePage(),
    );
  }
}
