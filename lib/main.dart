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

  bool _subscrito = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Alert Dialog"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text("Suscribirme a este canala", style: TextStyle(fontSize: 20),),
                onPressed: (){
                  _mostrarAlerta(context);
                },
              ),
              SizedBox(height: 100,),
              Text(_subscrito? "Subscrito" : "No subscrito", style: TextStyle(fontSize: 20),)
            ],
          ),
        )
      );
  }
  void _mostrarAlerta(BuildContext context){
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (_) => new AlertDialog(
          title: new Text("Hola"),
          content: new Text(_subscrito? "Quieres desjar de seguir este canal?":"Quieres suscribirte?"),
          actions: <Widget>[
            TextButton(
              child: Text("Cancelar"),
              onPressed: (){
                print("No");
                
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: Text("Si quiero!"),
              onPressed: (){
                print("Si");
                setState(() {
                  _subscrito = !_subscrito;
                });
                Navigator.pop(context);
              },
            ),
            
          ],
        ));
  }
}

