import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
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

  const myResult({Key? key}) : super(key: key);
  @override
  State<myResult> createState() => resultImage();
}
class resultImage extends State<myResult>{
  var diseaseResult;
  Future getResult()async{
    String rawJson = '{"name":"Mary","age":30}';
    print("TTTTTTTTTTTTT");

    var response=
    await http.get(Uri.parse("https://4933-156-195-59-92.eu.ngrok.io"));
    print("OOOOOOOOOOOOOOOOOO");

    if (response.statusCode == 200) {
      print("EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE");
      print(response.runtimeType);
      var jsonResponse =
      jsonDecode(response.body);
      print("@@@@@@@@@@@@@@@@");
      diseaseResult = jsonResponse['resssss'];
      print('Number of books about http: $diseaseResult.');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
/*
  var jsonData = convert.jsonDecode(response.body);
  print("IIIIIIIIIIIIIIII");
  List<Results> myResult=[];
  print("EEEEEEEEEEE");

  for(var u in jsonData){
    Results res=Results(u['greetings']);
    myResult.add(res);
    print("qqqqqqqq");
  }
  print(myResult.length);
  print("sssss");
  return myResult;
}
*/
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 78,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'Result',
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            size: 35.0,
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),

            child: /*Text(
              'Acne',
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),*/
            diseaseResult != null ? Text(
              diseaseResult,
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ): Text(
              " ",
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
          ),
          /*Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 15.0,
              ),
              Expanded(
                child: Image(
                  image: NetworkImage(
                      'https://assets.nhs.uk/nhsuk-cms/images/S_0917_acne_M1080444.max-600x600.jpg'),
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Expanded(
                child: Image(
                  image: NetworkImage(
                      'https://assets.nhs.uk/nhsuk-cms/images/S_0917_acne_M1080444.max-600x600.jpg'),
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Acne is a skin condition that occurs when your hair follicles become plugged with oil and dead skin cells. It causes whiteheads, blackheads or pimples. Acne is most common among teenagers, though it affects people of all ages.' ,
              style:
              TextStyle(
                fontSize:25.0,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),*/
          Padding(
            padding: const EdgeInsets.all(100.0),
            child: Align(alignment:Alignment.bottomLeft,
              child:
              RaisedButton(
                onPressed: (){
                  getResult();
                  setState(() {
                    newForm();
                  });
                  },
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Text(

                  "Click here to show result",
                  style: TextStyle(
                    color: Colors.white,)
                  ,),
              ),
            ),
          ),

        ],
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