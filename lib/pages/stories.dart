import 'package:first_app/model_ui/model_ui_profil.dart';
import 'package:first_app/model_ui/story.dart';
import 'package:first_app/widgets/app_text.dart';
import 'package:flutter/material.dart';

import '../model_ui/model_ui_barrRecherche.dart';

class StoryPage extends StatelessWidget {
  const StoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 1,
                child: ModelProfil(
                    imgPath:
                        "https://media.marianne.net/assets/asFWg5Zpullh2vVFl.jpg?w=770&h=462&r=fill",
                    userName: ''),
              ),
              Flexible(
                  flex: 4,
                  child: ModelBarrrecherche(
                    text: "À quoi pensez-vous ?",
                  )),
              Flexible(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.image,
                        color: Colors.green,
                      ),
                      AppText(
                        text: 'Photo',
                      )
                    ],
                  ))
            ],
          ),
          Container(
            height: 2,
            color: Colors.grey,
          ),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ModelStory(),
                ModelStory(),
                ModelStory(),
                ModelStory(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
