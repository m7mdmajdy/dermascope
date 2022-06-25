import 'dart:ui';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled/signup.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:untitled/welcome.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var mappedRes;
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  postData(var enteredEmail, var enteredPassword) async {
    try {
      var response = await http.post(
          Uri.parse("https://813d-196-153-127-101.eu.ngrok.io/user/login"),
          body: {
            "email": enteredEmail.toString(),
            "password": enteredPassword.toString()
          });
      var fe = response.body.toString();
      mappedRes = jsonDecode(fe);

      if (response.statusCode == 200) {
        Navigator.push(
            this.context,
            MaterialPageRoute(
                builder: (context) => welcomeScreen(
                      email: mappedRes['email'],
                      name: mappedRes['name'],
                      lastDiagnose: mappedRes['result'],
                    )));
      } else {
        showAlertDialog(this.context);
      }

      print("Email and password has successfully sent to api");
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Stack(
            children: [
              Opacity(
                opacity: 0.5,
                child: ClipPath(
                  clipper: WaveClipper(),
                  child: Container(
                    color: HexColor("#8CC0DE").withOpacity(0.6),
                    height: 580,
                  ),
                ),
              ),
              ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  color: Color(0xff646FD4),
                  height: 560,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.account_circle_outlined,
                            size: 60, color: Colors.white),
                        SizedBox(
                          height: 35.0,
                        ),
                        TextFormField(
                          style: TextStyle(color: Colors.white),
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Email Address',
                            labelStyle: TextStyle(color: Colors.white),
                            fillColor: HexColor("#8CC0DE").withOpacity(0.1),
                            filled: true,
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.white,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Colors.white,
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
                          style: TextStyle(color: Colors.white),
                          controller: passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.white),
                            fillColor: HexColor("#8CC0DE").withOpacity(0.1),
                            filled: true,
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                            suffixIcon: Icon(
                              Icons.remove_red_eye,
                              color: Colors.white,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Colors.white,
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
                        Container(
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        HexColor("#FFF3E6")),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(100.0),
                                            side: BorderSide(
                                                color: HexColor("#4c8cb5"))))),
                                onPressed: () {
                                  var emailText = emailController.text;
                                  var passText = passwordController.text;
                                  bool emailValid = RegExp(
                                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                      .hasMatch(emailText);
                                  bool passwordValid = RegExp(
                                          r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$")
                                      .hasMatch(passText);
                                  var passwordText = passwordController.text;
                                  if (emailText == "" || passwordText == "") {
                                    showAlertDialog(context);
                                  } else if (emailValid == false ||
                                      passwordValid == false) {
                                    showAlertDialog(context);
                                  } else {
                                    postData(emailText, passText);
                                  }
                                },
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                        color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 85.0, top: 5),
                              child: Row(
                                children: [
                                  Text(
                                    "Don't have account? ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => signUp()));
                                    },
                                    child: Text(
                                      " Sign up",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ]),
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

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context, true);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Can't login"),
      content: Text("Invalid email or password."),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = new Path();
    path.lineTo(
        0, size.height); //start path with this if you are making at bottom

    var firstStart = Offset(size.width / 5, size.height);
    //fist point of quadratic bezier curve
    var firstEnd = Offset(size.width / 2.25, size.height - 50.0);
    //second point of quadratic bezier curve
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart =
        Offset(size.width - (size.width / 3.24), size.height - 105);
    //third point of quadratic bezier curve
    var secondEnd = Offset(size.width, size.height - 10);
    //fourth point of quadratic bezier curve
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(
        size.width, 0); //end with this path if you are making wave at bottom
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
