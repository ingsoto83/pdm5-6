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
    Widget buttonsSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildBtnColumn("CALL", Icons.call, Colors.blue),
        _buildBtnColumn("ROUTE", Icons.near_me, Colors.blue),
        _buildBtnColumn("SHARE", Icons.share, Colors.blue),
      ],
    );
    Widget descriptionSection = Container(
      padding: EdgeInsets.all(32),
      child: Text(textAlign: TextAlign.justify,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ornare, est in ultricies pretium, turpis nulla laoreet nunc, quis pulvinar sem leo et lorem. Pellentesque ut lectus dapibus urna tempor interdum. Etiam blandit auctor risus sit amet egestas. Donec tempus vel leo et commodo. Aliquam in arcu quis urna porta fermentum. Fusce sed elit et massa aliquam pellentesque sed at ligula. Aliquam a tellus euismod, mollis lacus vitae, feugiat justo. Phasellus id orci aliquam sapien feugiat venenatis sit amet vel ligula. Sed eget vehicula libero. Suspendisse mattis rhoncus augue, vel efficitur erat. Morbi condimentum vehicula lorem. Quisque vulputate sem at eros aliquam porta. Cras nisi nibh, finibus id nisi quis, congue gravida odio.'
          'Etiam sollicitudin sem tellus, sit amet efficitur erat dictum in. Vivamus eget odio viverra, ultricies lacus at, dictum augue. Nam in felis sit amet nisi tincidunt pulvinar egestas eget justo. Ut ultrices ut arcu vitae mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus gravida eros enim, quis ornare neque tincidunt a. Mauris sed elementum leo. Etiam interdum fringilla ipsum in semper. Curabitur congue sapien sit amet ligula tincidunt, eget imperdiet libero vestibulum.'
          'Nunc et enim tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque facilisis ut neque vitae euismod. Integer tristique aliquet velit, at finibus dolor placerat vitae. Phasellus lorem dui, lacinia in mattis at, interdum ac augue. Praesent a ex nulla. Pellentesque pellentesque turpis ac enim accumsan, sit amet eleifend lectus feugiat. Proin posuere diam vitae sapien dapibus porta. Phasellus tincidunt, magna consectetur interdum imperdiet, quam lorem porta erat, ut finibus risus massa vitae velit. Phasellus egestas imperdiet lectus et congue. Maecenas semper, odio a bibendum sagittis, est leo dictum ligula, at aliquam nisi dui sed velit.'),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            imageSection,
            titleSection,
            buttonsSection,
            descriptionSection
          ],
        ),
      ),
    );
  }

  Widget _buildBtnColumn(String title, IconData icon, Color color){

    return TextButton(
      onPressed: (){},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color,),
          Container(
              padding: EdgeInsets.only(top: 8),
              child: Text(
                title,
                style: TextStyle(color: color, fontSize: 12, fontWeight: FontWeight.w400),
              )
          )
        ],
      ),
    );
  }
}
