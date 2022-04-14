import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled/signup.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:flutter/services.dart';
class myHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const myApp(),
    );
  }

}

class myApp extends StatefulWidget{
  const myApp({Key? key}) : super(key: key);
  @override
  State<myApp> createState() => uploadImage();
  }

class uploadImage extends State<myApp>{
  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery ,maxWidth: 480, maxHeight: 600);

      if(image == null){print("HHHHHHHHHHHHHHHHHHHHHHHH"); return;}

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
    } on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
  }

  Future pickImageC() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);

      if(image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
      print('GGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG');
    } on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.image),
        toolbarHeight: 40,
        backgroundColor: HexColor("#4c8cb5"),

        title: Text("Uploaaaad image"),
        titleTextStyle: TextStyle(fontSize: 20),
        foregroundColor: Colors.white,
        actions: <Widget>[
          // overflow menu
        ],
      ),
      body:Container(
        child: Stack(
          children: [
            Opacity(opacity: 0.5,
              child: ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  color: HexColor("#35698A").withOpacity(0.6),
                  height: 580,
                ),
              ),
            ),
            ClipPath(
              clipper: WaveClipper(),
              child: Container(
                color: HexColor("#35698A"),
                height: 560,
                child:Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      SizedBox(
                        height: 35.0,
                      ),
                      image != null ? Image.file(image!,width: 50,height: 50,): Icon(Icons.image,size: 250,color: Colors.white.withOpacity(0.5),),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: ElevatedButton(onPressed:pickImageC,
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
                                  Icon(Icons.camera_alt),
                                  SizedBox(width: 4,),
                                  Text("Open camera"),
                                ])),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: ElevatedButton(onPressed: pickImage,
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
                                Icon(Icons.image_outlined),
                                SizedBox(width: 4,),
                                Text("Choose from gallery")]),),
                          ),


                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
}