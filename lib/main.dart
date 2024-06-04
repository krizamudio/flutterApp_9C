import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //quita la etiqueta roja de debug
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text('Material App Bar', style: TextStyle(color: Colors.white)),

        ),
        body: const Center(
          child: Text('Hello World'),
        ),
        backgroundColor: Colors.red[100], //color de fondo de la app
        floatingActionButton: FloatingActionButton(
          onPressed: (){}, //acciones que hara el botón
          child: Icon(Icons.accessibility_sharp) //icono que aparece en el botón (+)
          ), 
      ),
    );
  }
}