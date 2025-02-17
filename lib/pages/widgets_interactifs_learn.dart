import 'package:first_app/widgets/app_text.dart';
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
  Status? _character = Status.ON;
  int compteur = 0;

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
            // checkbox
            AppText(
              text: "CheckBox",
            ),
            Checkbox(
                value: isChecked,
                checkColor: Colors.white,
                activeColor: Colors.blue,
                onChanged: (clic) {
                  setState(() {
                    isChecked = !isChecked;
                  });
                }),

            // radio
            AppText(
              text: "Radio",
            ),
            ListTile(
              title: const Text('OFF'),
              leading: Radio<Status>(
                value: Status.OFF,
                groupValue: _character,
                onChanged: (Status? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('ON'),
              leading: Radio<Status>(
                value: Status.ON,
                groupValue: _character,
                onChanged: (Status? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),

            Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                AppText(
                  text: "$compteur",
                  fontSize: 50,
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      compteur = compteur + 1;
                    });
                    print("Valeur de compteur : $compteur");
                  },
                  icon: Icon(
                    Icons.add,
                    size: 48,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

enum Status { OFF, ON }
