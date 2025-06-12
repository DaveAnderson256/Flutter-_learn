// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 20,
          title: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.image),
                Text('Images'),
              ],
            ),
          ),
          backgroundColor: Colors.purple,
        ),
        body: GridView(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            children: [
              Container(
                height: 250,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVJJspR5TgxZzIYsJWBSxUF508y6kQLoB3uA&s'),
                        fit: BoxFit.cover)),
              ),
              Container(
                height: 250,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    image:
                        DecorationImage(image: AssetImage('assets/bingo.png'))),
              ),
              Container(
                // color: Colors.white,
                child: CachedNetworkImage(
                  imageUrl:
                      'https://cdn11.bigcommerce.com/s-ydriczk/products/90532/images/100269/Bluey-and-Bingo-Heeler-Cardboard-Cutout-buy-now-at-starstills__91654.1717080440.450.659.jpg?c=2',
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
            ]
            //for cached network image add the cached_network_image in the dependecies and download
            ));
  }
}
