import "package:flutter/material.dart";
void main(){
 runApp(const IndianFlag()); 
}

class IndianFlag extends StatelessWidget{
  const IndianFlag({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title:const Text("Indian Flag"),
          centerTitle:true,
          backgroundColor:Colors.blue,
        ),
        body: Center(
          child:Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Container(
                height: 45,
                width: 300,
                color:Colors.orange,
              ),
              Container(
                height:45,
                width:300,
                color:Colors.white,
                child:Image.network("https://photomedia.in/wp-content/uploads/2023/07/ashok-chakra-1024x1024.png"),
              ),
              Container(
                height:45,
                width:300,
                color:Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
