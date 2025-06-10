import "package:flutter/material.dart";
import "package:flutter_application_1/widgets/button.dart";
import "package:flutter_application_1/widgets/dismissible.dart";
import "package:flutter_application_1/widgets/drawer.dart";
import "package:flutter_application_1/widgets/grid_list.dart";
import "package:flutter_application_1/widgets/rows_cols.dart";
import "package:flutter_application_1/widgets/snack_bar.dart";

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
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 10, 62, 204),
          brightness: Brightness.dark,
        ),
      ),
      home: DrawerWidget(),
    );
  }
}
