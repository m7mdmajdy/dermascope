import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled/Login.dart';
import 'package:untitled/result2.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class myHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const myApp(),
      ),
    );
  }
}

class myApp extends StatefulWidget {
  final String? email;

  const myApp({Key? key, this.email}) : super(key: key);

  @override
  State<myApp> createState() => uploadImage();
}

class uploadImage extends State<myApp> {
  String? message = "";
  File? selectedImage;
  String? diseaseResult;
  String? sentDisease;

  imageToApi() async {
    final request = http.MultipartRequest(
        "POST", Uri.parse("https://813d-196-153-127-101.eu.ngrok.io/user/detect"));
    final headers = {"Content-type": "multipart/form-data"};
    request.files.add(http.MultipartFile('image',
        selectedImage!.readAsBytes().asStream(), selectedImage!.lengthSync(),
        filename: selectedImage!.path.split("/").last));
    request.headers.addAll(headers);
    final response = await request.send();
    http.Response res = await http.Response.fromStream(response);
    final resJson = jsonDecode(res.body);
    message = resJson['message'];
    setState(() {});
  }

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(
          source: ImageSource.gallery, maxWidth: 480, maxHeight: 600);
      if (image == null) {
        return;
      }
      final imageTemp = File(image.path);
      setState(() => this.selectedImage = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future pickImageC() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() => this.selectedImage = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
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
              'Upload image',
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
          body: Container(
            color: Colors.white,
            child: Container(
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                image: DecorationImage(
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.dstIn),
                  image: AssetImage("images/dood.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      selectedImage != null
                          ? Image.file(
                              selectedImage!,
                              width: 400,
                              height: 400,
                            )
                          : Icon(
                              Icons.image,
                              size: 250,
                              color: Color(0xff646FD4).withOpacity(0.8),
                            ),
                      SizedBox(height: 10, width: 10),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: ElevatedButton(
                                onPressed: pickImageC,
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color(0xff646FD4)),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                        side: BorderSide(
                                            color: HexColor("#4c8cb5"))),
                                  ),
                                ),
                                child: Row(children: [
                                  Icon(Icons.camera_alt),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text("Open camera"),
                                ])),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: ElevatedButton(
                              onPressed: pickImage,
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    Color(0xff646FD4)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100.0),
                                      side:
                                          BorderSide(color: HexColor("#4c8cb5"))),
                                ),
                              ),
                              child: Row(children: [
                                Icon(Icons.image_outlined),
                                SizedBox(
                                  width: 4,
                                ),
                                Text("Choose from gallery")
                              ]),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 30,
                        height: 30,
                      ),
                      selectedImage != null
                          ? SizedBox(
                              width: 300,
                              height: 40,
                              child: ElevatedButton(
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
                                child: Text("Start Detection"),
                                onPressed: () {
                                  imageToApi();
                                  print("ASDasdasd");
                                  print(diseaseResult);
                                  print(widget.email);
                                  navigateToSecondPage();
                                },
                              ),
                            )
                          : SizedBox(
                              width: 10,
                              height: 10,
                            ),
                    ]),
              ),
            ),
          )),
    );
  }

  void navigateToSecondPage() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => myResult(
                  email: widget.email,
                  res: diseaseResult,
                )));
  }
}
