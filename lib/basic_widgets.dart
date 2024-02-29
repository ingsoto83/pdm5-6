import 'package:flutter/material.dart';

class BasicWidgets extends StatelessWidget {
  const BasicWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widgets Básicos"),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white70,
      ),
      body: Column(
        children: [
          Text("Hola", style: TextStyle(fontSize: 30),),
          Text("Mundo", style: TextStyle(fontSize: 30),),
          Text("Cruel", style: TextStyle(fontSize: 30),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){}, child: Text("ADD")),
              ElevatedButton(onPressed: (){}, child: Text("CLEAR")),
              ElevatedButton(onPressed: (){}, child: Text("SAVE")),
            ],
          ),
          Stack(
            children: [
              Container(
                height: 600,
                width: 600,
                color: Colors.red,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.blue,
              ),
              Positioned(
                top:-20,
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.green,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
