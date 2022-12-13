import 'dart:convert';

import 'package:http/http.dart';
import 'package:tp4_flutter/Models/Departement.dart';
import 'package:tp4_flutter/Services/Constantes.dart';

class DepartementService{
  static Future<List<Departement>?> getDepartements() async{
    Response response = await get(Uri.parse(Constantes.api_url_departements));
    if(response.statusCode==200){
      List<dynamic> body = jsonDecode(response.body);
      List<Departement> departements = body.map(
              (dynamic item)=>
              Departement.fromJson(item)).toList();
      return departements ;
    }else{
      return null ;
    }
  }

  static Future<int> addDepartement(Departement departement) async{
    Response response = await post(Uri.parse(Constantes.api_url_departements),
    headers: <String,String>{
      'Content-Type':'application/json; charset=UTF-8'
    },
      body: jsonEncode(departement)
    );

    return response.statusCode ;
  }

  static Future<int> deleteDepartement(int id ) async {
    Response response = await delete(Uri.parse(Constantes.api_url_departements+"/$id"));
    return response.statusCode ; 
  }
}