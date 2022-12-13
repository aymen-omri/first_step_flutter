import 'package:flutter/material.dart';

class inscription extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.home),
        ),
        title: Text("Formulaire d'inscription"),
      ),
      body: Center(
        child: TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("Go to index page"),),
      ),
    );
  }
}