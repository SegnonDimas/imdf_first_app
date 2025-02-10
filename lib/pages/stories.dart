import 'package:first_app/model_ui/model_ui_profil.dart';
import 'package:first_app/model_ui/story.dart';
import 'package:first_app/widgets/app_text.dart';
import 'package:flutter/material.dart';

import '../model_ui/model_ui_barrRecherche.dart';

class StoryPage extends StatelessWidget {
  const StoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    double bottomActionWidth = screenWidth * 0.03;
    return Scaffold(
      appBar: AppBar(
        title: AppText(
          text: 'facebook',
          fontSize: 30,
          textColor: Colors.blue.shade700,
          fontWeight: FontWeight.w900,
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey.shade400,
            child: IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.grey.shade900,
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 4.0,
              right: 4.0,
            ),
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade400,
              child: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.grey.shade900,
                ),
                onPressed: () {},
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 4.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade400,
              child: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.grey.shade900,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
        bottom: AppBar(
          elevation: 0,
          toolbarHeight: 50,
          centerTitle: true,
          actions: [
            Badge(
              largeSize: 1,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(3.0),
              label: const AppText(
                text: '15+',
                fontSize: 12,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.home_filled,
                  color: Colors.blue.shade700,
                  //size: 35,
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: bottomActionWidth,
            ),
            Badge(
              largeSize: 1,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(3.0),
              label: const AppText(
                text: '4',
                fontSize: 12,
              ),
              child: IconButton(
                icon: const Icon(Icons.group),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: bottomActionWidth,
            ),
            Badge(
              largeSize: 1,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(3.0),
              label: const AppText(
                text: '3',
                fontSize: 12,
              ),
              child: IconButton(
                icon: const Icon(Icons.wechat_rounded),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: bottomActionWidth,
            ),
            Badge(
              largeSize: 1,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(3.0),
              label: const AppText(
                text: '15+',
                fontSize: 12,
              ),
              child: IconButton(
                icon: const Icon(Icons.notifications_none),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: bottomActionWidth,
            ),
            Badge(
              largeSize: 1,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(3.0),
              label: const AppText(
                text: '4',
                fontSize: 12,
              ),
              child: IconButton(
                icon: const Icon(Icons.live_tv_outlined),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: bottomActionWidth,
            ),
            Badge(
              largeSize: 1,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(3.0),
              label: const AppText(
                text: '15+',
                fontSize: 12,
              ),
              child: IconButton(
                icon: const Icon(Icons.storefront),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: bottomActionWidth,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 1,
            color: Colors.grey,
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 8.0,
            ),
            child: Row(
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
          ),
          Container(
            height: 2,
            color: Colors.grey,
          ),
          SizedBox(
            height: screenHeight * 0.3,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
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
