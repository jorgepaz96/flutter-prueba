import 'package:flutter/material.dart';

class Pagina02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Terminos y condiciones"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Text("Terminos y condiciones", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            SizedBox(height: 15,),
            Text("Lorem ipsum dolor sit amet consectetur adipiscing elit dictumst, vel erat semper cum cursus placerat facilisi neque porta, magnis interdum ac ultricies potenti platea turpis. Nam ante penatibus dui pulvinar enim blandit nulla, turpis feugiat eu tempor vel nibh ridiculus, bibendum interdum risus vitae nunc aliquet. Ultricies pharetra egestas fringilla augue lacus morbi varius, enim arcu ut phasellus turpis.",
            style: TextStyle(fontSize: 18), textAlign: TextAlign.justify,),
            SizedBox(height: 15,),
            Text("Eget inceptos eu senectus mi arcu donec turpis magnis litora, torquent quisque felis morbi imperdiet cubilia nulla bibendum, augue laoreet proin maecenas ad a aliquet faucibus. Tristique tempus lacus sollicitudin torquent nisi convallis duis lacinia, inceptos neque fermentum cum gravida purus eget habitasse, ridiculus phasellus volutpat pellentesque malesuada curabitur orci natoque, auctor commodo vestibulum dui urna quis placerat. Malesuada pulvinar ultricies suspendisse bibendum est, netus sagittis quam augue placerat nascetur, egestas libero non eu.",
            style: TextStyle(fontSize: 18), textAlign: TextAlign.justify,),            
            SizedBox(height: 15,),
            RaisedButton(
              padding: EdgeInsets.all(15),
              color: Colors.blue,
              textColor: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Acepto todo", style: TextStyle(fontSize: 20),),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
              onPressed: ()=>{
                Navigator.pop(context)
              }
            )
          ],
        ),
      ),
    );
  }
}