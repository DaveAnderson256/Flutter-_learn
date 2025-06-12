// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        title: Center(child: Text('Submit Info')),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _displayError(context);
          },
          child: Text('Submit'),
        ),
      ),
    );
  }
}

Future<void> _displayError(BuildContext context) async {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Error'),
        content: Text('Are you sure you want to submit?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              final snackBar = SnackBar(
                  content: Center(child: Text('Submitted Successfully')));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Text('Yes'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('Cancel'),
          ),
        ],
      );
    },
  );
}
