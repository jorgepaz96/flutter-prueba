import 'package:flutter/material.dart';

class PageStatefull extends StatefulWidget {
  final String texto;
  PageStatefull(this.texto,{Key key}) : super(key: key);

  @override
  _PageStatefullState createState() => _PageStatefullState();
}

class _PageStatefullState extends State<PageStatefull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Statefull"),
      ),
      body: Center(child: Text(widget.texto),),
    );
  }
}