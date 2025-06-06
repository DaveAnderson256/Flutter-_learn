// ignore_for_file: prefer_const_constructors
import "package:flutter/material.dart";

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(child: Text('Christ The King'),),
      ),
      // body: Center(child:  SizedBox(child: Text('Hello There'),), container are used to place text in a blank space
      body: Center( child: Container( 
        
        height: 100,
        width: 50,
        decoration: BoxDecoration(
          color: Color.fromARGB(200, 200, 0, 0),
       
       borderRadius: BorderRadius.circular(10)
        ),
        
        child: Center(
          child: Text('Here ',
          style: TextStyle(fontSize: 15.0),
          ),
        ),
      ),
    ),
    );
  }
}