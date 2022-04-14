import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled/uploadImage.dart';


class uploadedImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.image),
        toolbarHeight: 40,
        backgroundColor: HexColor("#4c8cb5"),

        title: Text("Confirm image"),
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
                     // Image(image: AssetImage()),
                      Icon(Icons.image,size: 20,color: Colors.white.withOpacity(0.5),),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 40.0),
                            child: ElevatedButton(onPressed:(){


                            },
                                style: ButtonStyle(

                                    backgroundColor: MaterialStateProperty.all<Color>(HexColor("#4c8cb5")),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(100.0),
                                            side: BorderSide(color: HexColor("#4c8cb5"))
                                        )
                                    )
                                ),

                                child: Text("Start detection")),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60.0),
                            child: ElevatedButton(onPressed: (){
                             // Navigator.push(context, MaterialPageRoute(builder: (context)=>uploadImage()));

                            },
                              style: ButtonStyle(

                                  backgroundColor: MaterialStateProperty.all<Color>(HexColor("#4c8cb5")),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(100.0),
                                          side: BorderSide(color: HexColor("#4c8cb5"))
                                      )
                                  )
                              ),
                              child: Text("Try again"),),
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


/*
Future upload_image() async{
    await ImagePicker().pickImage(source: ImageSource.camera);
  }
  Future open_camera() async{
    await ImagePicker().pickImage(source: ImageSource.gallery);
  }
 */


/*
Center(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(onPressed:upload_image,child: Text("Choose from gallery")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(onPressed: open_camera,child: Text("Open camera"),),
            ),


          ],
        ),
      ),
*/