import 'package:flutter/material.dart';

//ignore_for_file:prefer_const_constructors
class Dismiss extends StatefulWidget {
  const Dismiss({super.key});

  @override
  State<Dismiss> createState() => _DismissState();
}

class _DismissState extends State<Dismiss> {
  List<String> fruit = [
    'Apple',
    'Oranges',
    'Banana',
    'Grapes',
    'Ovacado',
    'Tomatoes'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        title: Center(child: Text('Grids and List')),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        itemCount: fruit.length,
        itemBuilder: (context, index) {
          return (Card(
            child: Dismissible(
              onDismissed: (direction) {
                if (direction == DismissDirection.startToEnd) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('${fruit[index]} Added to Cart'),
                    backgroundColor: Colors.green,
                  ));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('${fruit[index]} Removed from list'),
                    backgroundColor: Color.fromARGB(255, 235, 59, 46),
                  ));
                }
              },
              background: Container(color: Colors.green),
              secondaryBackground: Container(color: Colors.red),
              key: Key(fruit[index]),
              child: ListTile(
                title: Text(fruit[index]),
                subtitle: Text('200'),
              ),
            ),
          ));
        },
      ),
    );
  }
}
