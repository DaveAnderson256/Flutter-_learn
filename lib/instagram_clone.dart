// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ProfilePageWidget extends StatefulWidget {
  const ProfilePageWidget({super.key});

  @override
  State<ProfilePageWidget> createState() => _ProfilePageWidgetState();
}

class _ProfilePageWidgetState extends State<ProfilePageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text(
          'Natalya Jane A.',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Container(
        //------body column-------// we gonna have 3 container sections
        child: Column(
          children: [
            Container(
              height: 250,
              //scolor: Colors.red,
              child: Column(
                children: [
                  //=======first upper row========
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        width: 150,
                        height: 150,
                        //color: Colors.yellow,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://media.istockphoto.com/id/1437816897/photo/business-woman-manager-or-human-resources-portrait-for-career-success-company-we-are-hiring.jpg?s=612x612&w=0&k=20&c=tyLvtzutRh22j9GqSGI33Z4HpIwv9vL_MZw_xOE19NQ='),
                              radius: 30,
                            ),
                            Text(
                              'Jane Natalya A.',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text('Programmer/Uganda',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.red,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ColRow('150', 'Likes'),
                                ColRow('5k', 'Followers'),
                                ColRow('100', 'Following'),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  width: 130,
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                                  Colors.blue[300])),
                                      onPressed: () {},
                                      child: Text(
                                        'Follow',
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.blue,
                                      )),
                                  child: Icon(Icons.arrow_drop_down_sharp),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 100,
                    child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.red),
                            ),
                            Text('Data')
                          ],
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 80,
              color: const Color.fromARGB(255, 238, 244, 54),
            ),
            Expanded(
              child: Text('data'),
            ),
          ],
        ),
      ),
    );
  }

  //-------rowColumn Widget-----/
  Widget ColRow(String text1, String text2) {
    return (Column(
      children: [
        Text(
          text1,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(text2,
            style: TextStyle(
                fontSize: 12, color: Colors.red, fontWeight: FontWeight.w600)),
      ],
    ));
  }
}
