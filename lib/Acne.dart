import 'package:flutter/material.dart';

class Acne extends StatelessWidget {
  const Acne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blue[400],
      appBar: AppBar(
        toolbarHeight: 78,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'Acne',
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            size: 35.0,
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
        ),
      ),
      body: Column(
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
                color: Colors.white,
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
                color: Colors.white,
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
    );
  }
}
