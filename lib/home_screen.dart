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
            leading: const Icon(Icons.input_rounded),
            title: Text(
              'Entradas ',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            subtitle: const Text('Deferent widgets'),
            trailing: const Icon(Icons.view_headline),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.place),
            title: Text('ListView.builder ', style: Theme.of(context).textTheme.headlineLarge,
            ),
            subtitle: const Text('Scroll infinite'),
            trailing: const Icon(Icons.arrow_circle_right),
          ),
          Divider(),
          ListTile(
            leading: const Icon(Icons.place),
            title: Text('Notifications', style: Theme.of(context).textTheme.headlineLarge,
            ),
            subtitle: const Text('Creation de notifications'),
            trailing: const Icon(Icons.arrow_circle_right),
          ),
        ],
      ),
    );
  }
}
