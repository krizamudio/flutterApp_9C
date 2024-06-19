import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/botonesCard.dart';
import 'package:flutter_application_2/widgets/descripcionCard.dart';
import 'package:flutter_application_2/widgets/imagenCard.dart';
import 'package:flutter_application_2/widgets/tituloCard.dart';

class tarjetaFeed extends StatelessWidget {
  const tarjetaFeed({
    super.key,
    required this.tarjeta,
  });

   //final TextStyle textStyle;
  final Map<String, String> tarjeta;

  @override
  Widget build(BuildContext context) {
    //var textStyle = TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold);
    return Container(
      decoration: const BoxDecoration(color: Color.fromARGB(255, 190, 188, 188)),
      height: 400,
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(15),
      //child: const Text('Que onda Mundo!'),
      child: Container(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.spaceBetween, //alinea los elementos de manera uniforme
          children: [
            tituloCard(nombre: tarjeta["nombre"]!,),
            descripcionCard(descripcion: tarjeta["descripcion"]!,),//para que se muestre los puntos suspensivos al final del texto
            imagenCard(imagen: tarjeta["imagen"]!),
            Container(
              child: const botonesCard()
            )
          ],
        )
      )
    );
  }
}







