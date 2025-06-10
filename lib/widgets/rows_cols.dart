import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors
class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Rows and Columns")),
      ),
      body: Container(
        height: h,
        width: w,
        color: Colors.red[400],
        child: Row(
            // u can use wrap to warp all items in the container that are overflowing
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 50,
                color: const Color.fromARGB(255, 7, 7, 7),
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.yellow,
              ),
              Container(
                height: 50,
                width: 50,
                color: Color.fromARGB(255, 248, 3, 3),
              ),
            ]),
      ),
    );
  }
}
