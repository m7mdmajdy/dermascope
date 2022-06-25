import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled/profile.dart';
class welcomeScreen extends StatefulWidget {
  @override
  State<welcomeScreen> createState() => _welcomeScreenState();
  final String? email;
  final String? name;
  final String? lastDiagnose;
  const welcomeScreen({Key? key, this.email,this.name, this.lastDiagnose}) : super(key: key);
}

class _welcomeScreenState extends State<welcomeScreen> {
  get height => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color:Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 50,),
                  Container(
                      height : 300 ,
                      child: Image.asset(
                        'images/layer.png',
                        height: 300,
                        width: 300,

                      )
                  ),

                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "  What is Dermascope?",
                      style: TextStyle(
                          color: Color(0xff646FD4),
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          height: 2.5),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                       /* Icon(
                          Icons.info,
                          color: Color(0xff35698A),
                        ),*/
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "Dermascope is a software is developed for patients\nwho suffer from skin dieases and don't prefer to go\nto doctor"
                              " specially after the COVID-19 infection.\n"
                              "Dermascope can pre-diagnose the skin disease by \njust capturing the skin lesion and it will show the \n"
                              "probable disease.",
                          style:
                          TextStyle(fontWeight:FontWeight.w400,fontSize: 15, color: Color(0xff35698A)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [

                  FloatingActionButton.extended(
                    onPressed: () {
                      Navigator.push(this.context, MaterialPageRoute(builder: (context)=>profile(email: widget.email,
                        name: widget.name, lastDiagnose: widget.lastDiagnose,)));
                    },
                    label: const Text('Click here to start'),
                    icon: const Icon(Icons.arrow_circle_up_sharp),
                    backgroundColor: Color(0xff646FD4),
                    foregroundColor: Colors.white,
                    splashColor: Colors.white,

                  ),

                ],
              )
            ],

          ),
        ),
      ),
    );
  }
}
