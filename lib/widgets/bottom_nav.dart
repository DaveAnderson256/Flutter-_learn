// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/animated_text.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/grid_list.dart';
import 'package:flutter_application_1/widgets/images.dart';

class BottomNavWidget extends StatefulWidget {
  const BottomNavWidget({super.key});

  @override
  State<BottomNavWidget> createState() => _BottomNavWidgetState();
}

class _BottomNavWidgetState extends State<BottomNavWidget> {
  int selected_index = 0;
  // List<Widget> widgets = [
  //   Text('Home'),
  //   Text('Serached'),
  //   Text('Added'),
  //   Text('Your Profile'),
  // ];
  PageController pageController =
      PageController(); // instantiate the page controller

  void onTapped(int index) {
    setState(() {
      selected_index = index;
      pageController.jumpToPage(selected_index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [DrawerWidget(), AnimatedText(), GridList(), ImageWidget()],
      ),
      // child: widgets[selected_index], // <-- Show the selected page here

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: selected_index,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        onTap: onTapped,
      ),
    );
  }
}
