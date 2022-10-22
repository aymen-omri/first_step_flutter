import 'package:flutter/material.dart';

class EX2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'TP2 EX3',
      home: Scaffold(
        appBar: AppBar(
          title: Text('TP2 EX3')
        ),
        body: CheckboxClass(),
      ),
    );
  }
}

class CheckboxClass extends StatefulWidget{
 @override
  State<CheckboxClass> createState() => _CheckState();
}

class _CheckState extends State<CheckboxClass> {
  @override
  var check = false ;
  Widget build(BuildContext context){
    return CheckboxListTile(
      title: Text("Etat du checkbox : $check"),
        value: check,
        onChanged:(value){
      check = value! ;
      setState(() {
      });
    });
  }
}