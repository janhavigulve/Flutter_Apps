import "package:flutter/material.dart";

void main(){
  runApp(const ContainerInCenter());
}

class ContainerInCenter extends StatelessWidget{
  const ContainerInCenter({super.key});

  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title:const Text("Conatiner in Center"),
          backgroundColor:Colors.blue,
        ),
        body:Center(
          child:Container(
            height: 100,
            width: 100,
            color:Colors.amber
          ),
        ),
      ),
    );
  }
}