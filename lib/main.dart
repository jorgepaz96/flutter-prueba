import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Gif.dart';
import 'package:http/http.dart' as http; 
 
void main() => runApp(MyApp());
 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  Future<List<Gif>> _listadoGifs;

  Future<List<Gif>> _getGifs() async{
    final response = await http.get(Uri.https("api.giphy.com", '/v1/gifs/trending', {'api_key' : '10qznyNOQ4HHdQfBqvBMJBQzNQu40GWl','limit':'10','rating':'g'}));
    List<Gif> gifs = [];
    if (response.statusCode == 200) {
      String body = utf8.decode(response.bodyBytes);
      final jsonData = jsonDecode(body);      
      for (var item in jsonData["data"]) {        
        gifs.add(
          Gif(item["title"],item["images"]["downsized"]["url"])
        );
      }
      return gifs;
    }else{
      throw Exception("Falló la conexión");
    }
  }
  @override
  void initState() { 
    super.initState();
    _listadoGifs =  _getGifs();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: FutureBuilder(
          future: _listadoGifs,
          builder: (context, snapshot) {
            if (snapshot.hasData) {              
              return GridView.count(
                crossAxisCount: 2,
                children: listGifs(snapshot.data),
              );
            }else if (snapshot.hasError){
              print(snapshot.error);
              return Text("aioz");
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        )
      ),
    );
  }

  List<Widget> listGifs(List<Gif> data) {
    List<Widget> gifs = [];
    for (var gif in data) {
      gifs.add(
        Card(child: Column(
          children: [
            Expanded(child: Image.network(gif.url,fit: BoxFit.fill,))            
          ],
        ))
      );
    }
    return gifs;
  }
}
