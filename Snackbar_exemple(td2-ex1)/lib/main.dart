import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      title: "TD2 ex1",
      home:Scaffold(
        appBar: AppBar(
          title: Text("TD2_Flutter")
        ),
        body:SnackbarPage()
      )

    ) ;
  }
}

class SnackbarPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
       return GridView(
         scrollDirection: Axis.vertical,
         padding: EdgeInsets.all(20),
         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 2,
           crossAxisSpacing: 2,
           mainAxisSpacing: 16
         ),
         children: [
           for (var i = 1; i < 7; i++)
           ElevatedButton(
             onPressed: () {
               final snackBar = SnackBar(
                 content:  Text('button $i pressed!'),
                 action: SnackBarAction(
                   label: 'Undo',
                   onPressed: () {
                     // Some code to undo the change.
                   },
                 ),
               );

               // Find the ScaffoldMessenger in the widget tree
               // and use it to show a SnackBar.
               ScaffoldMessenger.of(context).showSnackBar(snackBar);
             },
             child:  Text('button $i'),
           ),
         ],


       );

  }
}