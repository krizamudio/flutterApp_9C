import 'package:flutter/material.dart';

class botonesCard extends StatelessWidget {
  const botonesCard({
    super.key,
    //required this.textStyle,
  });

  //final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround, //alinea elementos de manera uniforme de mis botones
      children: [
      TextButton(onPressed: (){}, child: const Text("Me gustah!", style: textStyle,),),
      TextButton(onPressed: (){}, child: const Text("Comenta", style: textStyle,),),
      TextButton(onPressed: (){}, child: const Text("Compartir", style: textStyle,),)
    ],);
  }
}