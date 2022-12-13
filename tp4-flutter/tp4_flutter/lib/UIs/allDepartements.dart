import 'package:flutter/material.dart';
import 'package:tp4_flutter/Services/DepartementService.dart';
import 'package:tp4_flutter/UIs/DetailDepartement.dart';

import '../Models/Departement.dart';

class allDepartements extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed:(){
          Navigator.pop(context);
        },icon: Icon(Icons.home),),
        title: Text("All Departements"),
      ),
      body: listData(),
    );
  }
}
class listData extends StatefulWidget{
  @override
  State<listData> createState() => _listDataState() ;
}
class _listDataState extends State<listData>{
  List<Departement>? allDepartement ;
  loadData() async{
    Future<List<Departement>?> res = DepartementService.getDepartements();
    res.then((value){
      setState(() {
        allDepartement = value ;
      });
    });
  }

  @override
  Widget build(BuildContext context){
    return Center(
      child: FutureBuilder(
        future: loadData(),
        builder: (context,snapshot){
          if(allDepartement == null) {
            return Center(child: Text("No departements"),);
          }else{
            return ListView.builder(
                itemCount: allDepartement!.length,
                itemBuilder: (BuildContext , int index){
                return GestureDetector(
                         onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailDepartement(departement: allDepartement![index])));
                         },
                    child:Container(
                      margin: EdgeInsets.all(5),
                      child: ListTile(
                        leading: Text(allDepartement![index].id.toString()),
                        title:Text(allDepartement![index].label.toString()),
                        subtitle: Text(allDepartement![index].mission.toString()),
                        trailing: IconButton(onPressed: () async{
                          int res = await  DepartementService.deleteDepartement(allDepartement![index].id!);
                          String msg = "" ;
                          if(res==202){
                            msg="deleted successfully" ;
                          }else {
                            msg="something went wrong!" ;
                          }
                          showDialog(context: context, builder: (context){
                            return AlertDialog(content: Text(msg),actions: [
                              ElevatedButton(onPressed: (){
                                Navigator.pop(context);
                                }, child: Text("OK"))
                            ],);
                      });
                    },icon: Icon(Icons.delete),),
                  ),
                )) ;
            });
          }
        },
      ),
    );
  }

}