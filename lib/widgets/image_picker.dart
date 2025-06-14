// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ImgPicker extends StatefulWidget {
  const ImgPicker({super.key});

  @override
  State<ImgPicker> createState() => _ImgPickerState();
}

class _ImgPickerState extends State<ImgPicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Choose image')),
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}
