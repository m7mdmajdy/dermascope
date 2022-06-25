import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:io';
import 'package:untitled/Login.dart';
import 'package:http/http.dart' as http;
import 'package:untitled/protection.dart';

class myResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const myResult(),
    );
  }
}

class myResult extends StatefulWidget {
  final String? email;
  final String? res;
  const myResult({Key? key, this.email, this.res}) : super(key: key);

  @override
  State<myResult> createState() => resultImage();
}

class resultImage extends State<myResult> {
  late var finalResult;
  var diseaseResult;
  var diseasePercent;
  var diseaseRes;
  var mappedRes;

  Future GetInfo(var diseaseName) async {
    try {
      var response = await http.post(
          Uri.parse("https://813d-196-153-127-101.eu.ngrok.io/diseases"),
          body: {
            "disease": diseaseName.toString(),
          });
      diseaseRes = response.body;
      mappedRes = jsonDecode(diseaseRes);
      sleep(const Duration(seconds: 2));
    } catch (e) {
      print(e);
    }
  }

  Future getResult() async {
    var response = await http
        .get(Uri.parse("https://813d-196-153-127-101.eu.ngrok.io/user/detect"));

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      diseaseResult = jsonResponse['resssss'];
      diseasePercent = jsonResponse['percent'];
      finalResult = diseaseResult;
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    setState(() {});
    sendResult(widget.email, finalResult.toString());
  }

  sendResult(var enteredEmail, var result) async {
    try {
      var response = await http.post(
          Uri.parse("https://813d-196-153-127-101.eu.ngrok.io/user/save"),
          body: {"email": enteredEmail.toString(), "image": result});
      GetInfo(result);
    } catch (e) {
      print(e);
    }
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
            'Result',
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
                  (route) => false,
                );
              },
            )
          ],
        ),
        //318FB5
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
            //color: Colors.white,
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: diseaseResult != null
                        ? Column(children: [
                            SizedBox(
                              height: 40,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "The probable disease is:",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w900,
                                    height: 2.5),
                              ),
                            ),
                            SizedBox(
                              height: 20,
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
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Text(
                                        diseaseResult.toUpperCase(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 20,
                                            color: Colors.black),
                                      ),


                                    ],
                                  ),
                                ),
                              ),
                            ),
                      Row(
                        children: [Text(
                              "\nThe approximated accuracy: \n",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                        ]
                      ),
                      Text(
                            diseasePercent+"%",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 70,
                            color: Colors.black),
                      ),
                            SizedBox(
                              height: 50,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "To know more about the disease, click on the button below",
                                style: TextStyle(
                                  color: HexColor("646FD4"),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ])
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 200),
                              Text(
                                "Thank you for using Dermascope!",
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87),
                              ),
                              SizedBox(height: 60),
                              Row(children: [
                                Icon(
                                  Icons.check_circle,
                                  size: 35,
                                  color: Colors.black87,
                                ),
                                Text(
                                  "The result is ready for you!",
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                ),
                              ])
                            ],
                          )),
                Padding(
                  padding: const EdgeInsets.all(90.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Column(children: [
                      diseaseResult == null
                          ? ElevatedButton(
                              onPressed: () async {
                                getResult();
                                setState(() {
                                  newForm();
                                });
                              },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color(0xff646FD4)),
                      shape:
                      MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0),
                            side: BorderSide(color: HexColor("#4c8cb5"))),
                      ),
                    ),

                              child: Row(
                                children: [Icon(Icons.done),
                                  Text(
                                  "Click here to show result",
                                ),

                                ]
                              ),
                            )
                          : SizedBox(
                              height: 0,
                            ),
                      diseaseResult != null
                          ? ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyStatefulWidget(
                                              diseaseDescription:
                                                  mappedRes["description"],
                                              diseaseProtection:
                                                  mappedRes["protection"],
                                              diseaseTreatment:
                                                  mappedRes["treatement"],
                                              diseaseSymptoms:
                                                  mappedRes["symptoms"],
                                              diseaseLink1: mappedRes["link1"],
                                              diseaseLink2: mappedRes["link2"],
                                            )));
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    HexColor("646FD4")),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      side:
                                          BorderSide(color: HexColor("#4c8cb5"))),
                                ),
                              ),
                              child: Row(children: [
                                Icon(Icons.info_outline),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "More information",
                                  style: TextStyle(
                                    fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )
                              ]),
                            )
                          : Text("")
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget newForm() {
    return Text("SSSSS");
  }
}

class Results {
  String res = "";
  Results(this.res);
}
