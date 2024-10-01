import "package:flutter/material.dart";

void main(){
  runApp(const TextApp());
}

class TextApp extends StatelessWidget{
  const TextApp({super.key});
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title:const Text("First App"),
          centerTitle: true,
          backgroundColor:Colors.blue,
        ),
        body:const Center(
          child:Text("Incubators"),
        ),
      ),
    );
  }
}