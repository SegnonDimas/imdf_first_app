import 'package:first_app/pages/page_messagerie.dart';
import 'package:first_app/pages/stories.dart';
import 'package:first_app/widgets/app_text.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List mesPages = const [PageMessagerie(), StoryPage()];
  int pageActuelle = 0;

  @override
  Widget build(BuildContext context) {
    //Color couleurBleu = Colors.blue;
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: mesPages[pageActuelle],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue.shade700,
          currentIndex: pageActuelle,
          onTap: (index) {
            setState(() {
              pageActuelle = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Badge(
                  backgroundColor: Colors.red.shade600,
                  padding: EdgeInsets.all(2),
                  label: AppText(
                    text: '5',
                    fontSize: 12,
                    fontWeight: FontWeight.w900,
                  ),
                  child: Icon(Icons.wechat)),
              label: 'Discussions',
            ),
            BottomNavigationBarItem(
              icon: Badge(
                  smallSize: 10,
                  backgroundColor: Colors.red.shade600,
                  child: Icon(Icons.group)),
              label: 'Stories',
            ),
          ]),
    );
  }
}
