

import 'package:flutter/material.dart';



void main(){
  runApp(const MyApp());

}
class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override 
  Widget build(BuildContext context){
  
    return MaterialApp(
      debugShowCheckedModeBanner: 
      false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "List View Builder",
            style: TextStyle(
              fontSize: 22,
              fontWeight:FontWeight.w900,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
          
        ),

        body:ListView.builder(
          itemCount:50,
          physics:const BouncingScrollPhysics(),
          itemBuilder:(BuildContext context,int index){
            return Text(
              "Index :$index",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            );
          }
        ),
        ),
    );
  }
}