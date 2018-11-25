import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
Color _myColor=Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("My App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text("Cambia el color del Texto!!",style: TextStyle(color: _myColor,fontSize:15.0),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget>[
              RaisedButton(
                child: Text("Azul"),
                onPressed: () 
                {
                  print("Click Boton Azul");
                  _changeColor(Colors.blue);
                  //setState(() {
                   // _myColor=Colors.blue;
                  //});
                },
              ),
              RaisedButton(
                child: Text("Verde"),
                onPressed:(){
                  print("Click Boton Verde");
                  _changeColor(Colors.green);
                  //setState(() {
                  //_myColor=Colors.green;
                  //});
                },
              ),
              RaisedButton(
                child: Text("Rojo"),
                onPressed: (){
                  print("Click Boton Rojo");
                  _changeColor(Colors.red);
                  //setState(() {
                  //_myColor=Colors.red;
                  //});
                },
              )
            ]
          )
        ]),
    );
  }


  void _changeColor(Color color){
  setState((){
    _myColor=color;
  });
 }
}