import 'package:examen_tp_a/Athentification.dart';
import 'package:flutter/material.dart';
class connexion extends State<myForm>{
  var login = TextEditingController();
  var password = TextEditingController();
  var formKey = GlobalKey<FormState>();
  String errorMsg = "" ;

  @override
  Widget build(BuildContext context){
    return Form(
      key: formKey,
      child: Container(
        margin: EdgeInsets.all(7),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              validator: (value){
                if(value == null || value.isEmpty){
                  return "please enter your username";
                }else{
                  return null ;
                }
              },
              controller: login,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "username"
              ),
            ),
            TextFormField(
              validator: (value){
                if(value== null || value.isEmpty){
                  return "please enter your password";
                }else{
                  return null ;
                }
              },
              controller: password,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "password"
              ),
            ),
            ElevatedButton(onPressed: (){
              setState(() {
              });
              if(formKey.currentState!.validate() && password.text.toString() == "1234" && login.text.toString() == "istic"){
                Navigator.pushNamed(context, "/acceuil");
              }else{
                errorMsg = "something went wrong" ;
              }
            }, child: Text("login")),
            ElevatedButton(onPressed: (){
              login.clear() ;
              password.clear();
            }, child: Text("reset")),
            GestureDetector(
              onTap: (){
                errorMsg = "";
                setState(() {
                });
              },
              child: Text(errorMsg),
            )
          ],
        ),
      ),
    );
  }
}