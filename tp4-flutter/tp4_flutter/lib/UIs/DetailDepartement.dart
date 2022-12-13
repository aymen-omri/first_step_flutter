import 'package:flutter/material.dart';
import 'package:tp4_flutter/Models/Departement.dart';

class DetailDepartement extends StatelessWidget {
Departement departement ;
DetailDepartement({required this.departement});

@override
  Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: Text("Details Departement"),
      leading: IconButton(onPressed: (){
        Navigator.pop(context);
      },icon: Icon(Icons.arrow_back),),
    ),
    body: Container(
      margin: EdgeInsets.all(5),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0)
        ),
        color: Colors.lightBlueAccent,
        elevation: 10,
        child: ListTile(
          leading: Text(departement.id.toString()),
          title: Text(departement.label.toString()),
          subtitle: Text(departement.mission.toString()),
        ),
      ),
    ),
  );
}

}