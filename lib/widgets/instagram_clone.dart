// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

//import 'dart:html';

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
  int selected_index = 0;

  PageController pageController = PageController();
  void onTapped(int index) {
    setState(() {
      selected_index = index;
      pageController.jumpToPage(selected_index);
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> img_list = [
      'https://www.shutterstock.com/image-photo/very-random-pose-asian-men-260nw-2423213775.jpg',
      'https://www.shutterstock.com/image-photo/portrait-indonesian-man-long-hair-260nw-2511582609.jpg',
      'https://www.shutterstock.com/image-photo/these-some-random-photos-260nw-2402066699.jpg',
      'https://64.media.tumblr.com/db77f82e75871b41c74fada988433425/tumblr_mk4lnhRAJY1rlmi5yo1_1280.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCJa4_mV1FWFgxgQUzBNHrD7ROTf7hoJdzvg&s',
      'https://thumbs.dreamstime.com/b/obesicat-garden-random-image-fat-pussy-cat-dressed-as-soccer-player-dutch-national-team-exercising-spring-87947898.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6YHPo3kQFRadwI2qD1XnE4oZzIDlVmMq-ag&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0V8X361Pay5jeM0zYX4C060U36kLOpg8Gi88sL62tvAT5Cj35Y4Rmt8CBVNpRmHkvpkE&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtqpzv4bbSGNxumH0hMiS6ESKL-kguRYGyyjgAOmQW9ut7orT4spUoeuh9LgXgG77JRwI&usqp=CAU',
      'https://millbryhill.co.uk/cdn/shop/products/1580723808-00421400_dd785d0e-f4ab-4ace-9a90-27cd55aa8912_1800x1800.jpg?v=1612352475',
    ];
    List<String> name_list = [
      "Alex",
      "Brian",
      "Cathy",
      "Derek",
      "Ella",
      "Fiona",
      "George",
      "Hannah",
      "Ivan",
      "Julia",
    ];

    // Combine names and images into a list of maps
    List<Map<String, String>> profiles = List.generate(
      img_list.length,
      (index) => {
        'name': name_list[index],
        'img': img_list[index],
      },
    );

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
                                        //width: ,
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
                    color: Colors.grey,
                    height: 100,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    top: 25, bottom: 3, left: 5, right: 5),
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Add',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: 10,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              print(
                                  'Image: ${profiles[index]['img']} Name: ${profiles[index]['name']}');
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 5, top: 18),
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                profiles[index]['img']!)),
                                        border: Border.all(
                                          //width: 65,
                                          color: Colors.blue,
                                        ),
                                        shape: BoxShape.circle,
                                        color: Colors.red),
                                  ),
                                  Text(
                                    profiles[index]['name']!,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  )
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 80,
              color: const Color.fromARGB(255, 238, 244, 54),
            ),

            //=================for the images=================//
            Expanded(
              child: GridView.builder(
                  itemCount: img_list.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: ((context, index) {
                    return Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(img_list[index]))),
                    );
                  })),
            ),
          ],
        ),
      ),
      //bottomNavigationBar: NavigationBar(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle), // Provide a valid width value
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
              label: 'Add'),
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Container(
              height: 30,
              width: 30,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://media.istockphoto.com/id/1682296067/photo/happy-studio-portrait-or-professional-man-real-estate-agent-or-asian-businessman-smile-for.jpg?s=612x612&w=0&k=20&c=9zbG2-9fl741fbTWw5fNgcEEe4ll-JegrGlQQ6m54rg='),
              ),
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: selected_index,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedIconTheme:
            IconThemeData(color: Color.fromARGB(255, 20, 188, 218)),
        onTap: onTapped,
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
