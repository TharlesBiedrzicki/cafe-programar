
import 'package:flutter/material.dart';

void main() {

  runApp(MaterialApp(
      home: Inicial()

  ));
  
}
class Inicial extends StatefulWidget {
  @override
  _InicialState createState() => _InicialState();
}

class _InicialState extends State<Inicial> {
  int cafe = 70 ;
  int linhasCodigo = 0;
  Color cor = Colors.green;

  xicaraCafe(){
    setState(() {
      if(cafe >= 70){
        cor = Colors.green;
      }
      if(cafe <= 69 && cafe >= 50){
        cor = Colors.amber;
      }
      if(cafe <= 49 && cafe >= 25){
        cor = Colors.orange;
      }
      if(cafe <= 24 && cafe >=0){
        cor = Colors.red;
      }
    });
  }

  programar() {
    if (cafe > 0) {
      setState(() {
          linhasCodigo ++;
        cafe = cafe - 5;
      });
      xicaraCafe();
    }
  }
  addCafe(){
    if (cafe < 100) {
      setState(() {
        cafe = cafe + 5;
      });
      xicaraCafe();
    }
  }
  reset(){
    setState(() {
      cafe = 70 ;
      linhasCodigo = 0;
      xicaraCafe();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarraSuperior(),
       bottomNavigationBar: BarraInferior(),
       body: corpo()

    );
  }


  Widget BarraSuperior() {
   return AppBar(
        title: Text(
          "Café programar",
          style: TextStyle(fontSize: 30),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.autorenew),
              onPressed: () {
           // reset();
              }
              )
        ]
    );
  }

  Widget corpo() {

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.all(60.0),
            child: Text("Linhas de Codigo", style: TextStyle(color: Colors.black, fontSize: 30.0) )),
          Padding(
              padding: EdgeInsets.fromLTRB(60, 60, 60, 5),
              child:Icon(Icons.local_cafe, size: 100.0, color: cor)),
          Padding(
              padding: EdgeInsets.fromLTRB(60, 5, 60, 60),
              child: Text(" % Cafe", style: TextStyle(color: Colors.black, fontSize: 30.0)) ),
          Padding(
              padding: EdgeInsets.all(60.0),
            child: RaisedButton(
            onPressed: (){
           // programar();

            },
                child: Text(
              "Programar",
              style: TextStyle(color: Colors.black, fontSize: 30.0),

            ),
            color: Colors.blue,
          ),),
  }


  Widget BarraInferior() {
   return BottomAppBar(
        child: FlatButton(
          child: IconButton (icon: Icon(Icons.add_box),
              onPressed: () {
           // addCafe();

              }
              ),
        )
       );
  }
}


