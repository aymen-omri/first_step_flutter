import 'package:flutter/material.dart';
class FirstUI extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        title : "EX1 EX2 flutter",
        home: Scaffold(
            appBar: AppBar(
              title: Text("barre"),
              leading: Icon(Icons.arrow_back_sharp),
              actions: [
                Icon(Icons.add_shopping_cart),
                Icon(Icons.email),
                Icon(Icons.phone)
              ],
            ),
            body : Center(child:Column(children: [

              Container(
                child:Text("favorite cartoon" , style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                )),
                padding:EdgeInsets.all(20),
                margin: EdgeInsets.all(30),
                decoration: new BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.all(Radius.circular(5))
                ),
              ),
              Image.asset("images/pokemon.jpeg"),
              Row(
                //diviser l'espace vide dans la ligne entre les boutons
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //code pour le premier bouton
                    ElevatedButton(onPressed:() {}, child: Text('Sign Up')),
                    //code pour le deuxième bouton
                    ElevatedButton(onPressed:() {}, child: Text('Sign In'))
                  ]
              )
          ],)),


            floatingActionButton: FloatingActionButton(child:Icon(Icons.home), onPressed: (){})

        ),
        theme: ThemeData(primarySwatch: Colors.amber)
    );
  }
}