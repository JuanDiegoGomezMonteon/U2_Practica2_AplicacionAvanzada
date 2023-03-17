

import 'package:flutter/material.dart';

import 'inicio.dart';
import 'medicamentos.dart';
import 'sintomas.dart';

class practica2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _practica2();
  }

}

class _practica2 extends State<practica2>{
  int _indice = 0;

  void _cambiarIndice(int indice){
    setState(() {
      _indice = indice;
    });
  }

  final List<Widget> _paginas = [
    inicio(),
    sintomas(),
    medicamentos(),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Practica 2"), backgroundColor: Colors.black),
      body: _paginas[_indice],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(icon: Icon(Icons.medical_information),label: "Consulta"),
          BottomNavigationBarItem(icon: Icon(Icons.medication),label: "medicamentos")
        ],
        currentIndex: _indice,
        onTap: _cambiarIndice,
        iconSize: 30,
        unselectedItemColor: Colors.white30,
        backgroundColor: Colors.lightGreen,
        selectedItemColor: Colors.white,

      )
    );
  }

}