import 'package:flutter/material.dart';

void main() => runApp(const formulario());

class formulario extends StatefulWidget {
  const formulario({super.key});

  @override
  State<formulario> createState() => _formularioState();
}

class _formularioState extends State<formulario> {
  
  final GlobalKey<FormState> estadoFormulario = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formulario',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Formulario'),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.all(20),
          child: Form(
            key: estadoFormulario,
            child: Column(
              children: [
                Container(child: TextFormField(
                  validator: (value){
                    if(!value!.contains("@")){
                      return "El correo no es valido";
                    } else {

                    }
                  },
                  decoration: 
                  InputDecoration(hintText: "Correo electronico"),
                )),   
                Container(child: TextFormField( //container con textfield de contraseña
                  obscureText: true,
                  validator: (value){
                    if(value!.length < 6){
                      return "Debe tener minimo 6 caracteres";
                    }
                  },
                  decoration: 
                  InputDecoration(hintText: "Contraseña"),
                )),            
                Container(
                  padding: EdgeInsets.only(top: 10),
                  width: double.infinity,
                  child: OutlinedButton(onPressed: (){
                    if(estadoFormulario.currentState!.validate()) {
                      print("Excelente");
                    } else {
                      print("Error!");
                    }
                  }, child: const Text("Validar"),))
            ]),
             
        ),
        
      ),
      
    ));
  }
}