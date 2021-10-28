//mutliscreen
import 'package:flutter/material.dart';

import 'DefaultLoginScreen.dart';

class MultiWelcomeScreens extends StatefulWidget {
  @override
  _MultiWelcomeScreensState createState() => _MultiWelcomeScreensState();
}

class _MultiWelcomeScreensState extends State<MultiWelcomeScreens> {
  double loginHeight = 0;
  double RegisterHeight = 0;

  int _pageState = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
// loginHeight = height ;

    switch (_pageState) {
      case 0:
        loginHeight = height;
        RegisterHeight = height;

        break;
      case 1:
        loginHeight = 200;
        RegisterHeight = height;
        break;
      case 2:
        loginHeight = height;
        RegisterHeight = 210;
    }

    return SafeArea(
      child: Stack(children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _pageState = 0;
            });
          },
          child: Container(
            width: double.infinity,
            child: Column(children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "Shopping \n App",
                style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
                textAlign: TextAlign.center,
              ),
              Image(
                image: NetworkImage(
                    "https://pbs.twimg.com/profile_images/1092180043252543489/dhvinD0d.jpg"),
              ),
              Spacer(
                flex: 2,
              ),
              LoginDefualtButton(
                text: "Continue...",
                press: () {
                  setState(() {
                    _pageState = 1;
                    print("_pageState $_pageState");
                  });
                },
              ),
            ]),
          ),
        ), // Splash
        AnimatedContainer(
          curve: Curves.decelerate,
          duration: Duration(milliseconds: 300),
          decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              )),
          transform: Matrix4.translationValues(1, loginHeight, 1),
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                LoginDefualtButton(
                  text: "Register..",
                  press: () {
                    setState(() {
                      _pageState = 2;
                    });
                  },
                )
              ],
            ),
          ),
        ), //login

        AnimatedContainer(
          curve: Curves.decelerate,
          duration: Duration(milliseconds: 300),
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              )),
          transform: Matrix4.translationValues(1, RegisterHeight, 1),
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                LoginDefualtButton(
                  text: "Login..",
                  press: () {
                    setState(() {
                      _pageState = 1;
                    });
                  },
                )
              ],
            ),
          ),
        ), //register
      ]),
    );
  }
}
