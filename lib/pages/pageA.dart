import 'package:flutter/material.dart';
import 'package:flutter_application_4/pages/pageB.dart';

class Pagea extends StatefulWidget {
  const Pagea({super.key});

  @override
  State<Pagea> createState() => _PageaState();
}

class _PageaState extends State<Pagea> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: const Text("Page A", style:TextStyle(color: Colors.white,),), centerTitle: true,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:[
          Center(child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Pageb()));
          }, child: const Text("Go to PageB", style: TextStyle(color: Colors.green),), style: ElevatedButton.styleFrom(backgroundColor: Colors.black),)),
          Center(child: ElevatedButton(onPressed: (){
             Navigator.pop(context);
          }, child: const Text("Return Main Page", style: TextStyle(color: Colors.red),), style: ElevatedButton.styleFrom(backgroundColor: Colors.black),)),
        ],
      ),
      
    );
  }
} 