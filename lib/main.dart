import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/pageStatefull.dart';
import 'package:flutter_application_1/pages/pageStateless.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _textController = TextEditingController(text: "");
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),  
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                border: InputBorder.none,
                fillColor: Colors.grey[300],
                filled: true,
                hintText: "Ingresa Informacion"
              ),
            )
          ),
          RaisedButton(
            onPressed: (){
              // print(_textController.text);
              Navigator.push(
                context, MaterialPageRoute(
                builder: (builder) => PageStateless(_textController.text)
                )
              );
            },
            child: Text("Enviar a stateless"),
          ),
          RaisedButton(
            onPressed: (){
              // print(_textController.text);
              Navigator.push(
                context, MaterialPageRoute(
                builder: (builder) => PageStatefull(_textController.text)
                )
              );
            },
            child: Text("Enviar a statefull"),
          )
        ],
      ),
    );
  }
}