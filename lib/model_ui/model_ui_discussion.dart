// model discussion

import 'package:flutter/material.dart';

import '../widgets/app_text.dart';

class ModelDiscussion extends StatelessWidget {
  final String imgPath;
  final String userName;
  const ModelDiscussion(
      {super.key, required this.imgPath, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: ListTile(
        leading: Stack(
          alignment: Alignment.bottomRight,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                height: 56,
                width: 56,
                imgPath,
                fit: BoxFit.cover,
              ),
            ),
            // point vers (point de présence en ligne)
            Container(
                height: 17,
                width: 17,
                decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 3,
                      color: Colors.white,
                    )))
          ],
        ) /*ClipRRect(
          borderRadius: BorderRadius.circular(400),
          child: Image.network(
            'https://www.parrotworld.fr/sites/default/files/media/image/Perroquet_Ara_Macao_157318289_gi_A.jpg',
            height: 70,
            width: 70,
            fit: BoxFit.cover,
          ),
        )*/
        ,
        title: AppText(
          text: userName,
          fontWeight: FontWeight.w500,
        ),
        subtitle: AppText(
          text: 'Hello, I want to see my wife now ..',
          fontWeight: FontWeight.w400,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: AppText(
          text: '22h00',
        ),
      ),
    );
  }
}
