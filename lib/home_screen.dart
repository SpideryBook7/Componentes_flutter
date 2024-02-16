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
        children: [
          ListTile(
            leading: const Icon(Icons.account_circle_outlined),
            title: Text(
              'Hellow ',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            subtitle: const Text('23-23-23 - Elein'),
            trailing: const Icon(Icons.arrow_circle_right),
          ),
          Divider(),
          ListTile(
            leading: const Icon(Icons.place),
            title: Text('How are you from '),
            subtitle: const Text('23-23-23 - New York'),
            trailing: const Icon(Icons.arrow_circle_right),
          ),
          Divider(),
          ListTile(
            leading: const Icon(Icons.place),
            title: Text('Place'),
            subtitle: const Text('23-23-23 - Arizona'),
            trailing: const Icon(Icons.arrow_circle_right),
          ),
        ],
      ),
    );
  }
}
