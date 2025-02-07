import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 150,
        ),
        Icon(
          Icons.facebook,
          color: Colors.blue,
          size: 80.0,
          semanticLabel: 'Text to announce in accessibility modes',
        ),
        SizedBox(
          height: 150,
        ),
        Text("F A C E B O O K",
            style: TextStyle(
                //fontStyle: FontStyle.italic,
                fontSize: 25,
                color: Colors.blue,
                fontWeight: FontWeight.bold)),
        /*FlutterLogo(
              size: 75,
            ),*/
      ],
    )));
  }
}
