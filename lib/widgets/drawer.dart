// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

//ignore_for_file:prefer_const_constructors
class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    // String noData_yet () {
    //             Navigator.of(context).pop();
    //             final snackBar =
    //                 SnackBar(content: Center(child: Text('No Data Yet')));
    //             ScaffoldMessenger.of(context).showSnackBar(snackBar);
    //           }
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 109, 65, 180),
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  color: Color.fromARGB(255, 170, 110, 238),
                  // padding: EdgeInsets.zero,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            'https://media.istockphoto.com/id/1144545686/photo/close-up-of-excited-afro-american-man.jpg?s=612x612&w=0&k=20&c=cgFvAT-c8BKKJ9riZAqRI2zcGxOlFk6oo30HZ1NnIwo='),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Person Avator',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Person123@gmail.com',
                              style: TextStyle(fontWeight: FontWeight.normal)),
                        ],
                      )
                    ],
                  ),
                )),
            ListTile(
              // selected: true, // or manage selection state
              // selectedTileColor: Colors.white24,
              onTap: () {},
              hoverColor: Colors.white10,
              leading: Icon(Icons.archive),
              title: Text('My Archives'),
            ),
            ListTile(
              onTap: () {},
              hoverColor: Colors.white10,
              leading: Icon(Icons.folder_delete),
              title: Text('Deleted Files'),
            ),
            ListTile(
              onTap: () {},
              hoverColor: Colors.white10,
              leading: Icon(Icons.share),
              title: Text('share Files'),
            ),
            ListTile(
              onTap: () {},
              hoverColor: Colors.white10,
              leading: Icon(Icons.contacts),
              title: Text('Contacts'),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              hoverColor: Colors.white10,
              leading: Icon(Icons.location_city),
              title: Text('Location'),
            ),
            ListTile(
              onTap: () {},
              hoverColor: Colors.white10,
              leading: Icon(Icons.lock),
              title: Text('Personal Data'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 20,
        title: Center(child: Text('My Account')),
        backgroundColor: Colors.purple,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Welcome back here'),
          Icon(
            Icons.dashboard,
            size: 100,
          )
        ],
      )),
    );
  }
}
