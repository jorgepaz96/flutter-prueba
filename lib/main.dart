import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  List<String> images = [
    "https://as.com/meristation/imagenes/2021/01/20/noticias/1611162270_013847_1611162672_noticia_normal.jpg",
    "https://sm.ign.com/t/ign_latam/screenshot/default/goku-susanoo_7by3.1280.jpg",
    "https://www.tierragamer.com/wp-content/uploads/2018/11/Super_Saiyajin_Vegeta.jpg",
    "https://i0.wp.com/codigoespagueti.com/wp-content/uploads/2021/03/Majin-Vegeta-de-Dragon-Ball-1.jpg?fit=1280%2C720&quality=80&ssl=1"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('swiper'),
        ),
        body: Container(
            child: _swiper(),
          ),        
      ),
    );
  }

  Widget _swiper() {
    return Container(
      width: double.infinity,
      height: 250.0,
      child: Swiper(
        viewportFraction: 0.8,
        scale: 0.9,
        itemBuilder: (BuildContext context,int index){
          return new Image.network(
            images[index],
            fit: BoxFit.fill,
          );
        },
        itemCount: images.length,
        pagination: new SwiperPagination(),
        control: new SwiperControl(),
      ),
    );
  }
}