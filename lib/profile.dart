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

  File? selectedImage;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery ,maxWidth: 480, maxHeight: 600);
      if(image == null){return;}
      final imageTemp = File(image.path);
      setState(() => this.selectedImage = imageTemp);
      Navigator.pop(context, true);

    } on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
  }
  Future pickImageC() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if(image == null) return;
      final imageTemp = File(image.path);
      setState(() => this.selectedImage = imageTemp);
    } on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff35698A),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          backgroundColor: Color(0xffC1D6F1FF),
          title: Text(
            'Profile',
            style: TextStyle(
                color: Color(0xff35698A),
                fontWeight: FontWeight.bold,
                fontSize: 25.0),
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
                  (route) => route.isFirst,
                );
              },
            )
          ],
        ),
        body: Container(
          child: Column(children: [
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                " Name:",
                style: TextStyle(
                    color: Color(0xffC1D6F1FF),
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
                    color: Color(0xffC1D6F1FF),
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
                    color: Color(0xffC1D6F1FF),
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
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.menu_close,
          backgroundColor: HexColor("#4c8cb5"),
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
