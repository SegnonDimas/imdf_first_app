import 'package:flutter/material.dart';

import '../widgets/app_text.dart';

class ModelStory extends StatelessWidget {
  const ModelStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                height: 190,
                width: 120,
                "https://m.media-amazon.com/images/S/pv-target-images/588c636274e7734719bc86dabde156694305caecd3cdc75ca19cf4139074b7eb.jpg",
                fit: BoxFit.cover,
              )),
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              alignment: Alignment.center,
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                  color: Colors.blue.shade700,
                  borderRadius: BorderRadius.circular(5)),
              child: const AppText(
                text: '6',
                textColor: Colors.white,
              ),
            ),
          ),
          const Positioned(
            bottom: 40,
            left: 10,
            child: AppText(
              text: "Oscar Best",
              textColor: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
