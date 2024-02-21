import 'package:flutter/material.dart';
import 'package:practica3/screens/infinite_list_screen.dart';
import 'package:practica3/screens/inputs_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.lightColor,
      appBar: AppBar(
        title: const Text('Componentes de flutter'),
        backgroundColor: Color.fromARGB(217, 236, 255, 128),
      ),
      body: ListView(
        children: [
          ListTile(
              leading: const Icon(Icons.accessibility_new_sharp),
              title: Text(
                'Entradas',
                style: AppTheme.lightTheme.textTheme.bodySmall,
              ),
              subtitle: Text(
                'Diferentes widgets para entradas de flutter',
                style: AppTheme.lightTheme.textTheme.bodySmall,
              ),
              trailing: const Icon(
                Icons.accessibility_new_rounded,
                color: AppTheme.lightColor,
              ),
              onTap: () {
                final ruta1 = MaterialPageRoute(builder: (context) {
                  return const InputScreen();
                });
                Navigator.push(context, ruta1);
              }),
          const Divider(),
          ListTile(
              leading: const Icon(Icons.list_alt_rounded),
              title: Text(
                'ListView.builder',
                style: AppTheme.lightTheme.textTheme.bodySmall,
              ),
              subtitle: Text(
                'Scroll infinito',
                style: AppTheme.lightTheme.textTheme.bodySmall,
              ),
              trailing: const Icon(
                Icons.add_reaction_outlined,
                color: Color.fromARGB(255, 252, 252, 252),
              ),
              onTap: () {
                final ruta2 = MaterialPageRoute(builder: (context) {
                  return const InfiniteScreen();
                });
                Navigator.push(context, ruta2);
              }),
          const Divider(),
          ListTile(
              leading: const Icon(Icons.notification_add),
              title: Text(
                'Notificaciones',
                style: AppTheme.lightTheme.textTheme.bodySmall,
              ),
              subtitle: Text(
                'Creacion de notificaciones',
                style: AppTheme.lightTheme.textTheme.bodySmall,
              ),
              trailing: const Icon(
                Icons.assist_walker_sharp,
                color: AppTheme.lightColor,
              ),
              onTap: () {
                final ruta3 = MaterialPageRoute(builder: (context) {
                  return const NotificationsScreen();
                });
                Navigator.push(context, ruta3);
              }),
        ],
      ),
    );
  }
}
