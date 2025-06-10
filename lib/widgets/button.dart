import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors
class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Buttons')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: TextButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(20),
                    overlayColor: MaterialStateProperty.all(Colors.blue),
                    backgroundColor: MaterialStateProperty.all(Colors.yellow),
                  ),
                  onPressed: () {},
                  child: Text('Press me',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      )))),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              //these buttons don't have height and width parameters, so we wrap them in a container
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
                backgroundColor: MaterialStateProperty.all(Colors.red),
                overlayColor: MaterialStateProperty.all(Colors.blue),
              ),
              onPressed: () {
                print('okay');
              },
              child: Text('Press me'))
        ],
      ),
    );
  }
}
