import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  ListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listas en Flutter"),
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://randomuser.me/api/portraits/men/73.jpg"),
              ),
              title: Text("Alejandro Soto Treviño"),
              subtitle: Text("Ing. Sistemas Computacionales"),
              trailing: Icon(Icons.star, color: Colors.amber,),
              onTap: (){},
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://randomuser.me/api/portraits/men/73.jpg"),
              ),
              title: Text("Alejandro Soto Treviño"),
              subtitle: Text("Ing. Sistemas Computacionales"),
              trailing: Icon(Icons.star, color: Colors.amber,),
              onTap: (){},
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://randomuser.me/api/portraits/men/73.jpg"),
              ),
              title: Text("Alejandro Soto Treviño"),
              subtitle: Text("Ing. Sistemas Computacionales"),
              trailing: Icon(Icons.star, color: Colors.amber,),
              onTap: (){},
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://randomuser.me/api/portraits/men/73.jpg"),
              ),
              title: Text("Alejandro Soto Treviño"),
              subtitle: Text("Ing. Sistemas Computacionales"),
              trailing: Icon(Icons.star, color: Colors.amber,),
              onTap: (){},
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://randomuser.me/api/portraits/men/73.jpg"),
              ),
              title: Text("Alejandro Soto Treviño"),
              subtitle: Text("Ing. Sistemas Computacionales"),
              trailing: Icon(Icons.star, color: Colors.amber,),
              onTap: (){},
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://randomuser.me/api/portraits/men/73.jpg"),
              ),
              title: Text("Alejandro Soto Treviño"),
              subtitle: Text("Ing. Sistemas Computacionales"),
              trailing: Icon(Icons.star, color: Colors.amber,),
              onTap: (){},
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://randomuser.me/api/portraits/men/73.jpg"),
              ),
              title: Text("Alejandro Soto Treviño"),
              subtitle: Text("Ing. Sistemas Computacionales"),
              trailing: Icon(Icons.star, color: Colors.amber,),
              onTap: (){},
            ),
          ),
        ],
      ),
    );
  }
}
