import 'package:flutter/material.dart';

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Barra Superior', style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        decoration: const BoxDecoration(color: Colors.red ),
        height: 200,
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(20),
        //child: const Text('Que onda Mundo!'),
        child: Container(
          child: const Row(children: [
            CircleAvatar(
              child: Text("K")
            ), 
            SizedBox(width: 20,),
            Text("Kris Zamudio")
          ],)
        )
      ),
      backgroundColor: Colors.red[100], //color de fondo de la app
      //floatingActionButton: FloatingActionButton(
        //onPressed: (){}, //acciones que hara el botón 
        //child: Icon(Icons.add_comment_sharp) //icono que aparece en el botón (+)
        //), 
    );
  }
}