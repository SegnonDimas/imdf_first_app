import 'package:flutter/material.dart';

class BasicsWidgetsLearn extends StatelessWidget {
  const BasicsWidgetsLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        foregroundColor: Colors.white,
        title: const Text('E L E V A T E D B U T T O N'),
        centerTitle: true,
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {}, child: const Icon(Icons.touch_app_outlined))),
    );
  }
}

/*
 floatingActionButton: Text(
        "$alignment",
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
*/
