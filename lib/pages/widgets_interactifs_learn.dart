import 'package:flutter/material.dart';

import '../widgets/app_text.dart';

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
  double whpImgSize = 50;
  double lkdImgSize = 50;
  double radius = 4000000;
  bool pwdVisibility = false;

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
      //backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                Icons.account_circle,
                size: 100,
              ),
              TextField(
                  keyboardType: TextInputType.text,
                  decoration:
                      InputDecoration(label: AppText(text: "Nom Prénoms"))),
              TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(hintText: "exemple@gmail.com")),
              TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(label: AppText(text: "Numéro"))),
              TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(label: AppText(text: "Age"))),
              TextField(
                  obscureText: pwdVisibility,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey,
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              pwdVisibility = !pwdVisibility;
                            });
                          },
                          icon: Icon(Icons.visibility)),
                      prefix: IconButton(
                          onPressed: () {
                            setState(() {
                              pwdVisibility = !pwdVisibility;
                            });
                          },
                          icon: Icon(Icons.lock)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      label: AppText(text: "Mot de passe"))),
            ],
          ),
        ),
      ),
    );
  }
}

enum Status { OFF, ON }
