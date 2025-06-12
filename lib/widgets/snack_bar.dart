import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors

class SnackBa extends StatelessWidget {
  const SnackBa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("SnackBar")),
        backgroundColor: const Color.fromARGB(255, 184, 176, 111),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              final snackBar = SnackBar(
                action: SnackBarAction(
                  onPressed: () {},
                  label: 'Undo',
                ),
                behavior: SnackBarBehavior.floating,
                duration: Duration(seconds: 3),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                content: Center(
                  child: Text('Well Done'),
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Text('Press Me'),
          ),
        ),
      ),
    );
  }
}
