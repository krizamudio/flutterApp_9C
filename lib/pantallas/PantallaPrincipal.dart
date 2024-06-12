import 'package:flutter/material.dart';
import 'package:flutter_application_2/datos/datos.dart';
import 'package:flutter_application_2/widgets/tarjetaFeed.dart';

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 44, 44, 44),
        title: const Text('FeisCool', style: TextStyle(color: Colors.white),),
      ),
      body: ListView.builder(
        itemCount: listaCards.length,
        itemBuilder: (context, index) {
          return tarjetaFeed(tarjeta: listaCards[index]);
        },
      ),
      backgroundColor: Color.fromARGB(255, 119, 119, 119), //color de fondo de la app
      //floatingActionButton: FloatingActionButton(
        //onPressed: (){}, //acciones que hara el botón 
        //child: Icon(Icons.add_comment_sharp) //icono que aparece en el botón (+)
        //), 
    );
  }
}

// class tarjetaFeed extends StatelessWidget {
//   const tarjetaFeed({
//     super.key,
//     required this.textStyle,
//   });

//   final TextStyle textStyle;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(color: Color.fromARGB(255, 190, 188, 188)),
//       height: 400,
//       width: double.infinity,
//       margin: const EdgeInsets.all(20),
//       padding: const EdgeInsets.all(15),
//       //child: const Text('Que onda Mundo!'),
//       child: Container(
//         child: Column( 
//           mainAxisAlignment: MainAxisAlignment.spaceBetween, //alinea los elementos de manera uniforme
//           children: [
//             const Row(children: [ //fila donde esta el icono y mi nombre completo
//               CircleAvatar(
//                 child: Text("K")
//               ), 
//               SizedBox(width: 10,), //espaciado entre el icono y el texto
//               Text("Kris Zamudio", style: TextStyle(fontWeight: FontWeight.bold ),),
//               ],
//             ),
//             const Padding( //aplicaco padding solo a este texto
//               padding: EdgeInsets.only(left: 5, right: 5, bottom: 5),
//               child: Text("Hola, este es un post de prueba. no se que mas decir, que berserk es un manga que todo el mundo deberia leer: tiene una historia muy buena, personajes muy bien desarrollados y un arte increible. mas nada que decir, 10/10 recomendado.",
//               maxLines: 3, //numero de lineas que se mostraran
//               overflow: TextOverflow.ellipsis, //para que se muestre los puntos suspensivos al final del texto 
//               textAlign: TextAlign.justify, 
//               style: TextStyle(color: Colors.black),),
//             ),//para que se muestre los puntos suspensivos al final del texto
//             Container( //insertar imagen en un container
//               // ignore: sort_child_properties_last
//               child: Image.network('https://e00-marca.uecdn.es/assets/multimedia/imagenes/2022/07/07/16572060638517.jpg',
//               fit: BoxFit.fill, //hace que la imagen se ajuste al tamaño del container
//               ),
//               width: double.infinity,
//               height: 180,            
//             ),
//             Container(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround, //alinea elementos de manera uniforme de mis botones
//                 children: [
//                 TextButton(onPressed: (){}, child: Text("Me gustah!", style: textStyle,),),
//                 TextButton(onPressed: (){}, child: Text("Comenta", style: textStyle,),),
//                 TextButton(onPressed: (){}, child: Text("Compartir", style: textStyle,),)
//               ],)
//             )
//           ],
//         )
//       )
//     );
//   }
// }