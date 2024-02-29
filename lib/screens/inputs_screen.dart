import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practica3/theme/app_theme.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  bool valueSwitch = false;
  double valueSlider = 0.0;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.lightColor,
      appBar: AppBar(title: const Text('Entradas')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Entradas',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            entradaTexto(),
            entradaSwitch(),
            entradaSlider(),
            ElevatedButton(
              onPressed: null,
              child: Text(
                'Regresar',
              ),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Ir a data screen'),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: AppTheme.lightColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Ingresar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "Datos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app,
            color: AppTheme.blackColor,
            ),
            label: "Salir",
          ),
        ],
        unselectedLabelStyle: AppTheme.lightTheme.textTheme.bodyMedium,
      ),
    );
  }

  TextField entradaTexto() {
    return TextField(
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        labelText: 'Escribe tu nombre',
        labelStyle: AppTheme.lightTheme.textTheme.headlineLarge,
      ),
    );
  }

  Row entradaSwitch() {
    return Row(children: <Widget>[
      const FlutterLogo(),
      Text(
        'Te gusta flutter?',
        style: AppTheme.lightTheme.textTheme.headlineLarge,
      ),
      const SizedBox(
        width: 23.0,
      ),
      Switch(
        value: valueSwitch,
        activeColor: AppTheme.accentcolor,
        onChanged: (value) {
          setState(() {
            valueSwitch = value;
            print('Estado del switch: $valueSwitch');
          });
        },
      ),
    ]);
  }

  Column entradaSlider() {
    return Column(
      children: [
        Text(
          'Que tanto te gusta flutter?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Slider(
            min: 0.0,
            max: 10.0,
            value: valueSlider,
            inactiveColor: Color.fromARGB(159, 239, 239, 239),
            thumbColor: AppTheme.accentcolor,
            divisions: 3,
            label: '${valueSlider.round()}',
            onChanged: (value) {
              setState(() {
                valueSlider = value;
              });
            }),
      ],
    );
  }
}
