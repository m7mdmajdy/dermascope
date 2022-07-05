import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled/patientchat.dart';
import 'package:untitled/Login.dart';

class MyStatefulWidget extends StatefulWidget {
  final String? diseaseDescription;
  final String? diseaseProtection;
  final String? diseaseTreatment;
  final String? diseaseSymptoms;
  final String? diseaseLink1;
  final String? diseaseLink2;
  const MyStatefulWidget(
      {Key? key,
      this.diseaseDescription,
      this.diseaseProtection,
      this.diseaseTreatment,
      this.diseaseSymptoms,
      this.diseaseLink1,
      this.diseaseLink2})
      : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String test = "Magdy";
  String? testText;
  String? diseaseInformation;
  int _selectedIndex = 0;
  String _title = 'Description';
  void initState() {
    super.initState();
    testText = "sss";
    print(diseaseInformation);
  }

  List<Widget> listFunc() {
    final List<Widget> _widgetOptions = <Widget>[
      Container(
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.2), BlendMode.dstIn),
            image: AssetImage("images/dood.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
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
                          color: Colors.black87,
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
      ),
      Container(
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.2), BlendMode.dstIn),
            image: AssetImage("images/dood.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          alignment: Alignment.topLeft,
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
                          color: Colors.black87,
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
      ),
      Container(
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.2), BlendMode.dstIn),
            image: AssetImage("images/dood.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          alignment: Alignment.topLeft,
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
                        child: Image.network(widget.diseaseLink1.toString())),
                    SizedBox(
                      width: 15.0,
                    ),
                    Expanded(
                        child: Image.network(widget.diseaseLink2.toString())),
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
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      Container(
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.2), BlendMode.dstIn),
            image: AssetImage("images/dood.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
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
                        "- If you have any of the following symptoms , you should contact a dermatology:-",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            height: 1.5),
                      ),
                      Text(
                        widget.diseaseSymptoms.toString(),
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            height: 2.5),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
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
                        child: Text("Consult a doctor"),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Chat()));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
        backgroundColor: Colors.white,
        appBar: AppBar(
<<<<<<< HEAD
          toolbarHeight: 70,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(
              _title,
            style:TextStyle(fontSize: 27
            ),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              size: 35.0,
              color:  Color(0xff35698A),
            ),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              color: Color(0xffC1D6F1FF),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
          ),
=======
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
            _title,
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
>>>>>>> 34c2895586891103061cc634ddd313ecf31d8a3a
        ),
        body: Container(
          child: listFunc().elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.details),
              label: 'Description',
              backgroundColor: Color(0xff646FD4),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.health_and_safety),
              label: 'Protection',
              backgroundColor: Color(0xff646FD4),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.medical_services),
              label: 'Treatment',
              backgroundColor: Color(0xff646FD4),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'Consult a doctor',
              backgroundColor: Color(0xff646FD4),
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