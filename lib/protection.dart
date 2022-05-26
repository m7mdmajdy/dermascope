import 'package:flutter/material.dart';

class protection extends StatelessWidget {
  const protection({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  String _title = 'Protection';

  final List<Widget> _widgetOptions = <Widget>[
    Container(
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        color:  Color(0xff35698A),
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
                    "*To keep your pores from clogging and your skin from becoming too oily:",
                    style: TextStyle(
                        color: Color(0xffC1D6F1FF),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "1-avoid touching your face.",
                    style: TextStyle(
                        color: Color(0xffC1D6F1FF),
                        fontSize: 18,
                        height:2.5),
                  ),
                  Text(
                    "2-Don't leave makeup on oveernight.",
                    style: TextStyle(
                        color: Color(0xffC1D6F1FF),
                        fontSize: 18,
                        height:2.5),
                  ),
                  Text(
                    "3-If your skin is greasy and acne-prone, a wash containing salicylic acid or benzoyl may be beneficial.",
                    style: TextStyle(
                        color:Color(0xffC1D6F1FF),
                        fontSize: 18,
                        height:2.5),
                  ),
                  Text(
                    "4-wash your hands once or twise a day, as well as after your excersise.",
                    style: TextStyle(
                        color: Color(0xffC1D6F1FF),
                        fontSize: 18,
                        height:2.5),
                  ),
                  Text(
                    "5-scrubing and repetitive skin cleaning should be avoided.",
                    style: TextStyle(
                        color: Color(0xffC1D6F1FF),
                        fontSize: 18,
                        height:2.5),
                  ),
                  Text(
                    "6-If your hair is oily, shampoo it every day.",
                    style: TextStyle(
                        color: Color(0xffC1D6F1FF),
                        fontSize: 18,
                        height:2.5),
                  ),
                  Text(
                    "7-keep your hair out of your face be combing or pulling it back.",
                    style: TextStyle(
                        color: Color(0xffC1D6F1FF),
                        fontSize: 18,
                        height: 2.5),
                  ),
                  Text(
                    "8-Avoid using rubbing alcohol or skin toners that are extremly dring.",
                    style: TextStyle(
                        color: Color(0xffC1D6F1FF),
                        fontSize: 18,
                        height:2.5),
                  ),
                  Text(
                    "9-Oil-based cosmatics should be avoided.",
                    style: TextStyle(
                        color: Color(0xffC1D6F1FF),
                        fontSize: 18,
                        height: 2.5),
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
        color:  Color(0xff35698A),
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
                        color:Color(0xffC1D6F1FF),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        height: 1.5),
                  ),
                  Text(
                    "1-After a few month , self-care and over-the-counter drugs are no longer effective.",
                    style: TextStyle(
                        color: Color(0xffC1D6F1FF),
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        height:2.5),
                  ),
                  Text(
                    "2-Your acne is quite serve(ex, you have a lot of redness round the pumple).",
                    style: TextStyle(
                        color: Color(0xffC1D6F1FF),
                        fontSize: 18,
                        height:2.5),
                  ),
                  Text(
                    "3-Your acne is worsening.",
                    style: TextStyle(
                        color: Color(0xffC1D6F1FF),
                        fontSize: 18,
                        height:2.5),
                  ),
                  Text(
                    "4-Ass your acne heals , you will create scars.",
                    style: TextStyle(
                        color:Color(0xffC1D6F1FF),
                        fontSize: 18,
                        height:2.5),
                  ),
                  Text(
                    "5-Acne is a source of emotional distress.",
                    style: TextStyle(
                        color:Color(0xffC1D6F1FF),
                        fontSize: 18,
                        height:2.5),
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
        color:  Color(0xff35698A),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ Padding(
            padding: const EdgeInsets.all(16.0),
          ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 15.0,
                ),
                Expanded(
                  child: Image(
                    image: NetworkImage(
                        'https://assets.nhs.uk/nhsuk-cms/images/S_0917_acne_M1080444.max-600x600.jpg'),
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Expanded(
                  child: Image(
                    image: NetworkImage(
                        'https://assets.nhs.uk/nhsuk-cms/images/S_0917_acne_M1080444.max-600x600.jpg'),
                  ),
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
              child: Text(' * Effective acne treatments are available, but acne can be persistent. The pimples and bumps heal slowly, and when one begins to go away, others seem to crop up. Depending on its severity, acne can cause emotional distress and scar the skin. The earlier you start treatment, the lower your risk of such problems' ,
                style:
                TextStyle(
                  fontSize:18.0,
                  color: Color(0xffC1D6F1FF),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(' * Acne signs vary depending on the severity of your condition: \n- Whiteheads (closed plugged pores) \n - Blackheads (open plugged pores) \n - Small red, tender bumps (papules)  \n - Pimples (pustules), which are papules with pus at their tips. ',
                style:
                TextStyle(
                  fontSize:18.0,
                  color: Color(0xffC1D6F1FF),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(alignment:Alignment.bottomLeft,
              ),
            ),
          ],
        ),
      ),
    ),
    Container(
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        color:  Color(0xff35698A),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "*Cleanser:-",
                style: TextStyle(
                    color:Color(0xffC1D6F1FF),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    height: 2),
              ),
              Text(
                "1-La roche-posay effaclar gel.",
                style: TextStyle(
                    color: Color(0xffC1D6F1FF),
                    fontSize: 20,
                    height:2.5),
              ),
              Text(
                "2-Topi gent sebum foam.",
                style: TextStyle(
                    color: Color(0xffC1D6F1FF),
                    fontSize: 20,
                    height:2.5),
              ),
              Text(
                "3-Starville facial cleancer.",
                style: TextStyle(
                    color: Color(0xffC1D6F1FF),
                    fontSize: 20,
                    height:2.5),
              ),
              Text(
                "4-Cerave foam cleancer.",
                style: TextStyle(
                    color: Color(0xffC1D6F1FF),
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    height:2.5),
              ),
              Text(
                "*Acne Cream:-",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color:  Color(0xffC1D6F1FF),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    height:2),
              ),
              Text(
                "1-La rouche possay effaclar duo acne",
                style: TextStyle(
                    color:  Color(0xffC1D6F1FF),
                    fontSize: 20,
                    height:2.5),
              ),
              Text(
                "2-Isoromyderm.",
                style: TextStyle(
                    color:  Color(0xffC1D6F1FF),
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    height:2.5),
              ),
              Text(
                "3-Fucidin.",
                style: TextStyle(
                    color:  Color(0xffC1D6F1FF),
                    fontSize:20,
                    fontWeight: FontWeight.normal,
                    height:2.5),
              ),
              Text(
                "4-Fucicort.",
                style: TextStyle(
                    color:  Color(0xffC1D6F1FF),
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    height:2.5),
              ),
              Text(
                "5-Acretin 0.025%",
                style: TextStyle(
                    color:  Color(0xffC1D6F1FF),
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    height:2.5),
              ),
            ],
          ),
        ],
      ),
    ),
    Container(
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
          color:  Color(0xff35698A),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "*try over-the-counter acne treatments that you apply th your skin if everyday skin care does not clear up blemishes.",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: TextStyle(
                  color: Color.fromARGB(255, 19, 9, 111),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  height: 3,
                ),
              ),
              Text(
                "benzoyl peroxide,suiphur , adapalene,resorcinoi , or salicylic acid acid may be present in these products.",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: TextStyle(
                    color:  Color(0xffC1D6F1FF),
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    height: 3),
              ),
              Text(
                "*they work by destroying bacteria , drying out skin oils,or causing your skin's top layer to peel.",

                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: TextStyle(
                  color:  Color(0xffC1D6F1FF),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                ),
              ),
              Text(
                "*they can cause skin redness and peeling.",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: TextStyle(
                    color:  Color(0xffC1D6F1FF),
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    height: 1.5),
              ),
              Text(
                "*if your pimples persist after you've tried over-the-counter medication, your doctor may recommend: ",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: TextStyle(
                    color: Color.fromARGB(255, 19, 9, 111),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    height: 2),
              ),
              Text(
                "1-antibiotics in tablet or cream form that you apply to your skin.",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: TextStyle(
                  color:  Color(0xffC1D6F1FF),
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  height: 1.5,
                ),
              ),
              Text(
                "2-prescription retinoid gels or lotions are used to help clean up pimples.",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: TextStyle(
                    color:  Color(0xffC1D6F1FF),
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    height: 1.5),
              ),
              Text(
                "3-hormone tablets are prscribed to women whose acne is worse by hormonal changes",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: TextStyle(
                  color:  Color(0xffC1D6F1FF),
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  height: 1.5,
                ),
              ),
              Text(
                "4-isotretinoin tablets are used to treat severe acne.",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: TextStyle(
                    color:  Color(0xffC1D6F1FF),
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    height: 1.5),
              ),
              Text(
                "5-photodynamic treatement is a light-based method.",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: TextStyle(
                    color:  Color(0xffC1D6F1FF),
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    height: 1.5),
              ),
              Text(
                "6-peeling of skin using chemicals",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: TextStyle(
                    color:  Color(0xffC1D6F1FF),
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    height: 1.5),
              )
            ],
          ),
        ],
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          {
            _title = 'Protection';
          }
          break;
        case 1:
          {
            _title = 'Consult a doctor';
          }
          break;
        case 2:
          {
            _title = 'Acne';
          }
          break;
        case 3:
          {
            _title = 'Products';
          }
          break;
        case 4 :{
          _title = 'Management & Medication';

        }
        break;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3C7A9CFF),
        title: Text(
          _title,
          style: TextStyle(color:  Color(0xff35698A)),
        ),
      ),
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Protection',
            backgroundColor: Color(0xff35698A),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Consult a doctor ',
            backgroundColor: Color(0xff35698A),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Acne',
            backgroundColor: Color(0xff35698A),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Products',
            backgroundColor: Color(0xff35698A),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Management&Medication',
            backgroundColor:Color(0xff35698A),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor:  Color(0xffC1D6F1FF),
        onTap: _onItemTapped,
      ),
    );
  }
}