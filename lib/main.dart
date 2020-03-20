
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


