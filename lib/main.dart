import 'package:flutter/material.dart';
import 'package:hplace_screens/Screen1.dart';
import 'package:hplace_screens/Screen6.dart';

void main() =>   runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen6(),
    );
  }
}
