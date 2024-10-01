import "package:flutter/material.dart";
void main(){
  runApp(const ColumContainer());
}

class ColumContainer extends StatelessWidget{
  const ColumContainer({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
         appBar:AppBar(
        title:const Text("Column Container"),
        centerTitle:true,
        backgroundColor:Colors.blue,
      ),
      body: Center(
          child:Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color:Colors.red,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.amber,
              ),
              Container(
                height: 100,
                width: 100,
                color:Colors.orange,
              ),
            ],
          ),
        ),
      ),
      );
  }
}