import 'package:flutter/material.dart';

void main() => runApp(const tyc());

class tyc extends StatelessWidget {
  const tyc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Terminos y Condiciones', style: TextStyle(color: Colors.white)),
          backgroundColor: const Color.fromARGB(255, 44, 44, 44),
        ),
        body: Container(
            padding: const EdgeInsets.all(15.0),
            margin: const EdgeInsets.all(5),
            child:const Column(
              children: [
                Text("1. Aceptación de los Términos y Condiciones", style: TextStyle(fontSize: 18),),
                Text("Al descargar, acceder o utilizar nuestra aplicación de redes sociales, usted acepta y se compromete a cumplir con estos Términos y Condiciones de Uso, así como con nuestra Política de Privacidad. Si no está de acuerdo con alguno de estos términos, le solicitamos que no utilice nuestra aplicación.", style: TextStyle(fontSize: 12),),
                SizedBox(
                  width: 18,
                ),
                Text("2. Uso Apropiado de la Aplicación", style: TextStyle(fontSize: 18),),
                Text("Usted se compromete a utilizar nuestra aplicación de manera responsable y de acuerdo con la ley. Queda prohibido el uso de la aplicación para fines ilegales, dañinos, amenazantes, abusivos o que infrinjan los derechos de terceros. Nos reservamos el derecho de suspender o cancelar su cuenta si detectamos un uso indebido de la misma.", style: TextStyle(fontSize: 12),),
                Text("3. Propiedad Intelectual", style: TextStyle(fontSize: 18),),
                Text("Todos los derechos de propiedad intelectual relacionados con nuestra aplicación, incluyendo, pero no limitado a, el diseño, el código fuente, las marcas registradas y los contenidos, son propiedad exclusiva de nuestra empresa. Queda prohibida la reproducción, distribución, modificación o uso no autorizado de cualquier elemento de la aplicación.", style: TextStyle(fontSize: 12),)
              ],
            ),
            ),
        ),
      );
  }
}