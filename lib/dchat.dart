/*done */
import 'package:flutter/material.dart';
class PatientChat extends StatelessWidget {
  const PatientChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff35698A),
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        backgroundColor: Color(0xFFCDC2AE),
        title: Text(
          'Chat',
          style: TextStyle(
              color: Color(0xff35698A),
              fontWeight: FontWeight.bold,
              fontSize: 25.0),
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey[200],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Color(0xff35698A),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(color: Color(0xff35698A )),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 70.0,
                          height: 70.0,
                          decoration: BoxDecoration(
                            color: Color(0xffC1D6F1FF),
                            //const Color(0xff7c94b6),
                            image: DecorationImage(
                              image: NetworkImage('https://as2.ftcdn.net/v2/jpg/00/28/98/11/1000_F_28981140_Ctcm3S25CyV8DYw7FIbDn9z9yyOwN6DP.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all( Radius.circular(50.0)),
                            border: Border.all(
                              color:Color(0xFFC2DED1),
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
                              'Dr.albert',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'hello ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
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
                      height: 30.0,
                    ),
                    Row(
                      children: [
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
                              color: Color(0xFFC2DED1),
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
                              'Dr.ahmed',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'hello ',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
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
