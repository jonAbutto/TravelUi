import 'package:flutter/material.dart';
import 'package:fluttertravels/screens/homescreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Travel UI Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
        accentColor: Colors.white,
        scaffoldBackgroundColor:Colors.black38,
        fontFamily: 'Merienda'
      ),
      home: HomeScreen(),
    );
  }
}
