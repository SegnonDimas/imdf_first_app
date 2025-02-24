import 'package:first_app/widgets/app_text.dart';
import 'package:flutter/material.dart';

import '../model_ui/app_textField.dart';

class PageConnexion extends StatefulWidget {
  const PageConnexion({super.key});

  @override
  State<PageConnexion> createState() => _PageConnexionState();
}

class _PageConnexionState extends State<PageConnexion> {
  TextEditingController controller = TextEditingController();
  TextEditingController motDePasseController = TextEditingController();
  TextEditingController nomController = TextEditingController();
  String message = '';
  String userPsw = "123456";

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
          Icon(
            Icons.facebook,
            color: Colors.blue,
            size: 150,
          ),
          SizedBox(height: 15),
          AppText(
            text: message,
            textColor:
                message == "Connexion réussie" ? Colors.green : Colors.red,
            fontWeight: FontWeight.w900,
          ),

          //nom prénom
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
          SizedBox(height: 10),

          // mot de passe
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
          TextField(
            //controller: controller,
            onChanged: (textTape) {
              setState(() {
                message = controller.value.text;
              });
            },
          ),
          SizedBox(height: 20),
          /*AppText(
            text: verifierMotDePasse(controller.value.text).length.toString(),
            textColor: Colors.red,
            fontWeight: FontWeight.w900,
          ),*/
          TextButton(
              onPressed: verifierConnexion,
              child: AppText(
                text: 'Connexion',
                textColor: Colors.blue,
                fontSize: 40,
              ))
        ],
      ),
    );
  }
}
