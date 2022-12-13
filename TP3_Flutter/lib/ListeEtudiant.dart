import 'package:flutter/material.dart';
import 'package:tp3_flutter/DetailEtudiant.dart';

import 'Etudiant.dart';

class ListeEtudiant extends StatelessWidget{
  List<Etudiant> list = [
    Etudiant(1,"aymen",20),
    Etudiant(2, "salah", 19),
    Etudiant(3, "ali", 22)
  ];
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
        title: Text("Liste Etudiant"),
      ),
      body: ListView.separated(
        itemCount: list.length,
        itemBuilder: (BuildContext context , int index){
          return Container(
            height: 50,
            child: GestureDetector(
              onTap: (){
                Navigator.push(context ,
                    MaterialPageRoute(builder: (context)=>
                        DetailEtudiant(list[index])
                    )
                );
              },
              child: Text(list[index].nom),
            ),
          );
        },
        separatorBuilder: (BuildContext context , int index) =>
          const Divider(color: Colors.lightBlue)
      )
    );
  }
}