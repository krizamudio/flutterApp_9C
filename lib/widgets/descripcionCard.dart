import 'package:flutter/material.dart';

class descripcionCard extends StatelessWidget {
  const descripcionCard({
    super.key,
    required this.descripcion
  });
  final String descripcion;
  @override
  Widget build(BuildContext context) {
    return Padding( //aplicaco padding solo a este texto
      padding: EdgeInsets.only(left: 5, right: 5, bottom: 5),
      child: Text(descripcion,
      maxLines: 3, //numero de lineas que se mostraran
      overflow: TextOverflow.ellipsis, //para que se muestre los puntos suspensivos al final del texto 
      textAlign: TextAlign.justify, 
      style: TextStyle(color: Colors.black),),
    );
  }
}