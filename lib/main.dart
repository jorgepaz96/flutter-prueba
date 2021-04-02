import 'package:flutter/material.dart';


void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi App",
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Empresa _facebook = new Empresa(
    "Facebook",
    "Jorge missael",
    100
  );
  Empresa _google = new Empresa("google", "Missael paz", 50000);
  
  @override
    void initState() {      
      super.initState();
      print(_facebook.nombre);
      print(_facebook.propietario);
      print(_facebook.ingresoAnual);
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Clases"),),
        body: Center(
          child: Text(_google.ingresoAnual.toString(),style: TextStyle(fontSize: 20),)
          )
        );
      
  }
}

class Empresa {
  String nombre;
  String propietario;
  int ingresoAnual;

  Empresa(String nombre, String propietario, int ingreso){
    this.nombre = nombre;
    this.propietario = propietario;
    this.ingresoAnual = ingreso;
  }

}
