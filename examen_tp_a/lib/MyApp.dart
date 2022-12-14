import 'package:flutter/material.dart';

import 'Athentification.dart';
import 'acceuil.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext buil){
    return MaterialApp(
      title: "Examen Tp",
      initialRoute: '/',
      routes: {
        '/' : (context) => Authentification(),
        '/acceuil':(context) => acceuil()
      },
    );
  }
}