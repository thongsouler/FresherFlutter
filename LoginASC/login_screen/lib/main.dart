import 'package:flutter/material.dart';
import 'package:loggin_screen/constant.dart';

import 'Screens/Welcome/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: kPrimaryColor, scaffoldBackgroundColor: kBackground),
      home: WelcomeScreen(),
    );
  }
}
