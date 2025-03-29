import 'package:flutter/material.dart';

class Pagey extends StatefulWidget {
  const Pagey({super.key});

  @override
  State<Pagey> createState() => _PageyState();
}

class _PageyState extends State<Pagey> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: const Text("Page Y", style:TextStyle(color: Colors.white,),), centerTitle: true,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:[
          Center(child: ElevatedButton(onPressed: (){
             Navigator.of(context).popUntil((context)=> context.isFirst);
          }, child: const Text("Return Main Page", style: TextStyle(color: Colors.red),), style: ElevatedButton.styleFrom(backgroundColor: Colors.black),)),
        ],
      ),
      
    );
  }
}