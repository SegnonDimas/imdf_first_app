import 'package:first_app/widgets/app_text.dart';
import 'package:flutter/material.dart';

import '../model_ui/model_connexion.dart';

class PageConnexion extends StatefulWidget {
  const PageConnexion({super.key});

  @override
  State<PageConnexion> createState() => _PageConnexionState();
}

class _PageConnexionState extends State<PageConnexion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.facebook,
            color: Colors.blue,
            size: 150,
          ),
          SizedBox(height: 30),
          AppTextField(
            // keyboardType: TextInputType.name,

            prefixIcon: Icon(
              Icons.account_circle,
              color: Colors.grey,
            ),
            hintText: 'Nom Prénoms',
            labelText: Text('Nom Prénoms'),
          ),
          SizedBox(height: 10),
          AppTextField(
            // keyboardType: TextInputType.name,

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
          SizedBox(height: 20),
          TextButton(
              onPressed: () {},
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
