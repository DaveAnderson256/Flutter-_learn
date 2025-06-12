// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        title: Center(child: Text('Bottom Sheet')),
        backgroundColor: Color.fromARGB(255, 230, 215, 50),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Press Here'),
          onPressed: () {
            showModalBottomSheet(
                isDismissible: false,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                context: context,
                builder: (context) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              // Text('fruits'),
                              IconButton(
                                icon: Icon(Icons.cancel_presentation_rounded),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ]),
                        subtitle: Center(child: Text('Select one')),
                      ),
                      ListTile(
                        title: Text('Orange'),
                        subtitle: Text('Fruit'),
                      ),
                      ListTile(
                        title: Text('Orange'),
                        subtitle: Text('Fruit'),
                      ),
                      ListTile(
                        title: Text('Orange'),
                        subtitle: Text('Fruit'),
                      )
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}
