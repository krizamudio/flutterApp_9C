import 'package:flutter/material.dart';
import 'package:flutter_application_2/pantallas/PantallaPrincipal.dart';
//import 'package:flutter/widgets.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, //quita la etiqueta roja de debug
      title: 'Tarjeta de Posteo',
      home: PantallaPrincipal(),
      
    );
  }
}