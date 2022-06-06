import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:untitled/Login.dart';
import 'package:http/http.dart' as http;
import 'package:untitled/protection.dart';
import 'package:untitled/uploadImage.dart' as uu;
class myResultPage extends StatelessWidget{

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
class myResult extends StatefulWidget{
  final String? email;
  final String? res;
  const myResult({Key? key, this.email, this.res}) : super(key: key);

  @override
  State<myResult> createState() => resultImage();
}
class resultImage extends State<myResult>{
  late var finalResult;
  var diseaseResult;
  var diseaseRes;
  var mappedRes;

  Future GetInfo(var diseaseName)async{

    try{
      var response = await http.post(Uri.parse("https://36bb-197-39-38-140.eu.ngrok.io/diseases"),
          body: {
            "disease": diseaseName.toString(),
          }
      );
      diseaseRes=response.body;

      print("888888888888888888888888");
      //print(diseaseName);
      print(diseaseRes.runtimeType);
      print(diseaseRes);
      mappedRes = jsonDecode(diseaseRes);
      print(mappedRes.runtimeType);
      print(mappedRes["protection"]);
      sleep(const Duration(seconds:2));

    } catch(e){
      print("ERRRRRRRRRRRRRRRRRRRRRR");
      print(e);
    }
  }

  Future getResult()async{

    var response=
    await http.get(Uri.parse("https://36bb-197-39-38-140.eu.ngrok.io/user/detect"));
    print("OOOOOOOOOOOOOOOOOO");

    if (response.statusCode == 200) {
      print("EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE");
      print(response.runtimeType);
      var jsonResponse =
      jsonDecode(response.body);
      print("@@@@@@@@@@@@@@@@");
      diseaseResult = jsonResponse['resssss'];
      print('Number of books about http: $diseaseResult.');
      print("================");
      print(diseaseResult);
      print("==============");
      finalResult=diseaseResult;
      print(finalResult);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    setState(() {
    });
    sendResult(widget.email, finalResult.toString());
  }

  sendResult(var enteredEmail,var result)async{
    print("ZZZZZZZZZZZZ");
    print(result);
    try{
      var response = await http.post(Uri.parse("https://36bb-197-39-38-140.eu.ngrok.io/user/save"),
          body: {
            "email": enteredEmail.toString(),
            "image": result
          }
      );
      print(response.body);
      print("sdsaasdasdasdasd");
      print(result);
      print("%5%%%%%%%%");
      print("Email and result has successfully sent to database");
      GetInfo(result);


    } catch(e){
      print("ERRRRRRRRRRRRRRRRRRRRRR");
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff35698A),
        appBar: AppBar(leading: InkWell(
          onTap: () {
            Navigator.pop(context, true);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
          ),
        ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),),
          backgroundColor: Color(0xffC1D6F1FF),
          title: Text(
            'Result' ,
            style:TextStyle(
                color: Color(0xff35698A)  , fontWeight:FontWeight.bold, fontSize: 25.0
            ),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.logout,
                color: Colors.black54,
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
        body: Container(
          color: HexColor("#35698A"),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),

                child:
                diseaseResult != null ? Column(
                  children: [
                    SizedBox(height: 100,),
                    Text(
                      "The detected disease is:",
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue),
                    ),
                    SizedBox(height: 10,),
                    Text(
                    diseaseResult,
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow),
                  ),
                    SizedBox(height: 100,),
                    Text(
                      "Click on the button below to know more about the disease",
                      style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70),
                    ),

                  ]
                ): Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 200),
                    Text(
                      "Thank you for using Dermascope!",
                      style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white60),
                    ),
                    SizedBox(height: 70),
                    Row(
                      children: [
                        Icon(Icons.check_circle,size: 35,color: Colors.white.withOpacity(0.3),),
                        Text(
                        "The result is ready for you!",
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white60),
                      ),
                      ]
                    )
                  ],
                )
              ),
              Padding(
                padding: const EdgeInsets.all(100.0),
                child: Align(alignment:Alignment.bottomLeft,
                  child:
                  Column(
                    children: [
                      diseaseResult==null?ElevatedButton(
                      onPressed: ()async{
                        getResult();
                        setState(() {
                          newForm();
                        });
                      },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(HexColor("#4c8cb5")),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.0),
                                side: BorderSide(color: HexColor("#4c8cb5"))
                            ),
                          ),
                        ),
                      child: Text(

                        "Click here to show result",
                        style: TextStyle(
                          color: Colors.white,)
                        ,),
                    )
                          :
                          SizedBox(height: 0,),
                      diseaseResult != null? /*RaisedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>protection()));
                        },
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(

                          "More information",
                          style: TextStyle(
                            color: Colors.white,)
                          ,),
                      )*/
                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MyStatefulWidget(
                          diseaseDescription: mappedRes["description"],diseaseProtection: mappedRes["protection"],
                          diseaseTreatment: mappedRes["treatement"],diseaseSymptoms: mappedRes["symptoms"],
                          diseaseLink1: mappedRes["link1"],diseaseLink2: mappedRes["link2"],
                      )));},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(HexColor("#4c8cb5")),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.0),
                                side: BorderSide(color: HexColor("#4c8cb5"))
                            ),
                          ),
                        ),
                        child: Row(children: [
                          Icon(Icons.info_outline),
                          SizedBox(width: 5,),
                          Text("More information",
                            style: TextStyle(fontSize: 16),
                          )

                        ]),)
                          :
                  Text("")

                    ]
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
  Widget newForm (){
    return Text("SSSSS");
  }
}
class Results{
  String res="";
  Results(this.res);
}