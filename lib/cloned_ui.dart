// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ClonedUi extends StatefulWidget {
  const ClonedUi({super.key});

  @override
  State<ClonedUi> createState() => _ClonedUiState();
}

class _ClonedUiState extends State<ClonedUi> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Stack(
                  children: [
                    Positioned(
                      child: Container(
                        height: h * 0.5,
                        // color: Colors.grey[350],
                      ),
                    ),
                    Positioned(
                        child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          color: const Color.fromARGB(255, 238, 96, 86),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQt7CvDmWoDf49U7LvW76V1ed7c8Hy0J-rPlonl04d7rjJjTNz8HfsJNQzS7NFxVMmyH9o&usqp=CAU'))),
                      height: (h / 2) - 35,
                    )),
                    Positioned(
                        bottom: 0,
                        right: 10,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: NetworkImage(
                              'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg'),
                          radius: 35,
                        ))
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Madrid Hotel one of the Best',
                        style: TextStyle(
                            fontSize: 27, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Enjoy Every moment with family and the people you care about',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10)),
                  height: 75,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      textIcons('20', Icons.favorite_border_outlined),
                      textIcons('10', Icons.ios_share_rounded),
                      textIcons('20', Icons.comment_outlined),
                      textIcons('20', Icons.add_reaction_outlined),
                    ],
                  ),
                ),
                Divider(),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s "),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s "),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget textIcons(String text, IconData icon) {
    return (Row(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 2,
        ),
        Icon(
          icon,
          color: Colors.red,
        )
      ],
    ));
  }
}
