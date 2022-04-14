import 'dart:ui';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {

  @override
  Widget build (BuildContext context)
  {
    return Scaffold(
      backgroundColor:Colors.blueAccent,
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),),
        backgroundColor: Colors.white,
        title: Text(
          'Chat' ,
          style:TextStyle(
              color: Colors.blueAccent  , fontWeight:FontWeight.bold, fontSize: 25.0
          ),
        ),
        centerTitle: true,
        /*actions: [
          IconButton(
            icon :CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.camera_alt,
                size: 18.0,
                color: Colors.white,
              ),
            ),
              onPressed: (){},
            ),
          IconButton(
            icon :CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                size: 18.0,
                color: Colors.white,
              ),
            ),
            onPressed: (){},
          ),
        ],*/
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
                      Icons.search,color: Colors.blueAccent,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Search',
                      style:
                      TextStyle( color: Colors.blueAccent),
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
                              image: NetworkImage('https://as2.ftcdn.net/v2/jpg/00/28/98/11/1000_F_28981140_Ctcm3S25CyV8DYw7FIbDn9z9yyOwN6DP.jpg'),
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
                            Text(
                              'User 2' ,
                              style: TextStyle(
                                fontSize: 20.0 ,
                                fontWeight: FontWeight.bold ,
                                color: Colors.white ,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'hello ' ,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
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
                              image: NetworkImage('https://as2.ftcdn.net/v2/jpg/00/28/98/11/1000_F_28981140_Ctcm3S25CyV8DYw7FIbDn9z9yyOwN6DP.jpg'),
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
                              'User 3' ,
                              style: TextStyle(
                                fontSize: 18.0 ,
                                fontWeight: FontWeight.bold ,
                                color: Colors.white ,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'hello ' ,
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white,
                              ),
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
                              image: NetworkImage('https://as2.ftcdn.net/v2/jpg/00/28/98/11/1000_F_28981140_Ctcm3S25CyV8DYw7FIbDn9z9yyOwN6DP.jpg'),
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
                              'User 4' ,
                              style: TextStyle(
                                fontSize: 20.0 ,
                                fontWeight: FontWeight.bold ,
                                color: Colors.white ,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'hello ' ,
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                              ),
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
                              image: NetworkImage('https://as2.ftcdn.net/v2/jpg/00/28/98/11/1000_F_28981140_Ctcm3S25CyV8DYw7FIbDn9z9yyOwN6DP.jpg'),
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
                              'User 4' ,
                              style: TextStyle(
                                fontSize: 20.0 ,
                                fontWeight: FontWeight.bold ,
                                color: Colors.white ,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'hello ' ,
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                              ),
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
                              image: NetworkImage('https://as2.ftcdn.net/v2/jpg/00/28/98/11/1000_F_28981140_Ctcm3S25CyV8DYw7FIbDn9z9yyOwN6DP.jpg'),
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
                              'User 5' ,
                              style: TextStyle(
                                fontSize: 20.0 ,
                                fontWeight: FontWeight.bold ,
                                color: Colors.white ,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'hello ' ,
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                              ),
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
                              image: NetworkImage('https://as2.ftcdn.net/v2/jpg/00/28/98/11/1000_F_28981140_Ctcm3S25CyV8DYw7FIbDn9z9yyOwN6DP.jpg'),
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
                              'User 5' ,
                              style: TextStyle(
                                fontSize: 20.0 ,
                                fontWeight: FontWeight.bold ,
                                color: Colors.white ,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'hello ' ,
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                              ),
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
                              image: NetworkImage('https://as2.ftcdn.net/v2/jpg/00/28/98/11/1000_F_28981140_Ctcm3S25CyV8DYw7FIbDn9z9yyOwN6DP.jpg'),
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
                              'User 6' ,
                              style: TextStyle(
                                fontSize: 20.0 ,
                                fontWeight: FontWeight.bold ,
                                color: Colors.white ,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'hello ' ,
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                              ),
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
                              image: NetworkImage('https://as2.ftcdn.net/v2/jpg/00/28/98/11/1000_F_28981140_Ctcm3S25CyV8DYw7FIbDn9z9yyOwN6DP.jpg'),
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
                              'User 7' ,
                              style: TextStyle(
                                fontSize: 20.0 ,
                                fontWeight: FontWeight.bold ,
                                color: Colors.white ,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'hello ' ,
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                              ),
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
                              image: NetworkImage('https://as2.ftcdn.net/v2/jpg/00/28/98/11/1000_F_28981140_Ctcm3S25CyV8DYw7FIbDn9z9yyOwN6DP.jpg'),
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
                              'User 8' ,
                              style: TextStyle(
                                fontSize: 20.0 ,
                                fontWeight: FontWeight.bold ,
                                color: Colors.white ,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'hello ' ,
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                              ),
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
                              image: NetworkImage('https://as2.ftcdn.net/v2/jpg/00/28/98/11/1000_F_28981140_Ctcm3S25CyV8DYw7FIbDn9z9yyOwN6DP.jpg'),
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
                              'User 9' ,
                              style: TextStyle(
                                fontSize: 20.0 ,
                                fontWeight: FontWeight.bold ,
                                color: Colors.white ,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'hello ' ,
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                              ),
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
                              image: NetworkImage('https://as2.ftcdn.net/v2/jpg/00/28/98/11/1000_F_28981140_Ctcm3S25CyV8DYw7FIbDn9z9yyOwN6DP.jpg'),
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
                              'User 10' ,
                              style: TextStyle(
                                fontSize: 20.0 ,
                                fontWeight: FontWeight.bold ,
                                color: Colors.white ,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'hello ' ,
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }

}
