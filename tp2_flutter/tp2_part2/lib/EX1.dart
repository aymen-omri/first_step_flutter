import 'package:flutter/material.dart';
class EX1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'tp2 part2',
      home: Scaffold(
        appBar: AppBar(
          title: Text("TP2 PART2"),
        ),
        body: UpperCase(),
      ),
    );
  }
}

class UpperCase extends StatefulWidget{
  @override
  State<UpperCase> createState() => _UpperCaseState();
}

class _UpperCaseState extends State<UpperCase>{
  @override
  String inputText = "";
  String upperText = "";


  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextField(
          onChanged: (value){
            inputText = value;
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "write something here...",

          ),
        ),
        ElevatedButton(onPressed: (){
          setState(() {
            upperText = inputText.toUpperCase();
          });
        }, child: Text('UpperCase')),
        Text(upperText)
      ],
    );
  }
}