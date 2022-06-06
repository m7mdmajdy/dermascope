import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:get/get.dart';
import 'package:untitled/patientchat.dart';
import 'package:untitled/Login.dart';
import 'package:untitled/result2.dart';
import 'package:untitled/uploadImage.dart';
/*
class protection extends StatefulWidget {
  const protection({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  State<protection> createState() => _protectionState();
}

class _protectionState extends State<protection> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: protection._title,
        home: MyStatefulWidget(),
      ),
    );
  }
}
*/
class MyStatefulWidget extends StatefulWidget {
  final String? diseaseDescription;
  final String? diseaseProtection;
  final String? diseaseTreatment;
  final String? diseaseSymptoms;
  final String? diseaseLink1;
  final String? diseaseLink2;
  const MyStatefulWidget({Key? key,this.diseaseDescription,this.diseaseProtection,
    this.diseaseTreatment,this.diseaseSymptoms,
    this.diseaseLink1,this.diseaseLink2}) : super(key: key);


  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String test="Magdy";
  String? testText;
  String? diseaseInformation;
  int _selectedIndex = 0;
  String _title = 'Description';
  void initState() {
    super.initState();
    testText="sss";
    //final String? diseaseInformation=widget.diseaseInfo;
    print("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^");
    print(diseaseInformation);
  }
  List<Widget> listFunc(){
  final List<Widget> _widgetOptions = <Widget>[
    Container(
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        color: Color(0xff35698A),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.diseaseDescription.toString(),
                    style: TextStyle(
                      color: Color(0xffC1D6F1FF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    ),
    Container(
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        color: Color(0xff35698A),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.diseaseProtection.toString(),
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xffC1D6F1FF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    ),

    Container(
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        color: Color(0xff35698A),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 15.0,
                ),
                Expanded(
                  child: Image.network(widget.diseaseLink1.toString())
                ),
                SizedBox(
                  width: 15.0,
                ),
                Expanded(
                  child: Image.network(widget.diseaseLink2.toString())
                ),
                SizedBox(
                  width: 15.0,
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.diseaseTreatment.toString(),
                style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xffC1D6F1FF),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

          ],
        ),
      ),
    ),
    Container(
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        color: Color(0xff35698A),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "*If you have any of the following symptoms , you should contact a dermatology:-",
                    style: TextStyle(
                        color: Color(0xffC1D6F1FF),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        height: 1.5),
                  ),
                  Text(
                    widget.diseaseSymptoms.toString(),
                    style: TextStyle(
                        color: Color(0xffC1D6F1FF),
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        height: 2.5),
                  ),

                  SizedBox(height: 15,),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(HexColor("#4c8cb5")),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0),
                            side: BorderSide(color: HexColor("#4c8cb5"))
                        ),
                      ),
                    ),
                    child: Text("Consult a doctor"),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Chat()));
                    },
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    ),
  ];
  return _widgetOptions;
}


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          {
            _title = 'Description';
          }
          break;
        case 1:
          {
            _title = 'Protection';
          }
          break;
        case 2:
          {
            _title = 'Treatment';
          }
          break;
        case 3:
          {
            _title = 'Consult a doctor';
          }
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff35698A),
        appBar: AppBar(leading: InkWell(
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
            _title,
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
        body: Container(
          child: listFunc().elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.details),
              label: 'Description',
              backgroundColor: Color(0xff35698A),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.health_and_safety),
              label: 'Protection',
              backgroundColor: Color(0xff35698A),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.medical_services),
              label: 'Treatment',
              backgroundColor: Color(0xff35698A),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'Consult a doctor',
              backgroundColor: Color(0xff35698A),
            ),

          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xffC1D6F1FF),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
