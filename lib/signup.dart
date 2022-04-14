import 'dart:ui';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class signUp extends StatelessWidget {

  int radioGender=1;
  String groupGender='';

  final TextEditingController _dateOfBirthController =
  TextEditingController(text: "01-01-2000");
  InputDecoration _getTextFieldWithCalendarIconDecoration() {
    return InputDecoration(
      labelText: 'Date of birth',
      labelStyle: TextStyle(color: Colors.white),
      fillColor: HexColor("#ffffff"), filled: true,
      border: OutlineInputBorder(),
      prefixIcon: Icon(
        Icons.date_range,
        color: Colors.black,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25.0),
        borderSide: BorderSide(
          color: Colors.black,
          width: 2.0,
        ),
      ),
    );
  }
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();
  var dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.account_circle_rounded),
          toolbarHeight: 40,
          backgroundColor: HexColor("#4c8cb5"),
          centerTitle: true,
          title: Text("Create an account",textDirection:TextDirection.ltr),
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
                    height: 660,
                  ),
                ),
              ),
              ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  color: HexColor("#35698A"),
                  height: 640,
                  child:Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                          controller: nameController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            labelText: 'Name',
                            labelStyle: TextStyle(color: Colors.black),
                            fillColor: HexColor("#ffffff"), filled: true,
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(
                              Icons.face,
                              color: Colors.black,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 2.0,
                              ),
                            ),
                          ),

                          onFieldSubmitted: (String value) {
                            print(value);
                          },
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Email Address',
                            labelStyle: TextStyle(color: Colors.black),
                            fillColor: HexColor("#ffffff"), filled: true,
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.black,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 2.0,
                              ),
                            ),
                          ),

                          onFieldSubmitted: (String value) {
                            print(value);
                          },
                        ),
                        SizedBox(
                          height: 15.0,
                        ),

                        TextFormField(
                          controller: passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.black),
                            fillColor: HexColor("#ffffff"), filled: true,
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.black,
                            ),
                            suffixIcon: Icon(
                              Icons.remove_red_eye,
                              color: Colors.black,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 2.0,
                              ),
                            ),
                          ),
                          onFieldSubmitted: (String value) {
                            print(value);
                          },
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        TextFormField(
                          controller: phoneController,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            labelText: 'Phone Number',
                            labelStyle: TextStyle(color: Colors.black),
                            fillColor: HexColor("#ffffff"),filled: true,
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(
                              Icons.phone,
                              color: Colors.black,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 2.0,
                              ),
                            ),
                          ),

                          onFieldSubmitted: (String value) {
                            print(value);
                          },
                        ),
                        SizedBox(
                          height: 15.0,
                        ),

                        TextField(
                          showCursor: true,
                          readOnly: true,
                          onTap: () {
                            showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1940),
                                lastDate: DateTime.now())
                                .then((date) {
                              //code to handle date
                              print(date.toString());
                            });
                          },
                          controller: _dateOfBirthController,
                          decoration: _getTextFieldWithCalendarIconDecoration(),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),


                        ElevatedButton(
                            style: ButtonStyle(

                              backgroundColor: MaterialStateProperty.all<Color>(HexColor("#4c8cb5")),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(100.0),
                                        side: BorderSide(color: HexColor("#4c8cb5"))
                                    )
                                )
                            ),

                          onPressed: ()
                          {
                            print(emailController.text);
                            print(passwordController.text);
                            print(nameController.text);

                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.bold),


                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = new Path();
    path.lineTo(0, size.height); //start path with this if you are making at bottom

    var firstStart = Offset(size.width / 5, size.height);
    //fist point of quadratic bezier curve
    var firstEnd = Offset(size.width / 2.25, size.height - 50.0);
    //second point of quadratic bezier curve
    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart = Offset(size.width - (size.width / 3.24), size.height - 105);
    //third point of quadratic bezier curve
    var secondEnd = Offset(size.width, size.height - 10);
    //fourth point of quadratic bezier curve
    path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(size.width, 0); //end with this path if you are making wave at bottom
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}