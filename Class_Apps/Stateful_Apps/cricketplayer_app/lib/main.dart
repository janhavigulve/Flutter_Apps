import 'package:flutter/material.dart';

void main() {
  runApp(const CricketplayerApp());
}

class CricketplayerApp extends StatefulWidget{
  const CricketplayerApp({super.key});

  @override
  State<CricketplayerApp> createState() => _CricketplayerAppState();
}

class _CricketplayerAppState extends State<CricketplayerApp>{
int _counter = 0;

List<String> playerList = <String> [
"https://w0.peakpx.com/wallpaper/951/988/HD-wallpaper-ms-dhoni-bcci-blue-cricket-india-jersey-msd.jpg",
"https://bsmedia.business-standard.com/_media/bs/img/article/2022-03/15/full/1647365891-7103.jpg",
"https://static.toiimg.com/thumb/msid-109093664,width-1280,height-720,resizemode-4/109093664.jpg",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2avldD4_3_4fbZpfZ-uklcHkgFR3r4z_L0A&s",
"https://static.toiimg.com/thumb/msid-105806503,width-960,height-1280,resizemode-6.cms",
];
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
      appBar:AppBar(
        title: const Text("Cricket Player App"),
        centerTitle:true,
        backgroundColor:Colors.blue,
      ), 
      body:Center(
        child: SizedBox(
          height: 300,
          width: 300,
          child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children:<Widget>[Image.network(playerList[_counter],
          height: 300
          ),
          ],
        ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(_counter < playerList.length-1){
            _counter++;
          }else{
            _counter = 0;
          }
          setState((){});
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.next_plan_sharp),
        ),
      ),
    );
  }
}
