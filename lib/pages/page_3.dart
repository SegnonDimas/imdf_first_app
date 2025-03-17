import 'package:first_app/widgets/app_text.dart';
import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        title: const Text('Page 3'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // utilisation de pop pour revenir à la page précédente
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
            )
          ],
        ),
      ),
    );
  }
}
