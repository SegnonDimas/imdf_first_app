import 'package:flutter/material.dart';

class WidgetsInteractifsLearn extends StatefulWidget {
  const WidgetsInteractifsLearn({super.key});

  @override
  State<WidgetsInteractifsLearn> createState() =>
      _WidgetsInteractifsLearnState();
}

class _WidgetsInteractifsLearnState extends State<WidgetsInteractifsLearn> {
  // mes variables
  String messageSalutation = "---";
  bool isChecked = false;

  // mes fonctions
  // fonction remerciement
  void remerciement() {
    setState(() {
      messageSalutation = "Nous vous remercions pour votre confiance";
    });
  }

  // fonction auRevoir
  void auRevoir(int tempUtilsation) {
    messageSalutation =
        "Vous avez passé $tempUtilsation min sur notre application. Nous vous en remercions";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Checkbox(
                value: isChecked,
                checkColor: Colors.white,
                activeColor: Colors.green,
                onChanged: (clic) {
                  setState(() {
                    isChecked = !isChecked;
                  });
                })
          ],
        ),
      ),
    );
  }
}
