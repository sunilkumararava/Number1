import 'package:flutter/material.dart';
import 'package:vidflix/pages/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VidFlix',
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        cursorColor: Colors.black,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}
