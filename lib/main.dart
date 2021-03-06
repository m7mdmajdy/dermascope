import 'dart:async';
import 'package:flutter/material.dart';
import 'package:untitled/Login.dart';
import 'package:untitled/profile.dart';
import 'package:untitled/signup.dart';
import 'package:untitled/uploadImage.dart';
import 'package:untitled/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home:Login(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<MyHomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),navigateToSecondPage);
  }
  void navigateToSecondPage(){
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => Login(),
      ),
          (route) => false,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(66, 107, 255, 1),
                  Color.fromRGBO(164, 183, 193, 1)
                ],
              )
          ),
          child: Center(
            child: Column(
              children:[Flexible(
                child: Container(
                ),
                flex: 1,
              ), Flexible(
                child: Center(
                  child: Image(
                    width: 200,
                    height: 200,
                    image: AssetImage("images/logo.png"),
                  ),
                ),
                flex: 1,
              ),
                Flexible(
                  child: CircularProgressIndicator(
                    color: Colors.orange[100],
                    backgroundColor: Colors.red,
                  ),
                  flex: 1,
                )
              ]
            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


