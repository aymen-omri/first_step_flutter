import 'package:flutter/material.dart';
import 'package:tp3_flutter/Etudiant.dart';

class DetailEtudiant extends StatelessWidget{
  Etudiant etudiant ;
  DetailEtudiant(this.etudiant);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon:Icon(Icons.arrow_back)),
        title: Text("Liste Etudiant")
      ) ,
      body:Center(
        child: Column(
          children: [
            Text("id: ${etudiant.id}"),
            Text("nom: ${etudiant.nom}"),
            Text("age: ${etudiant.age} ans")
          ],
        ),
      ) ,
    );
  }
}