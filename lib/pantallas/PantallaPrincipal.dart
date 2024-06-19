import 'package:flutter/material.dart';
import 'package:flutter_application_2/pantallas/formulario.dart';
import 'package:flutter_application_2/pantallas/listaFeed.dart';
import 'package:flutter_application_2/pantallas/paginaBuscar.dart';
import 'package:flutter_application_2/pantallas/paginaCuenta.dart';
import 'package:flutter_application_2/pantallas/tyc.dart';

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({
    super.key,
  });

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {

  int _paginaActual = 0;
  final List<Widget> _paginas = [
    const listaFeed(),
    const paginaBuscar(),
    const paginaCuenta()
  ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 44, 44, 44),
        title: const Text('FeisCool', style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          Expanded(child: _paginas[_paginaActual]), //muestra la pagina actual
          Row( //fila de botones
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OutlinedButton(onPressed: (){ //boton de TyC
                Navigator.push(context, MaterialPageRoute(builder: (context) => const tyc()));
              }, 
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  width: 5.0, color: Colors.white
                )
              ),
              child: const Text("Terminos y Condiciones", style: TextStyle(
                color: Colors.white
              ),
              ),
              ),
              OutlinedButton(onPressed: (){ //boton de formulario
                Navigator.push(context, MaterialPageRoute(builder: (context) => formulario()));
              }, 
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  width: 5.0, color: Colors.white
                )
              ),
              child: const Text("Ir a formulario", style: TextStyle(
                color: Colors.white
              ),
              ),
              ),
            ],
          )
        ],
      ), 
      
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: _paginaActual,
      onTap: (index) {
        setState(() {
          _paginaActual = index;
        });
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Buscar"),
        BottomNavigationBarItem(icon: Icon(Icons.android), label: "Perfil")
      ]),
      
      backgroundColor: Color.fromARGB(255, 119, 119, 119), //color de fondo de la app
    );
  }
}