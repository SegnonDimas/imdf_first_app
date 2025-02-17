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
  double whpImgSize = 50;
  double lkdImgSize = 50;
  double radius = 4000000;

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
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            AppText(
              text: "LinkedIn logic",
              textColor: Colors.white,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(400000),
              child: InkWell(
                onTap: () {
                  setState(() {
                    lkdImgSize = 300;
                  });
                },
                child: Image.network(
                  "https://thumbs.dreamstime.com/b/belle-femme-africaine-173510.jpg",
                  height: lkdImgSize,
                  width: lkdImgSize,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            AppText(
              text: "WhatsApp logic",
              textColor: Colors.white,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(radius),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    whpImgSize = 300;
                    radius = 0;
                  });
                },
                child: Image.network(
                  "https://thumbs.dreamstime.com/b/belle-femme-africaine-173510.jpg",
                  height: whpImgSize,
                  width: whpImgSize,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum Status { OFF, ON }
