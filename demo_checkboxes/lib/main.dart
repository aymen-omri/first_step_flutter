import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "EX3 TD2",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Demo Checkboxes"),
        ),
        body: MyBody(),
      ),
    );
  }
}

class MyBody extends StatefulWidget{
  const MyBody({super.key});

  @override
  State<MyBody> createState() => _BodyState();
}

class _BodyState extends State<MyBody>{
  var _checked = false;
  var _checked1 = false;
  var message = "";

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 20),
      child: Column(children:  [
        const Text("Traning Price",
            style:TextStyle(
                fontSize: 30,
                fontWeight:
                FontWeight.w600,
                backgroundColor: Colors.yellow,
                color:Colors.black)),
        CheckboxListTile(
            title: const Text("Dev Front"),
            value: _checked,
            onChanged: (value){
                setState(() {
                _checked=value!;
           });
        }),
        CheckboxListTile(
            title: const Text("Dev Back"),
            value: _checked1,
            onChanged: (value){
              setState(() {
                _checked1=value!;
              });
            }),
        ElevatedButton(onPressed: (){
          setState(() {
            if(_checked && _checked1){
              message = "Dev Front : 300DT, Dev back : 200DT";
            }else if(_checked && !_checked1){
              message="Dev Front : 300DT";
            }else{
              message="Dev Back : 200DT";
            }
            final snackBar = SnackBar(
                content: Text(message),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {},
                )
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          });

        }, child: const Text("Get Price"))
      ],
    )
    );
  }
}