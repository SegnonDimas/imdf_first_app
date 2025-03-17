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
      appBar: AppBar(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        title: const Text('Page 2'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // utilisation de pop pour revenir à la page précédente
            Column(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back, size: 50)),
                const AppText(
                  text: "Pop pour revenir à la page précédente",
                  fontSize: 15,
                  //color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),

            // utilisation de push pour naviguer vers la page 1
            Column(
              children: [
                IconButton(
                    color: Colors.red,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Page1()));
                    },
                    icon: const Icon(Icons.arrow_back, size: 50)),
                const AppText(
                  text: "Push vers la page 1",
                  fontSize: 15,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ), // espace entre les boutons

            // Navigator.pushAndRemoveUntil
            Column(
              children: [
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
                const AppText(
                  text: "Suppression des pages précédentes vers la page 3",
                  fontSize: 12,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ],
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
