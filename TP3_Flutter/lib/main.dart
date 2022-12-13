import 'package:flutter/material.dart';
import 'package:tp3_flutter/ListeEtudiant.dart';
import 'package:tp3_flutter/inscription.dart';
import 'Index.dart' ;

void main() {
  runApp(mainn());
}

class mainn extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Named routes demo",
      initialRoute: '/',
      routes: {
        '/': (context) => Index(),
        '/inscription': (context) => inscription(),
        '/listeEtudiant' : (context) => ListeEtudiant()
      },
    );
  }
}

