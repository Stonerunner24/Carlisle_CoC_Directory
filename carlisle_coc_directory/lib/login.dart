//LOGIN PAGE

import 'package:flutter/material.dart';
import 'dart:ui';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  @override
  Widget build(BuildContext context){
    Color containerColor = convertFromHex("#35dbff");
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/Login.png"),
          )
        ),
      child: Align(
        alignment: Alignment.bottomCenter,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: containerColor.withOpacity(0.1),
              border: Border.all(
                color: Colors.white.withOpacity(0.3)
              )
            ),
            margin: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              bottom: 16.0,
              top: 460.0
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(
                    left: 27.0,
                    right: 27.0,
                    top: 24.0,
                  ),
                  child: Text(
                    'Carlisle Login',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 27.0,
                    right: 27.0,
                    top: 17.0
                  ),
                  child: Container(
                    height: 2.0,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2)
                    ),
                  ),
                ) 
              ],
            ),
            // child: BackdropFilter(
            //   filter: ImageFilter.blur(
            //     sigmaX: 5.0,
            //     sigmaY: 5.0
            //   ),
            // ),
          ),
        ),
      ),
    );
  }

  Color convertFromHex(String hexColor){
    return Color(int.parse(hexColor.substring(1,7), radix: 16) + 0xFF000000);
  }
}