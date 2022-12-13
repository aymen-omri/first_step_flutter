import 'dart:ffi';

import 'package:flutter/material.dart';

import '../Models/Departement.dart';
import '../Services/DepartementService.dart';

class addDepartement extends StatefulWidget{
  State<addDepartement> createState() => _depState();
}

class _depState extends State<addDepartement>{
  final _formKey = GlobalKey<FormState>();
  var mission = TextEditingController();
  var label = TextEditingController() ;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Add new Departement"),
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.home),
        ),
      ),
      body:Form(
        key: _formKey,
        child: Column(
          children: [
            TextField(
              controller: label,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "label"
              ),
            ),
            TextField(
              controller: mission,
              decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: "Mission"
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () async{
                  if(_formKey.currentState!.validate()){
                    Departement d = Departement(label:label.text,mission:mission.text);
                    int res = await DepartementService.addDepartement(d);
                    String msg = "" ;
                    if(res==201){
                      msg = "added successfully!";
                    }else{
                      msg = 'Something went wrong';
                    }
                   showDialog(context: context, builder: (context){
                     return AlertDialog(content: Text(msg),actions: [
                       ElevatedButton(onPressed: (){
                         Navigator.pop(context);
                       }, child: Text("OK"))
                     ],);
                   });
                  }
                }, child: Text("Add"),),
                ElevatedButton(onPressed: (){
                  mission.clear();
                  label.clear();
                }, child: Text("Reset"))
              ],
            ),
          ],
        ),
      ) ,
    );
  }

}