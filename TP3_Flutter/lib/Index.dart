import 'package:flutter/material.dart';

class Index extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Index"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              Navigator.pushNamed(context, '/inscription');
            },
              child: Text("Inscription", style: TextStyle(
                fontSize: 50
              ),),),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, '/listeEtudiant');
            },
              child: Text("Liste Etudiants",style: TextStyle(
                fontSize: 50
              ),),)
          ],
        )
      ),
    );
  }
}