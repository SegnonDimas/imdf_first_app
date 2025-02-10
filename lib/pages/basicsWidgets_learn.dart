import 'package:flutter/material.dart';

class BasicsWidgetsLearn extends StatelessWidget {
  const BasicsWidgetsLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        foregroundColor: Colors.white,
        title: const Text('C  O  N  T  A  I  N  E  R'),
        centerTitle: true,
      ),
      body: Center(
          child: Badge(
        backgroundColor: Colors.green,
        //label: Text('20'),
        smallSize: 40,
        //largeSize: 40,
        alignment: Alignment.bottomRight,
        child: Container(
          height: 100,
          width: 150,
          decoration: BoxDecoration(
              color: Colors.blue.shade800,
              borderRadius: BorderRadius.circular(30)),
        ),
      )),
    );
  }
}
