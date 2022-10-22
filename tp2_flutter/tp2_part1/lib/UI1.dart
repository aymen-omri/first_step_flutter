import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class UI1 extends StatelessWidget{
  const UI1({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'TP2 PART1',
      home: Scaffold(
        appBar: AppBar(
            title: Text('TP2 PART1')
        ),
        body: Column(children: [
          createImage(),
          createTtiles(),
          createIcons()
        ],),
      ),
    );
  }
}

Widget createImage(){
  return Image.asset(
    'images/flutter.png',
      height: 300,
    fit: BoxFit.fitWidth
  );
}

Widget createTtiles(){
  return Container(
    margin: EdgeInsets.all(20),
    child: Row(children: [
      Expanded(
        child:
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Flutter Demo Page',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextButton(
              onPressed: () {
                Uri _url = Uri.parse('https://flutter.dev');
                launchUrl(_url);
                ;
              },
              child: Text('Visit Flutter Website'))
        ]),
        flex: 3,
      ),
      Column(
        children: [
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('Likes')
        ],
      )
    ]),

  );
}

Widget createIcons(){
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 30),
    margin: EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.redAccent
    ),
    child:Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(children: [
          Icon(Icons.phone , color: Colors.white,),
          Text('Call Me' , style: TextStyle(color: Colors.white),)
        ],),
        Column(children: [
          Icon(Icons.route),
          Text('Route')
        ],),
        Column(children: [
          Icon(Icons.share),
          Text('Share')
        ],)
      ],
    )
  );
}