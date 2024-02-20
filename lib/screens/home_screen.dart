import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(108, 208, 208, 208),
      appBar: AppBar(
        title: const Text('Componentes de flutter'),
        backgroundColor: const Color.fromARGB(229, 33, 149, 243),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.input_rounded),
            title: Text(
              'Entradas ',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            subtitle: const Text('Deferent widgets'),
            trailing: const Icon(Icons.arrow_circle_right),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.input_rounded),
            title: Text(
              'ListView.builder ',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            subtitle: const Text('Scroll infinite'),
            trailing: const Icon(Icons.arrow_circle_right),
          ),
          Divider(),
          ListTile(
            leading: const Icon(Icons.input_rounded),
            title: Text(
              'Notifications',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            subtitle: const Text('Creation de notifications'),
            trailing: const Icon(Icons.arrow_circle_right),
          ),
        ],
      ),
    );
  }
}
