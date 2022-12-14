import 'package:flutter/material.dart';

class acceuil extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Acceuil"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pop(context);
      },child: Icon(Icons.home),),
      body: Column(
        children: [
          Image.asset('images/welcome.PNG',fit: BoxFit.fitWidth, height: 300,),
        ],
      ),
    );
  }
}