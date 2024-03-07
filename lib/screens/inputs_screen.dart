import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/imagenes_screen.dart';
import 'package:practica3/screens/infinite_list_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/theme/app_theme.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  bool valueSwitch = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  double valueSlider = 0.0;
  int selectedIndex = 0;
  int selectedRadio = 0;

  openScreen(int index) {
    setState(() {
      MaterialPageRoute ruta =
          MaterialPageRoute(builder: (context) => const HomeScreen());
      switch (index) {
        case 0:
          MaterialPageRoute(builder: (context) => HomeScreen());
          break;
        case 1:
          MaterialPageRoute(builder: (context) => InfiniteScreen());
          break;
        case 2:
          MaterialPageRoute(builder: (context) => NotificationsScreen());
          break;
        case 3:
          MaterialPageRoute(builder: (context) => ImagesScreen());
          break;
      }
      selectedIndex = index;
      print('selectedIndex = $selectedIndex');
      Navigator.push(context, ruta);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Entradas')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            entradaTexto(),
            entradaSwitch(),
            entradaSlider(),
            entradasRadio(),
            Text(
              'Que usas para correr tus apps',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            entradaCheck(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: AppTheme.lightColor,
        unselectedItemColor: AppTheme.lightColor,
        onTap: (index) => openScreen(index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: AppTheme.blackColor,
            ),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
              color: AppTheme.blackColor,
            ),
            label: "Lista",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notification_add,
              color: AppTheme.blackColor,
            ),
            label: "Notificaciones",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.image,
              color: AppTheme.blackColor,
            ),
            label: "Imagenes",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.back_hand,
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

  Column entradasRadio() {
    return Column(
      children: [
        Text(
          "Que prefieres usarpara desarrollo movil?",
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        ListTile(
          title: Text(
            'Kotlin',
            style: AppTheme.lightTheme.textTheme.headlineLarge,
          ),
          leading: Transform.scale(
            scale: 1.0,
            child: Radio(
              value: 1,
              groupValue: selectedRadio,
              onChanged: (value) {
                setState(() {
                  selectedRadio = value!;
                  print('option selected: $selectedRadio');
                });
              },
            ),
          ),
        ),
        ListTile(
          title: Text(
            'Flutter',
            style: AppTheme.lightTheme.textTheme.headlineLarge,
          ),
          leading: Transform.scale(
            scale: 1.0,
            child: Radio(
              value: 2,
              groupValue: selectedRadio,
              onChanged: (value) {
                setState(() {
                  selectedRadio = value!;
                  print('option selected: $selectedRadio');
                });
              },
            ),
          ),
        )
      ],
    );
  }

  Row entradaCheck() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Navegador',
          style: AppTheme.lightTheme.textTheme.headlineMedium,
        ),
        Checkbox(
          value: isChecked1,
          onChanged: (value) {
            setState(() {
              isChecked1 = value!;
              print('Valor de navegador: $isChecked1');
            });
          },
        ),
        Text(
          'Emulador',
          style: AppTheme.lightTheme.textTheme.headlineMedium,
        ),
        Checkbox(
            value: isChecked2,
            onChanged: (value) {
              setState(() {
                isChecked2 = value!;
                print('Valor de emulador: $isChecked2');
              });
            }),
        Text(
          'Smartphone',
          style: AppTheme.lightTheme.textTheme.headlineSmall,
        ),
        Checkbox(
            value: isChecked3,
            onChanged: (value) {
              setState(() {
                isChecked3 = value!;
                print('Valor de Smartphone: $isChecked3');
              });
            })
      ],
    );
  }
}
