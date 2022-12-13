import 'package:flutter/material.dart';

class index extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Rest API example"),
      ),
      body: Column(
        children: [
          TextButton(onPressed: (){
            Navigator.pushNamed(context, '/addDep');
          }, child: Text("Add Departement"),),
          TextButton(onPressed: (){
            Navigator.pushNamed(context, '/allDep');
          },child: Text("All Departements"),)
        ],
      ),

    );
  }
}