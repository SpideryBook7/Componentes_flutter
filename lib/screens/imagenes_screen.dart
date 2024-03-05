import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

class imagesScreen extends StatefulWidget {
  const imagesScreen({super.key});

  @override
  State<imagesScreen> createState() => _imagesScreenState();
}

class _imagesScreenState extends State<imagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Imagenes',
            style: AppTheme.lightTheme.textTheme.headlineLarge,
          ),
        ),
        body: ListView(
          children: const [
            SizedBox(
              height: 500,
              width: 500,
              child: Image(image: AssetImage('Imagen1.jpg')),
            )
          ],
        ));
  }

  Card imageCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: SizedBox(
        height: 300,
        width: 300,
        child: Image(image: AssetImage('imagen1.jpg')),
      ),
    );
  }
}
