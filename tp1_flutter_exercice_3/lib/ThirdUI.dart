import 'package:flutter/material.dart';
class ThirdUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
          appBar: AppBar(title: Text('Third UI')),
          body: Card(
              elevation: 8,
              shadowColor: Colors.green,
              margin: EdgeInsets.all(20),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.orange, width: 1)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround ,
                children: [
                  Image.asset("images/pikatchu.png" , width: 200),
                  Text("Pikatchu details")
                  // Code à terminer
                ],
              )
          )
      ),
    );
  }
}