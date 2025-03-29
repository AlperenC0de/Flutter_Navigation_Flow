import 'package:flutter/material.dart';
import 'package:flutter_application_4/pages/pageA.dart';
import 'package:flutter_application_4/pages/pageX.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: const Center(child:Text("Switching Pages", style:TextStyle(color: Colors.greenAccent,),),),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:[
          Center(child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Pagea()));
          }, child: const Text("Go to PageA", style:TextStyle(color: Colors.green),), style: ElevatedButton.styleFrom(backgroundColor: Colors.blue))),
          Center(child: ElevatedButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) => const Pagex()));
          }, child: const Text("Go to PageX" , style:TextStyle(color: Colors.green),), style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),)),
        ],
      ),
      
    );
  }
}