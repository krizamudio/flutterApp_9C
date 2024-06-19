import 'package:flutter/material.dart';
import 'package:flutter_application_2/datos/datos.dart';
import 'package:flutter_application_2/widgets/tarjetaFeed.dart';

class listaFeed extends StatelessWidget {
  const listaFeed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listaCards.length,
      itemBuilder: (context, index) {
        return tarjetaFeed(tarjeta: listaCards[index]);
      },
    );
  }
}