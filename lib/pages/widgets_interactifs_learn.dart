import 'package:flutter/material.dart';

import '../widgets/app_text.dart';

class WidgetsInteractifsLearn extends StatefulWidget {
  const WidgetsInteractifsLearn({super.key});

  @override
  State<WidgetsInteractifsLearn> createState() =>
      _WidgetsInteractifsLearnState();
}

class _WidgetsInteractifsLearnState extends State<WidgetsInteractifsLearn> {
  String messageSalutation = "---";

  // code d'une fonction en Dart
  void remerciement() {
    setState(() {
      messageSalutation = "Nous vous remercions pour votre confiance";
    });
  }

  void auRevoir(int tempUtilsation) {
    messageSalutation =
        "Vous avez passé $tempUtilsation min sur notre application. Nous vous en remercions";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            AppText(
              text: messageSalutation,
              fontSize: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  print(messageSalutation);
                  setState(() {
                    messageSalutation = "Bonjour cher utilisateur";
                  });
                },
                child: Text('Saluer')),
            SizedBox(height: 30),
            ElevatedButton(
                onPressed: remerciement,
                style: ButtonStyle(),
                child: Text('Remerciements')),
            SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    auRevoir(50);
                  });
                },
                child: const Text('Au revoir')),
          ],
        ),
      ),
    );
  }
}
