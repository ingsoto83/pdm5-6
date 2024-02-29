import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Hello World"),
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.white,
      ),
      body: Center(
          child: Text(
            "Presionaste el botón ${count} veces!",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          count++;
          setState(() {
            
          });
          print(count);
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),
    );
  }
}
