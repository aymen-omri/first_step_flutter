import 'package:flutter/material.dart';
import 'package:tp4_flutter/UIs/addDepartement.dart';
import 'package:tp4_flutter/UIs/allDepartements.dart';
import 'package:tp4_flutter/UIs/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Crud App",
      initialRoute: '/',
      routes: {
        '/':(context) => index(),
        '/addDep':(context) => addDepartement(),
        '/allDep':(context)=> allDepartements()
      },
    );
  }
}