import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled/Login.dart';
import 'package:untitled/patientchat.dart';
import 'package:untitled/uploadImage.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter/services.dart';

class profile extends StatefulWidget {
  final String? email;
  final String? name;
  final String? lastDiagnose;
  const profile({Key? key, this.email,this.name, this.lastDiagnose}) : super(key: key);

  @override
  State<profile> createState() => profileForm();
}

class profileForm extends State<profile> {

String name(String x){
    var n=x[0];

    for (var i =0;i<x.length;i++){
      if (x[i]!=" ")
        {continue;}
      else{
        n=n+x[i+1];
      }
    }

    return n;
}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: InkWell(
              onTap: () {
                Navigator.pop(context, true);
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            backgroundColor: Color(0xff646FD4),
          title: Text(
            'Profile',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25.0),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Login(),
                  ),
                  (route) => route.isFirst,
                );
              },
            )
          ],
        ),
        body: Container(
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.dstIn),
              image: AssetImage("images/dood.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            child: Column(children: [
              SizedBox(height: 30,),
              Container(
                width: 70,
                height: 70,
                child: Center(
                  child: Text(name(widget.name.toString().toUpperCase()),
                  style: TextStyle(fontSize: 25,color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff646FD4)),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  " Name:",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      height: 2.5),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[200],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.account_box,
                          color: Color(0xff35698A),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          widget.name.toString(),
                          style:
                              TextStyle(fontSize: 15, color: Color(0xff35698A)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  " Email Address:",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      height: 2.5),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[200],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.email,
                          color: Color(0xff35698A),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          widget.email.toString(),
                          style:
                              TextStyle(fontSize: 15, color: Color(0xff35698A)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  " Last Diagnose:",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      height: 2.5),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[200],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.medical_services,
                          color: Color(0xff35698A),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          widget.lastDiagnose.toString().toUpperCase(),
                          style:
                              TextStyle(fontSize: 15, color: Color(0xff35698A)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.menu_close,
          backgroundColor: Color(0xff646FD4),
          overlayColor: Colors.white,
          overlayOpacity: 0.08,
          children: [
            SpeedDialChild(
              label: "Add new case",
              child: Icon(Icons.add),
              onTap: (){
                Navigator.push(this.context, MaterialPageRoute(builder: (context)=>myApp(email: widget.email)));
              }
            ),
            SpeedDialChild(
              label: "Contact doctor directly",
              child: Icon(Icons.contact_mail),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Chat()));
              }
            )
          ],
        )
      ),
    );
  }

  void navigateToSecondPage() {
    // Navigator.push(context, MaterialPageRoute(builder: (context)=>myResult(email: widget.email,res: diseaseResult,)));
  }

  }
