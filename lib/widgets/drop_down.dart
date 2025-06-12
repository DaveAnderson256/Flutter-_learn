// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String? selectedValue = 'Orange';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        title: Center(
            child: Text(
          'Drop Down Widget',
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
            ),
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: DropdownButton(
                alignment: Alignment(2, 2),
                isExpanded: true,
                dropdownColor: Theme.of(context).colorScheme.secondary,
                value: selectedValue,
                items: [
                  DropdownMenuItem(
                    value: 'Orange',
                    child: Text('Orange'),
                  ),
                  DropdownMenuItem(
                    value: 'Apple',
                    child: Text('Apple'),
                  ),
                  DropdownMenuItem(
                    value: 'Banana',
                    child: Text('Banana'),
                  ),
                  DropdownMenuItem(
                    value: 'Grape',
                    child: Text('Grape'),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    selectedValue = value;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
