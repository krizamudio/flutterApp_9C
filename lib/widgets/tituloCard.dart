import 'package:flutter/material.dart';

class tituloCard extends StatelessWidget {
  const tituloCard({
    super.key,
    required this.nombre

  });
  final String nombre;
  @override
  Widget build(BuildContext context) {
    return Row(children: [ //fila donde esta el icono y mi nombre completo
      const CircleAvatar(
        child: Text("K")
      ), 
      SizedBox(width: 10,), //espaciado entre el icono y el texto
      Text(nombre, style: TextStyle(fontWeight: FontWeight.bold ),),
      ],
    );
  }
}