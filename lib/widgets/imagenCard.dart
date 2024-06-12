import 'package:flutter/material.dart';

class imagenCard extends StatelessWidget {
  const imagenCard({
    super.key,
    required this.imagen
  });
  final String imagen;
  @override
  Widget build(BuildContext context) {
    return Container( //insertar imagen en un container
      // ignore: sort_child_properties_last
      child: Image.network(imagen,
      fit: BoxFit.fill, //hace que la imagen se ajuste al tamaño del container
      ),
      width: double.infinity,
      height: 180,            
    );
  }
}