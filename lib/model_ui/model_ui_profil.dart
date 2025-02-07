import 'package:first_app/widgets/app_text.dart';
import 'package:flutter/material.dart';

// Model UI Profil
class ModelProfil extends StatelessWidget {
  final String imgPath;
  final String userName;
  const ModelProfil({super.key, required this.imgPath, required this.userName});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 90,
      child: Column(
        children: [
          // photo
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.network(
                  imgPath,
                  height: 65,
                  width: 65,
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
          ),

          // nom
          AppText(
            text: userName,
            overflow: TextOverflow.ellipsis,
            fontWeight: FontWeight.bold,
          )
        ],
      ),
    );
  }
}
