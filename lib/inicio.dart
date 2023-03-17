

import 'package:flutter/material.dart';

class inicio extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _inicioState();

}

class _inicioState extends State<inicio>{

  final nombre = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(60),
      children: [
        Text("Bienvenido a Medifast", style: TextStyle(fontSize: 40,color: Colors.lightGreen),),
        SizedBox(height: 30,),
        TextField(
          controller: nombre,
          decoration: InputDecoration(
            labelText: "nombre",
            prefixIcon: Icon(Icons.account_circle),
            border: OutlineInputBorder()
          ),
        ),
        SizedBox(height: 10,),
        TextField(
          controller: password,
          decoration: InputDecoration(
              labelText: "contraseña",
              prefixIcon: Icon(Icons.password),
              border: OutlineInputBorder()
          ),
        ),

      ],//children
    );
  }

}