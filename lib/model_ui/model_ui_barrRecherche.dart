import 'package:flutter/material.dart';

class ModelBarrrecherche extends StatelessWidget {
  final String? text;
  final bool? hasIcon;
  final IconData? icon;
  const ModelBarrrecherche(
      {super.key, this.text, this.hasIcon = false, this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //espace horiszontal
        const SizedBox(
          width: 10,
        ),

        //
        Container(
          height: 50,
          width: 180,
          decoration: BoxDecoration(
            color: Colors.grey.shade600,
            borderRadius: BorderRadius.circular(200),
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              // icon rechercher
              hasIcon == true ? Icon(icon ?? Icons.search) : SizedBox(),
              const SizedBox(
                width: 10,
              ),
              //texte Rechercher
              Text(text ?? '')
            ],
          ),
        ),

        //espace horiszontal
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
