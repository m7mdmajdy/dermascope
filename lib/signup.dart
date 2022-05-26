/*done*/
import 'dart:developer';
import 'dart:ui';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled/Login.dart';

class signUp extends StatefulWidget {
  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  var nameController = TextEditingController();

  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var phoneController = TextEditingController();

  var dateController = TextEditingController();

  sendInfo(var enteredName,var enteredEmail,var enteredPassword)async{
    try{
      var response = await http.post(Uri.parse("https://8149-197-39-123-113.eu.ngrok.io/user/signup"),
          body: {
            "name": enteredName.toString(),
            "email":enteredEmail.toString(),
            "password":enteredPassword.toString()
          }
      );

      if(response.statusCode==200){
        signedUpSuccessfully(context);
      }
      else {
        alreadyExist(context);
      }

    } catch(e){
      print(e);
    }
  }

  final TextEditingController _dateOfBirthController =
  TextEditingController(text: "01-01-2000");

  InputDecoration _getTextFieldWithCalendarIconDecoration() {
    return InputDecoration(
      labelText: 'Date of birth',
      labelStyle: TextStyle(color: Colors.white),
      fillColor: HexColor("#35698A").withOpacity(0.4), filled: true,
      border: OutlineInputBorder(),
      prefixIcon: Icon(
        Icons.date_range,
        color: Colors.white,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25.0),
        borderSide: BorderSide(
          color: Colors.white,
          width: 2.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /* appBar: AppBar(
          leading: Icon(Icons.account_circle_rounded),
          toolbarHeight: 45,
          backgroundColor: HexColor("#4c8cb5"),
          title: Text("Create an account",textDirection:TextDirection.ltr),
          titleTextStyle: TextStyle(fontSize: 20),
          foregroundColor: Colors.white,
          actions: <Widget>[
            // overflow menu
          ],
        ),*/
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
                    child: SingleChildScrollView(
                      child: Column(

                        crossAxisAlignment:CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 100.0,
                          ),
                          TextFormField(
                            controller: nameController,
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              labelText: 'Name',
                              labelStyle: TextStyle(color: Colors.white),
                              fillColor:  HexColor("#35698A").withOpacity(0.1), filled: true,
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(
                                Icons.account_circle_outlined,
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
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'Email Address',
                              labelStyle: TextStyle(color: Colors.white),
                              fillColor: HexColor("#35698A").withOpacity(0.1), filled: true,
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
                            controller: passwordController,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Colors.white),
                              fillColor:  HexColor("#35698A").withOpacity(0.1), filled: true,
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
                            height: 15.0,
                          ),
                          TextFormField(
                            controller: phoneController,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              labelText: 'Phone Number',
                              labelStyle: TextStyle(color: Colors.white),
                              fillColor:  HexColor("#35698A").withOpacity(0.1),filled: true,
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(
                                Icons.phone,
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
                                setState(() {
                                  DateTime now = DateTime.now();
                                  var formattedDate = DateFormat('EEEE, MMM d, yyyy').format(now);
                                  print(formattedDate);
                                  _dateOfBirthController.text=convertDateTimeDisplay(date.toString());
                                });
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
                              var emailText=emailController.text;
                              var passText=passwordController.text;
                              var phoneText=phoneController.text;
                              bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(emailText);
                              bool passwordValid=RegExp(r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$").hasMatch(passText);
                              var passwordText=passwordController.text;
                              if(emailText==""||passwordText==""){
                                showAlertDialog(context);
                              }
                              else if(emailValid==false||passwordValid==false||phoneText==""){
                                showAlertDialog(context);
                              }
                              else
                              {
                                sendInfo(nameController.text, emailController.text, passwordController.text);

                              }


                            },
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Text(
                                'Sign Up',
                                style: TextStyle(color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
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
              ),
            ],
          ),
        ),
      );
  }
  String convertDateTimeDisplay(String date) {
    final DateFormat displayFormater = DateFormat('yyyy-MM-dd HH:mm:ss.SSS');
    final DateFormat serverFormater = DateFormat('dd-MM-yyyy');
    final DateTime displayDate = displayFormater.parse(date);
    final String formatted = serverFormater.format(displayDate);
    return formatted;
  }

  showAlertDialog(BuildContext context) {

    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>signUp()));
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
  alreadyExist(BuildContext context) {

    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>signUp()));
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Can't login"),
      content: Text("This email is already signed up"),
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
  signedUpSuccessfully(BuildContext context) {

    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Well done!"),
      content: Text("Your account has been created successfully.Now log in again"),
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