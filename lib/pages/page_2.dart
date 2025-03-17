import 'package:first_app/pages/page_1.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
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
          ],
        ),
      ),
    );
  }
}
