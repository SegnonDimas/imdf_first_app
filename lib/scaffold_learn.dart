import 'package:flutter/material.dart';

class ScaffoldLearn extends StatelessWidget {
  const ScaffoldLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.black,
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
