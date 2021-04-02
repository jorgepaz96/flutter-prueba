import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/pagina02.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Mi app"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("home"),
              RaisedButton(
                child: Text("Ir a la otra pagina"),
                onPressed: ()=>{
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context)=>Pagina02())
                  )
                },
              )
            ],
          ),
        )
      );
  }
}
