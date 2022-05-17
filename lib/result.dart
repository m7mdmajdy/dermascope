import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff35698A),
      appBar: AppBar(
        toolbarHeight: 78,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'Result',
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold , color: Color(0xff35698A)),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            size: 35.0,
            color: Color(0xff35698A),
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Acne',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffC1D6F1FF)),
              ),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Acne is a skin condition that occurs when your hair follicles become plugged with oil and dead skin cells. It causes whiteheads, blackheads or pimples. Acne is most common among teenagers, though it affects people of all ages.' ,
                style:
                TextStyle(
                  fontSize:25.0,
                  color: Color(0xffC1D6F1FF),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(alignment:Alignment.bottomLeft,
                child:
                RaisedButton(
                  onPressed: () {},
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "Read More",
                    style: TextStyle(
                      color: Colors.white,)
                    ,),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
