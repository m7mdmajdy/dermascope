/*done*/
import 'dart:ui';
import 'package:untitled/Login.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  final Uri _url = Uri.parse('https://t.me/Maajdy');
  void _launchUrl() async {
    if (!await launchUrl(_url)) throw 'Could not launch $_url';
  }

  @override
  Widget build (BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff35698A),
        appBar: AppBar(
          leading: InkWell(
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
            'Consult a doctor' ,
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
        body:
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      10.0
                  ),
                  color: Colors.grey[200],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children:[
                      Icon(
                        Icons.medical_services,color: Color(0xff35698A),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Choose the doctor you want to connect with',
                        style:
                        TextStyle( fontSize:15 ,color:Color(0xff35698A)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height:30.0,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children:
                        [
                          Container(
                            width: 70.0,
                            height: 70.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              //const Color(0xff7c94b6),
                              image: DecorationImage(
                                image: AssetImage("images/d.png"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.all( Radius.circular(50.0)),
                              border: Border.all(
                                color: Colors.white,
                                width: 4.0,
                              ),
                            ),
                          ),
                          /*CircleAvatar(
                            backgroundColor: Colors.white, //border color
                            child: Padding(
                              padding: const EdgeInsets.all(1.0), //border size
                              child: CircleAvatar(
                                radius: 50.0,
                                backgroundImage: NetworkImage('https://as2.ftcdn.net/v2/jpg/00/28/98/11/1000_F_28981140_Ctcm3S25CyV8DYw7FIbDn9z9yyOwN6DP.jpg'),
                              ),
                            ),
                          ),*/
                          SizedBox(
                            width: 20.0,
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () => launch(
                    "https://t.me/Onte0",
                    forceSafariVC: false),
                                child: Text(
                                  'Doctor 1' ,
                                  style: TextStyle(
                                    fontSize: 20.0 ,
                                    fontWeight: FontWeight.bold ,
                                    color: Colors.white ,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),

                            ],
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                        ],
                      ),
                      SizedBox(
                        height:30.0,
                      ),
                      Row(
                        children:
                        [
                          Container(
                            width: 70.0,
                            height: 70.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              //const Color(0xff7c94b6),
                              image: DecorationImage(
                                image: AssetImage("images/d.png"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.all( Radius.circular(50.0)),
                              border: Border.all(
                                color: Colors.white,
                                width: 4.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Column(
                            children: [
                              Text(
                                'Doctor 2' ,
                                style: TextStyle(
                                  fontSize: 18.0 ,
                                  fontWeight: FontWeight.bold ,
                                  color: Colors.white ,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),

                            ],
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                        ],
                      ),
                      SizedBox(
                        height:30.0,
                      ),
                      Row(
                        children:
                        [
                          Container(
                            width: 70.0,
                            height: 70.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              //const Color(0xff7c94b6),
                              image: DecorationImage(
                                image: AssetImage("images/d.png"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.all( Radius.circular(50.0)),
                              border: Border.all(
                                color: Colors.white,
                                width: 4.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Column(
                            children: [
                              Text(
                                'Doctor 3' ,
                                style: TextStyle(
                                  fontSize: 20.0 ,
                                  fontWeight: FontWeight.bold ,
                                  color: Colors.white ,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),

                            ],
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                        ],
                      ),
                      SizedBox(
                        height:30.0,
                      ),
                      Row(
                        children:
                        [
                          Container(
                            width: 70.0,
                            height: 70.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              //const Color(0xff7c94b6),
                              image: DecorationImage(
                                image: AssetImage("images/d.png"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.all( Radius.circular(50.0)),
                              border: Border.all(
                                color: Colors.white,
                                width: 4.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () => launch(
                                    "https://t.me/Maajdy",
                                    forceSafariVC: false),
                                child: Text(
                                  'Doctor 4' ,
                                  style: TextStyle(
                                    fontSize: 20.0 ,
                                    fontWeight: FontWeight.bold ,
                                    color: Colors.white ,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                        ],
                      ),
                      SizedBox(
                        height:30.0,
                      ),

                      SizedBox(
                        height:30.0,
                      ),

                    ],
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
