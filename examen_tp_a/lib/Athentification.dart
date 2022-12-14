import 'package:flutter/material.dart';

import 'connexion.dart';

class Authentification extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Authentification"),
      ),
      body: myForm(),
    );
  }
}

class myForm extends StatefulWidget{
  State<myForm> createState() => connexion() ;
}