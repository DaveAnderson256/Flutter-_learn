import "package:flutter/material.dart";
import "package:flutter_application_1/widgets/home.dart";
import "package:flutter_application_1/widgets/rows_cols.dart";

// ignore_for_file: prefer_const_constructors
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color.fromARGB(255, 204, 48, 10),
      ),
      home: RowsCols(),
    );
  }
}
