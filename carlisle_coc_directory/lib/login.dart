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
      resizeToAvoidBottomInset: true,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/Login.png"),
          )
        ),
        child: SingleChildScrollView(
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
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 27.0,
                      right: 27.0,
                      top: 24.0,
                    ),
                    child: Text(
                      'Email or Username',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 27.0,
                      right: 27.0,
                      top: 4.0
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'foreverfaithful@gmail.com',
                        hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 27.0,
                      right: 27.0,
                      top: 24.0,
                    ),
                    child: Text(
                      'Password',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 27.0,
                      right: 27.0,
                      top: 4.0
                    ),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: '********',
                        hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 27.0,
                      right: 27.0,
                      top: 24.0,
                      bottom: 48.0
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        TextButton(
                          onPressed: null,
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontSize: 12,
                            )
                          ),
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                            foregroundColor: MaterialStatePropertyAll<Color>(Colors.black),
                            shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                              RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2.0)))
                            ),
                            padding: MaterialStatePropertyAll<EdgeInsets>(
                              EdgeInsets.only(
                                left: 29.0,
                                right: 29.0,
                                top: 4.0,
                                bottom: 4.0
                              )
                            ),
                          ),
                          onPressed: null, 
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14 
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Color convertFromHex(String hexColor){
    return Color(int.parse(hexColor.substring(1,7), radix: 16) + 0xFF000000);
  }
}