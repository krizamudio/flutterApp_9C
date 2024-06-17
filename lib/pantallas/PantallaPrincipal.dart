import 'package:flutter/material.dart';
import 'package:flutter_application_2/datos/datos.dart';
import 'package:flutter_application_2/widgets/tarjetaFeed.dart';

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
    listaFeed(),
    paginaBuscar(),
    paginaCuenta()
  ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 44, 44, 44),
        title: const Text('FeisCool', style: TextStyle(color: Colors.white),),
      ),
      body: _paginas[_paginaActual], 
      //listaFeed(),

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
        BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: "Circulo")
      ]    
          
        

      ),
      backgroundColor: Color.fromARGB(255, 119, 119, 119), //color de fondo de la app
      //floatingActionButton: FloatingActionButton(
        //onPressed: (){}, //acciones que hara el botón 
        //child: Icon(Icons.add_comment_sharp) //icono que aparece en el botón (+)
        //), 
    );
  }
}

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

class paginaBuscar extends StatelessWidget {
  const paginaBuscar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text('Buscar'),
      ),
    );
  }
}

class paginaCuenta extends StatelessWidget {
  const paginaCuenta({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text('Cuenta'),
      ),
    );
  }
}
