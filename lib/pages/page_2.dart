import 'package:first_app/pages/page_1.dart';
import 'package:first_app/pages/page_3.dart';
import 'package:flutter/material.dart';

import '../widgets/app_text.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // utilisation de pop pour revenir à la page précédente
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back, size: 50)),

            // utilisation de push pour naviguer vers la page 1
            IconButton(
                color: Colors.red,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Page1()));
                },
                icon: Icon(Icons.arrow_back, size: 50)),

            // Navigator.pushAndRemoveUntil
            buildButton(
                text: "Aller à la page 3",
                color: Colors.red,
                textColor: Colors.white,
                //utilisation de push pour naviguer vers la page 2
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const Page3()),
                    (route) => false, // supprimer toutes les autre pages
                  );
                }),
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
    child: Padding(
      padding: const EdgeInsets.all(8.0),
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
    ),
  );
}
