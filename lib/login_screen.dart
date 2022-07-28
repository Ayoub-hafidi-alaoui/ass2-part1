import 'package:assignement2/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreenFacebbok extends StatelessWidget {
  static const String LOGIN_SCREEN = "login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.indigo,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 100,
              height: 100,
              child: Image.asset("images/facebook.jpg"),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(hintText: "Email or Phone", hintStyle: TextStyle(color: Color.fromRGBO(255, 255 , 255, 0.7), fontSize: 22)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Password", fillColor: Colors.white, hintStyle: TextStyle(color: Color.fromRGBO(255, 255 , 255, 0.7), fontSize: 22 )),
              ),

            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromRGBO(107, 91, 198, 0.8)),),
                onPressed: () {
                  Navigator.pushNamed(context, HomeScreen.HOME_SCREEN);
                },
                child: const Text("Log in"),
              ),
            ),
            Container(alignment: Alignment.center,child: const Text("Sign up  for facebook", style: TextStyle(color: Colors.white),),),
            Container(alignment: Alignment.center,child: const Text("Forgot passwprd ?", style: TextStyle(color: Colors.white),),),

          ],
        ),
      ),
    );
  }
}
