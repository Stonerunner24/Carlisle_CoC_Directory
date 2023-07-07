//WELCOME PAGE

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'login.dart';

void main() {
  runApp(const Directory());
}

class Directory extends StatelessWidget {
  const Directory({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const WelcomePage(title: 'Welcome Page'), 
    );
  }
}

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key, required this.title});
  final String title;
  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/Home.png"),
          )
        ),
        child: Container(
          margin: const EdgeInsets.only(
            left: 32.0,
            right: 32.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(
                  top: 48.0,
                  left: 48.0,
                  right: 48.0,
                  bottom: 618.0,
                ),
                child: Text(
                  'WELCOME',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 50
                  ),
                ),
              ),
              ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                  foregroundColor: MaterialStatePropertyAll<Color>(Colors.black),
                  shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(borderRadius: BorderRadius.zero)
                  ),
                  padding: MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.all(12.0)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.bottomToTop,
                      child: const LoginPage(),
                      // childCurrent: widget
                    ),
                  );
                }, 
                child: const Text(
                  'LOGIN',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20
                  ),
                )
              )
            ]
          ),
        ),
      )
    );
  }
}
