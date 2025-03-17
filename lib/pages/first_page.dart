import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  void lancement() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/page1');
    });
  }

  initState() {
    super.initState();
    lancement();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.facebook,
          color: Colors.blue.shade700,
          size: 150,
        ),
      ),
    );
  }
}
