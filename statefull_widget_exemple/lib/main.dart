import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "EX2 TD2",
      theme:ThemeData(primarySwatch:Colors.yellow),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("StatefullWidget"),
        ),
        body: const MyList(),
      ),
    );
  }
}

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}


class _MyListState extends State<MyList> {
  final List<String> _pokNames=['pikatchu','Bulbizarre','Herbizarre','Florizarre'
      'Reptincel','Dracaufeu','Carapuce'];
  String message = "" ;

  int exist(List<String> list , String x){
    for (var element in list) {
      if(element == x) {
        return 1 ;
      }
    }
    return 0 ;
  }

  final myController = TextEditingController();

  @override
  void dispose() {

    myController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      const Padding(
        padding: EdgeInsets.all(10),
        child: Text("Quiz Pokemon",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700)),
      ),
       Padding(
        padding: const EdgeInsets.all(10),
        child: TextField(
          controller: myController,
          decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: "pokemon name",
              suffixIcon: IconButton(onPressed: (){
                  myController.clear();
              },icon:const Icon(Icons.clear))
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: ElevatedButton(onPressed: () {
          setState(() {
           if(exist(_pokNames , myController.text)==1){
             message = "Congratulations! You win";
           }else{
             message="You loose!";
           }
          }
          );
        }, child: const Text("Verify"),),
      ),
    Padding(
        padding: const EdgeInsets.all(10),
        child:Center(child: Text(message ,
          style: const TextStyle(
              color: Colors.red,
              fontSize: 20
          ),)))
    ],);
  }
}




