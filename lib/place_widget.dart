import 'package:flutter/material.dart';

class PlaceWidget extends StatelessWidget {
  PlaceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    Widget imageSection = Image.asset('assets/img/place.jpg', width: width, height: height * .30, fit: BoxFit.cover,);
    Widget titleSection = Container(
      padding: EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("San Antonio de las Alazanas", style: TextStyle(fontWeight: FontWeight.bold),),
                Text("Coahuila, México", style: TextStyle(color: Colors.grey[500]),),
              ]
            ),
          ),
          Icon(Icons.star, color: Colors.amber),
          Text("41")
        ],
      ),
    );

    return Scaffold(
      body: Column(
        children: [
          imageSection,
          titleSection
        ],
      ),
    );
  }
}
