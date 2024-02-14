import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(109, 87, 235, 255),
      appBar: AppBar(
        title: const Text('Componentes de flutter'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.account_circle_outlined),
            title: Text('Hellow ',
                style: TextStyle(color: Color.fromARGB(255, 38, 71, 255))),
            subtitle: Text('23-23-23 - Elein',
                style: TextStyle(color: Color.fromARGB(255, 141, 26, 255))),
            trailing: Icon(Icons.arrow_circle_right),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.place),
            title: Text('How are you from ',
                style: TextStyle(color: Color.fromARGB(255, 27, 110, 255))),
            subtitle: Text('23-23-23 - New York',
                style: TextStyle(color: Color.fromARGB(255, 141, 26, 255))),
            trailing: Icon(Icons.arrow_circle_right),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.place),
            title: Text('Place',
                style: TextStyle(color: Color.fromARGB(255, 21, 107, 255))),
            subtitle: Text('23-23-23 - Arizona',
                style: TextStyle(color: Color.fromARGB(255, 141, 26, 255))),
            trailing: Icon(Icons.arrow_circle_right),
          ),
        ],
      ),
    );
  }
}
