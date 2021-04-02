import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<Persona> _personas = [
    Persona("jose", "meza", "9094894984"),
    Persona("jorge", "paz", "8446548491"),
    Persona("missael", "paz", "8446548491"),
    Persona("raul", "paz", "8446548491"),
    Persona("tulio", "paz", "8446548491"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: ListView.builder(
          itemCount: _personas.length,
          itemBuilder: (context,index){
            return ListTile(
              onTap: (){
                this._borrarPersona(context, _personas[index]);
              },
              title: Text(_personas[index].name + ' ' + _personas[index].lastname),
              subtitle: Text(_personas[index].phone),
              leading: CircleAvatar(
                child: Text(_personas[index].name.substring(0,1)),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            );
          }
        )
      ),
    );
  }
  _borrarPersona(context, Persona persona){
    showDialog(
      context: context, 
      builder: (_) => new AlertDialog(
        title: Text("Eliminar contacto"),
        content: Text("¿Estas seguro de eliminar a "+ persona.name + ' ?'),
        actions: <Widget>[
          TextButton(
            onPressed: (){
              Navigator.pop(context);
            }, 
            child: Text("Cancelar")
          ),
          TextButton(
            onPressed: (){
              print(persona.name);
              this._personas.remove(persona);
              this.setState(() { });
              Navigator.pop(context);
            }, 
            child: Text("Borrar",style: TextStyle(color: Colors.red),)
          ),
        ],
      )
    );
  }
}


class Persona {
  String name;
  String lastname;
  String phone;

  Persona(name, lastname, phone){
    this.name = name;
    this.lastname = lastname;
    this.phone = phone;
  }
}