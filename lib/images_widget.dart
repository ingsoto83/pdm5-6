import 'package:flutter/material.dart';

class ImagesWidget extends StatelessWidget {
  const ImagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget de Imagenes", style: TextStyle(fontFamily: "Signatra", fontSize: 40),),
        backgroundColor: Colors.deepPurpleAccent,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            child: Image.asset('assets/img/gatos.jpeg', fit: BoxFit.cover),
          ),
          Container(
            height: 300,
            width: 400,
            margin: EdgeInsets.all(25),
            decoration: BoxDecoration(
              //borderRadius: BorderRadius.circular(radius)
              image: DecorationImage(
                image: AssetImage('assets/img/imagen1.jpg'),
                fit: BoxFit.cover
              )
            ),
          )
        ],
      ),
    );
  }
}
