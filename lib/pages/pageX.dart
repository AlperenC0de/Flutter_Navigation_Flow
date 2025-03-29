import 'package:flutter/material.dart';
import 'package:flutter_application_4/pages/pageY.dart';

class Pagex extends StatefulWidget {
  const Pagex({super.key});

  @override
  State<Pagex> createState() => _PagexState();
}

class _PagexState extends State<Pagex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: const Text("Page X", style:TextStyle(color: Colors.white,),), centerTitle: true,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:[
          Center(child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Pagey()));
          }, child: const Text("Go to PageY", style: TextStyle(color: Colors.green),), style: ElevatedButton.styleFrom(backgroundColor: Colors.black),)),
          Center(child: ElevatedButton(onPressed: (){
             Navigator.pop(context);
          }, child: const Text("Return Main Page", style: TextStyle(color: Colors.red),), style: ElevatedButton.styleFrom(backgroundColor: Colors.black),)),
        ],
      ),
      
    );
  }
}