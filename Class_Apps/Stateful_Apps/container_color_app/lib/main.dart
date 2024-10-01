import "package:flutter/material.dart";
void main(){
  runApp(const ContainerColorApp());
}

class ContainerColorApp extends StatefulWidget{
  const ContainerColorApp({super.key});

  @override
  State createState() => _ContainerColorApp();
}

class _ContainerColorApp extends State{
  bool changeColor=true;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar:AppBar(
          title: const Text("Container Color App"),
          centerTitle:true,
          backgroundColor:Colors.blue,
        ),
        body:Center(
          child:Container(
            height: 100,
            width: 100,
            color:changeColor ? Colors.red : Colors.black,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:(){
            if(changeColor == true){
              changeColor = false;
            }else{
              changeColor = true;
            }
            setState((){});
          },
          backgroundColor: Colors.blue,
          child:const Text("Toggle color"),
          ),
      ),
    );
  }
}