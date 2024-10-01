import "package:flutter/material.dart";
void main(){
  runApp(const AppbarColor());
}

class AppbarColor extends StatefulWidget{
  const AppbarColor({super.key});

  @override
  State createState() => _AppbarColorState();
}

class _AppbarColorState extends State{
  bool changeColor=true;

@override
Widget build(BuildContext context){
  return  MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        title:const Text("Appbar Color Change"),
        backgroundColor:changeColor ? Colors.blue : Colors.amber,
        centerTitle: true,
      ),
      body:const Center(
        child: Text("Change Appbar Color"),
      ),
      floatingActionButton:FloatingActionButton(
        onPressed:(){
          if(changeColor == true){
            changeColor = false;
          }else{
            changeColor = true;
          }
          setState((){});
        },
        backgroundColor: Colors.blue,
        child:const Text("change color"),

        ),
    ),
  );
}
}
