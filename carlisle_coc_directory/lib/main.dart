import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'), 
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
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
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                  foregroundColor: MaterialStatePropertyAll<Color>(Colors.black),
                  shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(borderRadius: BorderRadius.zero)
                  ),
                  padding: MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.all(12.0)),
                ),
                //TODO: IMPLEMENT PAGE SWITCH ON PRESSED
                onPressed: null, 
                child: Text(
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
