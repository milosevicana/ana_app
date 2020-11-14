import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:anaapp/screens/welcomeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'AnaApp',
        home: WelcomeScreen());
  }
}
