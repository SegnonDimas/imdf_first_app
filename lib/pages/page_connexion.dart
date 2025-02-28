import 'package:first_app/pages/page_accueil.dart';
import 'package:first_app/widgets/app_text.dart';
import 'package:flutter/material.dart';

import '../model_ui/app_textField.dart';

class PageConnexion extends StatefulWidget {
  const PageConnexion({super.key});

  @override
  State<PageConnexion> createState() => _PageConnexionState();
}

class _PageConnexionState extends State<PageConnexion> {
  TextEditingController motDePasseController = TextEditingController();
  TextEditingController nomController = TextEditingController();

  String message = '';
  String userPsw = "123456";

  TextEditingController controllerEssai = TextEditingController();
  void verifierConnexion() {
    if (nomController.text.isEmpty) {
      setState(() {
        message = "Veuillez renseigner votre nom SVP ! ";
      });
    } else if (motDePasseController.text.isEmpty) {
      setState(() {
        message = "Veuillez renseigner votre mot de passe SVP ! ";
      });
    } else if (motDePasseController.text.isNotEmpty) {
      if (motDePasseController.text.trim() != userPsw) {
        setState(() {
          message = "Mot de passe incorrect";
        });
      } else {
        setState(() {
          userPsw.trim();
          message = "Connexion réussie";
        });
      }
    } else {
      setState(() {
        message = "Connexion réussie";
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyHomePage()));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //icon Facebook
          Icon(
            Icons.facebook,
            color: Color.fromRGBO(84, 109, 229, 1),
            size: 150,
          ),

          // espace
          SizedBox(height: 15),

          // message de l'état de connexion
          AppText(
            text: message,
            textColor:
                message == "Connexion réussie" ? Colors.green : Colors.red,
            fontWeight: FontWeight.w900,
          ),

          //champ de saisie du nom prénom
          AppTextField(
            // keyboardType: TextInputType.name,
            controller: nomController,
            prefixIcon: Icon(
              Icons.account_circle,
              color: Colors.grey,
            ),
            hintText: 'Nom Prénoms',
            labelText: Text('Nom Prénoms'),
          ),

          //espace
          SizedBox(height: 10),

          // champ de saisie du mot de passe
          AppTextField(
            // keyboardType: TextInputType.name,
            controller: motDePasseController,
            prefixIcon: Icon(
              Icons.lock,
              color: Colors.grey,
            ),
            hintText: 'Mot de passe',
            labelText: Text('mot de passe'),
            suffixIcon: Icon(
              Icons.visibility_off,
              color: Colors.grey,
            ),
          ),

          // espace
          SizedBox(height: 20),

          // bouton de connexion
          InkWell(
              onTap: verifierConnexion,
              child: Container(
                height: screenHeight * 0.07,
                width: screenWidth - 20,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(84, 109, 229, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: AppText(
                    text: 'Se connecter',
                    textColor: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ))
        ],
      ),
    );
  }
}
