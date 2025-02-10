import 'package:first_app/pages/page_messagerie.dart';
import 'package:first_app/pages/stories.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  List mesPages = const [PageMessagerie(), StoryPage()];

  @override
  Widget build(BuildContext context) {
    //Color couleurBleu = Colors.blue;
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: mesPages[1],
    );
  }
}
