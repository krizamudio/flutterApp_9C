import 'package:flutter/material.dart';

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var textStyle = const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Barra Superior', style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        decoration: const BoxDecoration(color: Color.fromARGB(255, 190, 188, 188) ),
        height: 400,
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(15),
        //child: const Text('Que onda Mundo!'),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, //alinea los elementos de manera uniforme
            children: [
              const Row(children: [
                CircleAvatar(
                  child: Text("K")
                ), 
                SizedBox(width: 10,),
                Text("Kris Zamudio", style: TextStyle(fontWeight: FontWeight.bold ),),
                ],
              ),
              const Padding( //aplicaco padding solo a este texto
                padding: EdgeInsets.only(left: 5, right: 5, bottom: 5),
                child: Text("Hola, este es un post de prueba. no se que mas decir, que berserk es un manga que todo el mundo deberia leer: tiene una historia muy buena, personajes muy bien desarrollados y un arte increible. mas nada que decir, 10/10 recomendado.",
                maxLines: 3,
                overflow: TextOverflow.ellipsis, textAlign: TextAlign.justify,
                style: TextStyle(color: Colors.black),),
              ),//para que se muestre los puntos suspensivos al final del texto
              Container( //insertar imagen en un container
                child: Image.network("https://e00-marca.uecdn.es/assets/multimedia/imagenes/2022/07/07/16572060638517.jpg",
                fit: BoxFit.fill,
                ),
                width: double.infinity,
                height: 180,            
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround, //alinea elementos de manera uniforme de mis botones
                  children: [
                  TextButton(onPressed: (){}, child: Text("Me gustah!", style: textStyle,),),
                  TextButton(onPressed: (){}, child: Text("Comenta", style: textStyle,),),
                  TextButton(onPressed: (){}, child: Text("Compartir", style: textStyle,),)
                ],)
              )
            ],
          )
        )
      ),
      backgroundColor: Color.fromARGB(255, 174, 163, 226), //color de fondo de la app
      //floatingActionButton: FloatingActionButton(
        //onPressed: (){}, //acciones que hara el botón 
        //child: Icon(Icons.add_comment_sharp) //icono que aparece en el botón (+)
        //), 
    );
  }
}