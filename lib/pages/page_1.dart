import 'package:first_app/pages/page_2.dart';
import 'package:flutter/material.dart';

import '../widgets/app_text.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        title: const Text('Page 1'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: buildButton(
                  text: "Aller à la page 2",
                  color: Colors.purple,
                  textColor: Colors.white,
                  //utilisation de push pour naviguer vers la page 2
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Page2()));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildButton(
    {required String text,
    required Color color,
    required Color textColor,
    required Function() onTap}) {
  return InkWell(
    onTap: onTap,
    child: Container(
        height: 50,
        width: 300,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: AppText(
          text: text,
          fontSize: 20,
          color: textColor,
          fontWeight: FontWeight.bold,
        )),
  );
}
