// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        title: Center(child: Text('Text Animation')),
        backgroundColor: Color.fromARGB(255, 230, 215, 50),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText('Christ The King',
                    speed: Duration(milliseconds: 150),
                    textStyle: TextStyle(
                        fontFamily: 'bobbers',
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ],
              stopPauseOnTap: true,
              displayFullTextOnTap: true,
              pause: Duration(seconds: 1),
            ),
          ),
          Center(
            child: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText('Christ The King',
                    speed: Duration(milliseconds: 150),
                    textStyle: TextStyle(
                        fontFamily: 'bobbers',
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ],
              stopPauseOnTap: true,
              displayFullTextOnTap: true,
              pause: Duration(seconds: 1),
            ),
          )
        ],
      ),
    );
  }
}
