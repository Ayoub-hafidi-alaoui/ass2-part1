import 'package:assignement2/home_screen.dart';
import 'package:assignement2/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoginScreenFacebbok.LOGIN_SCREEN,
      routes: {
        LoginScreenFacebbok.LOGIN_SCREEN: (_) => LoginScreenFacebbok(),
        HomeScreen.HOME_SCREEN: (_) => HomeScreen()
      },
    );
  }
}
