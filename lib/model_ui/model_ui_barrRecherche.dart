import 'package:flutter/material.dart';

class ModelBarrrecherche extends StatelessWidget {
  final String? text;
  final bool? hasIcon;
  final IconData? icon;
  final double? width;
  final double? height;
  const ModelBarrrecherche(
      {super.key,
      this.text,
      this.hasIcon = false,
      this.icon,
      this.width,
      this.height});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //
          Container(
            height: height ?? 50,
            width: width ?? screenWidth * 0.55,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(200),
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                // icon rechercher
                hasIcon == true || icon != null
                    ? Icon(icon ?? Icons.search)
                    : SizedBox(),
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
      ),
    );
  }
}
