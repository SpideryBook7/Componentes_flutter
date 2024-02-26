import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entradas')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Entradas',
            style: AppTheme.lightTheme.textTheme.headlineLarge,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: null,
                child: Text(
                  'Regresar',
                ),
              ),
              ElevatedButton(
                onPressed: null,
                child: Text('Ir a data screen'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
