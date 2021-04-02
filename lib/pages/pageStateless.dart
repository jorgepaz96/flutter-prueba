import 'package:flutter/material.dart';

class PageStateless extends StatelessWidget {
  final String texto;
  const PageStateless(this.texto, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless page"),        
      ),
      body: Center(
        child: Text(texto),
      ),
    );
  }
}