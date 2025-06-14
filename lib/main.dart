// ignore_for_file: unused_import

import "package:flutter/material.dart";
import "package:flutter_application_1/widgets/animated_text.dart";
import "package:flutter_application_1/widgets/bottom_nav.dart";
import "package:flutter_application_1/widgets/drop_down.dart";
import "package:flutter_application_1/widgets/forms.dart";
import "package:flutter_application_1/widgets/grid_list.dart";
import "package:flutter_application_1/widgets/image_picker.dart";
import "package:flutter_application_1/widgets/images.dart";
import "package:flutter_application_1/widgets/alert.dart";
import "package:flutter_application_1/widgets/bottomsheet.dart";

// ignore_for_file: prefer_const_constructors
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 239, 70, 70),
          secondary: Color.fromARGB(255, 30, 224, 27),
        ),
      ),
      home: FormsWidget(),
    );
  }
}
